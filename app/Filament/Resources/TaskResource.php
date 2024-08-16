<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TaskResource\Pages;
use App\Filament\Resources\TaskResource\RelationManagers;
use App\Models\Task;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Tables\Filters\Filter;

class TaskResource extends Resource
{
    protected static ?string $model = Task::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('project_id')->relationship('project', 'name')->required(),
                TextInput::make('name')->required(),
                Textarea::make('description')->required(),
                DatePicker::make('start_date')->required(),
                DatePicker::make('end_date'),
                Select::make('status')->options([
                    'ToDo' => 'ToDo',
                    'In Progress' => 'In Progress',
                    'Done' => 'Done',
                ])->required(),
                Select::make('user_id')->relationship('user', 'name')->nullable(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('project.name')->searchable(),
                TextColumn::make('name')->sortable()->searchable(),
                TextColumn::make('start_date')->date()->sortable()->searchable(),
                TextColumn::make('end_date')->date()->sortable()->searchable(),
                TextColumn::make('status')->sortable(),
            ])
            ->filters([
                Filter::make('status1')
                    ->label('Status "ToDo"')
                    ->query(fn (Builder $query): Builder => $query->where('status', 'ToDo')),
                Filter::make('status2')
                    ->label('Status "In Progress"')
                    ->query(fn (Builder $query): Builder => $query->where('status', 'In Progress')),
                Filter::make('status3')
                    ->label('Status "Done"')
                    ->query(fn (Builder $query): Builder => $query->where('status', 'Done')),
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
            'index' => Pages\ListTasks::route('/'),
            'create' => Pages\CreateTask::route('/create'),
            'edit' => Pages\EditTask::route('/{record}/edit'),
        ];
    }
}
