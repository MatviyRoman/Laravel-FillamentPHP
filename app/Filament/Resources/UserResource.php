<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;
use App\Filament\Resources\UserResource\RelationManagers;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\Filter;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;

class UserResource extends Resource
{
    protected static ?string $model = User::class;

    protected static ?string $navigationIcon = 'heroicon-o-users';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('name')
                    ->required()
                    ->maxLength(255),
                TextInput::make('email')
                    ->email()
                    ->required()
                    ->maxLength(255),
                Select::make('is_admin')
                    ->label('Role')
                    ->options([
                        '1' => 'Admin',
                        '0' => 'User',
                    ])
                    ->required(),
                TextInput::make('password')
                    ->password()
                    ->required()
                    ->maxLength(255)
                    ->hiddenOn('edit'), // Hide password input on edit
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')->sortable(),
                TextColumn::make('name')->sortable()->searchable(),
                TextColumn::make('email')->sortable()->searchable(),
                TextColumn::make('is_admin')
                    ->label('Role')
                    ->sortable()
                    ->searchable()
                    ->formatStateUsing(function ($state) {
                        return $state === 0 ? 'User' : 'Admin';
                    }),
                // TextColumn::make('role')->sortable()->searchable(),
                TextColumn::make('created_at')->dateTime()->sortable(),
            ])
            // ->filters([
            //     Filter::make('admin')
            //         ->query(fn (Builder $query): Builder => $query->where('is_admin', '1')),
            //     Filter::make('user')
            //         ->query(fn (Builder $query): Builder => $query->where('is_admin', '0')),
            // ])
            ->filters([
                Filter::make('admin')
                    ->query(function (Builder $query, $state): Builder {
                        if ($state) {
                            $query->orWhere('is_admin', '1');
                        }
                        return $query;
                    })
                    ->toggle(),

                Filter::make('user')
                    ->query(function (Builder $query, $state): Builder {
                        if ($state) {
                            $query->orWhere('is_admin', '0');
                        }
                        return $query;
                    })
                    ->toggle(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListUsers::route('/'),
            'create' => Pages\CreateUser::route('/create'),
            'edit' => Pages\EditUser::route('/{record}/edit'),
        ];
    }
}
