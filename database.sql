-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: MySQL-5.7
-- Generation Time: Aug 13, 2024 at 06:59 PM
-- Server version: 5.7.44
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fillament`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_13_113425_create_projects_table', 1),
(6, '2024_08_13_113435_create_tasks_table', 1),
(7, '2024_08_13_131735_create_projects_table', 2),
(8, '2024_08_13_131741_create_tasks_table', 2),
(9, '2024_08_13_141753_add_is_admin_to_users_table', 3),
(10, '2024_08_13_155635_create_projects_table', 4),
(11, '2024_08_13_155648_create_tasks_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, '1111', '5454', '2024-08-09', NULL, '2024-08-13 14:04:52', '2024-08-13 14:04:52'),
(2, 'test1111', '78787', '2024-08-08', NULL, '2024-08-13 14:05:17', '2024-08-13 14:05:17'),
(3, '4455', '5555', '2024-08-01', NULL, '2024-08-13 14:23:22', '2024-08-13 14:23:22'),
(4, 'eos', 'Ipsam non voluptatem quidem occaecati ratione eum quia ab.', '1986-04-06', NULL, '2024-08-13 14:30:47', '2024-08-13 14:30:47'),
(5, 'unde', 'Ullam aut delectus corporis ut similique commodi alias pariatur.', '1996-06-12', '2013-03-06', '2024-08-13 14:30:47', '2024-08-13 14:30:47'),
(6, 'temporibus', 'Veniam cum magnam tenetur et.', '2023-02-28', '1970-05-08', '2024-08-13 14:30:47', '2024-08-13 14:30:47'),
(7, 'aut', 'Modi rerum voluptatibus aut adipisci.', '1983-06-26', NULL, '2024-08-13 14:30:47', '2024-08-13 14:30:47'),
(8, 'et', 'Quis et ad dolorum cumque expedita.', '1996-05-04', NULL, '2024-08-13 14:30:47', '2024-08-13 14:30:47'),
(9, 'nisi', 'Dolores et voluptas et laboriosam velit vero.', '1984-07-16', NULL, '2024-08-13 14:30:47', '2024-08-13 14:30:47'),
(10, 'esse', 'Vel vero iste doloremque necessitatibus debitis et illum.', '1980-10-03', '1983-01-21', '2024-08-13 14:30:47', '2024-08-13 14:30:47'),
(11, 'eos', 'Et sint quisquam at qui aspernatur ut quasi.', '1992-05-28', '2016-01-27', '2024-08-13 14:30:47', '2024-08-13 14:30:47'),
(12, 'excepturi', 'Recusandae non voluptate possimus praesentium nostrum quidem.', '1990-10-11', NULL, '2024-08-13 14:30:47', '2024-08-13 14:30:47'),
(13, 'quidem', 'Distinctio qui eveniet voluptas vero porro maiores.', '2001-06-06', '2000-12-17', '2024-08-13 14:30:47', '2024-08-13 14:30:47'),
(14, 'eum', 'Debitis minima delectus consequatur enim.', '1990-06-26', '1992-09-09', '2024-08-13 14:31:10', '2024-08-13 14:31:10'),
(15, 'hic', 'Et qui qui earum vel.', '2019-06-30', '2024-01-15', '2024-08-13 14:31:10', '2024-08-13 14:31:10'),
(16, 'illo', 'Impedit est et voluptatibus vel excepturi blanditiis.', '1986-06-30', '2011-10-02', '2024-08-13 14:31:10', '2024-08-13 14:31:10'),
(17, 'cupiditate', 'Quis magnam dolor et ut magni iste.', '2005-02-14', NULL, '2024-08-13 14:31:10', '2024-08-13 14:31:10'),
(18, 'architecto', 'Quidem numquam aut ut blanditiis.', '2002-05-13', '1971-09-13', '2024-08-13 14:31:10', '2024-08-13 14:31:10'),
(19, 'iusto', 'Eaque quis expedita quo quidem soluta.', '1990-10-24', NULL, '2024-08-13 14:31:10', '2024-08-13 14:31:10'),
(20, 'voluptatibus', 'Mollitia quia libero tenetur sunt.', '1973-11-25', '1979-08-17', '2024-08-13 14:31:11', '2024-08-13 14:31:11'),
(21, 'possimus', 'Alias qui voluptatibus laudantium fuga et.', '1984-03-25', '1974-11-07', '2024-08-13 14:31:11', '2024-08-13 14:31:11'),
(22, 'ut', 'Sit hic ratione aperiam excepturi.', '2014-04-04', '1997-03-06', '2024-08-13 14:31:11', '2024-08-13 14:31:11'),
(23, 'est', 'Facere aut ipsa id autem et qui consectetur.', '1971-07-27', NULL, '2024-08-13 14:31:11', '2024-08-13 14:31:11'),
(24, 'ipsam', 'Quo blanditiis sit itaque et ea expedita id non.', '2003-01-30', '2002-11-16', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(25, 'suscipit', 'Molestiae blanditiis molestiae facilis voluptas error officiis expedita.', '2018-03-26', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(26, 'optio', 'Recusandae excepturi velit qui ut suscipit doloribus illum explicabo.', '2020-07-19', '2015-11-06', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(27, 'aut', 'Voluptatem hic neque nihil esse.', '1973-11-20', '2012-03-20', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(28, 'asperiores', 'Cupiditate similique voluptatem vitae et.', '2019-10-16', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(29, 'assumenda', 'A iure rem ut accusamus tenetur omnis impedit.', '1994-03-08', '1992-06-27', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(30, 'omnis', 'Dolor vero aut assumenda officiis quo voluptas et.', '1995-05-26', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(31, 'sed', 'Ut velit dolorem asperiores eum perspiciatis assumenda animi deserunt.', '2012-08-13', '1976-04-17', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(32, 'eius', 'Et voluptas eum qui adipisci error laborum.', '1971-05-19', '1970-06-15', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(33, 'reiciendis', 'Ea doloremque repellat totam fuga nihil.', '1997-03-06', '1980-10-23', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(34, 'sapiente', 'Est perferendis ex est ut qui.', '2023-12-10', '2018-01-03', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(35, 'ut', 'Suscipit qui vel corporis modi culpa.', '1997-12-06', '1972-08-18', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(36, 'doloribus', 'Dolorem laboriosam dicta nihil itaque dolor odio.', '2016-01-21', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(37, 'distinctio', 'Et aut quam magni.', '1991-02-25', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(38, 'ut', 'Aliquam facere sed veniam fugiat.', '1976-01-06', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(39, 'atque', 'Quo illum ut et ipsam.', '2001-06-19', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(40, 'vel', 'In laboriosam et et.', '2018-06-09', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(41, 'dolore', 'Deserunt et veritatis nulla voluptate et reiciendis.', '1981-02-03', '2015-01-05', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(42, 'adipisci', 'Facilis est quas aperiam asperiores rerum consectetur hic nisi.', '2002-01-28', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(43, 'omnis', 'Culpa dolor nostrum molestiae qui voluptatem assumenda porro.', '1995-11-04', '1987-04-10', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(44, 'aut', 'Unde laborum neque consequuntur excepturi aut.', '2024-05-16', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(45, 'explicabo', 'Architecto temporibus a qui fugiat.', '1977-11-21', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(46, 'repellendus', 'Accusamus maiores cumque unde impedit reiciendis dolores.', '2011-07-29', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(47, 'ullam', 'Aliquam itaque reiciendis ipsa corporis illo voluptas quidem quisquam.', '1976-09-21', '1975-11-28', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(48, 'sunt', 'In fuga corrupti voluptatem et autem possimus.', '1996-10-26', '1971-02-16', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(49, 'aut', 'Minus maiores sit rerum nihil voluptatem placeat ut.', '1987-10-25', NULL, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(50, 'vel', 'Velit atque atque harum aut id excepturi.', '1970-10-04', '1977-10-11', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(51, 'sapiente', 'Voluptate eos officiis eos et.', '1976-11-09', '1978-09-04', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(52, 'accusantium', 'Dolore tempore molestiae voluptatem animi voluptas eveniet.', '1981-08-02', '1995-01-27', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(53, 'tenetur', 'Dolor aut odio velit ut.', '1997-05-08', '2005-08-31', '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(54, 'blanditiis', 'Hic ad id qui esse.', '1983-10-23', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(55, 'qui', 'Vero quasi qui voluptas nulla voluptatem.', '1979-10-24', '2013-06-03', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(56, 'quidem', 'Repellendus ratione rem quia.', '1970-05-13', '1994-07-21', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(57, 'repellat', 'Repellat nihil nam autem vel maxime voluptatum.', '1981-07-31', '1973-11-14', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(58, 'nulla', 'Sit qui officia nam dolor minus.', '2001-03-23', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(59, 'ipsa', 'Pariatur est ut amet dolore quia et.', '1995-08-02', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(60, 'tempore', 'Pariatur quis minima voluptas error dicta iusto quis.', '1988-11-08', '1985-07-15', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(61, 'voluptas', 'Voluptatem porro consequatur minus error iure.', '2018-01-08', '2019-02-21', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(62, 'quo', 'Rerum dolorum optio molestiae sed.', '2018-07-03', '2011-11-06', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(63, 'hic', 'Temporibus delectus tenetur sequi molestias iusto.', '1979-12-13', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(64, 'est', 'Excepturi blanditiis sint minus quos aut.', '2007-11-18', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(65, 'ipsa', 'Eos et ut aspernatur necessitatibus non.', '2018-08-19', '2004-10-21', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(66, 'sint', 'Quia accusantium excepturi et aut hic.', '1983-02-19', '2004-08-02', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(67, 'non', 'Nam saepe inventore odio.', '2023-12-15', '2003-01-11', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(68, 'incidunt', 'Labore atque quo minima dolor.', '1975-06-22', '2008-04-25', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(69, 'voluptatem', 'Est itaque sit quia voluptatem occaecati dolores tempora provident.', '2008-02-19', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(70, 'omnis', 'Dolores quam corporis laudantium qui.', '2005-06-05', '1983-01-30', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(71, 'est', 'Magni eum molestiae natus animi et.', '2021-12-22', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(72, 'qui', 'Eaque sed minima blanditiis ea ad.', '2017-07-25', '2016-08-18', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(73, 'velit', 'Inventore sequi ut eos nobis.', '2016-08-03', '2020-07-07', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(74, 'qui', 'Aliquam natus quisquam fugit voluptatem voluptatem.', '2022-04-22', '1977-08-12', '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(75, 'nostrum', 'Modi minus corrupti velit culpa.', '1997-11-26', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(76, 'similique', 'Eos excepturi nobis vero voluptatem voluptate voluptatem rerum sunt.', '1980-09-12', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(77, 'libero', 'Facere dignissimos qui tenetur perferendis quas voluptas doloribus quo.', '1972-07-21', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(78, 'vel', 'Dolor tenetur quo ipsam in maiores in nesciunt quia.', '2009-01-23', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(79, 'consequatur', 'Occaecati vitae et quia aut quia.', '1973-06-30', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(80, 'ipsam', 'Provident explicabo aut exercitationem nihil non.', '1981-02-13', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(81, 'fuga', 'Et qui vel soluta labore perspiciatis.', '1978-11-27', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(82, 'ipsam', 'Excepturi aut modi magni quisquam odio.', '1991-03-03', NULL, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(83, 'est', 'Beatae at placeat debitis eum rerum.', '1975-12-28', '1975-09-20', '2024-08-13 14:35:14', '2024-08-13 14:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `name`, `description`, `start_date`, `end_date`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 'test1111', '777777', '2024-08-08', '2024-07-30', 'In Progress', 12, '2024-08-13 14:15:40', '2024-08-13 14:15:44'),
(3, 34, 'unde', 'Totam optio est sit ducimus qui sequi provident.', '2006-08-04', NULL, 'ToDo', 43, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(4, 35, 'qui', 'Velit minus fugiat consequatur aut eos quod consequatur dolor.', '2019-05-18', '1970-10-21', 'In Progress', 44, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(5, 36, 'autem', 'Pariatur adipisci et ab pariatur sed sit impedit.', '1976-08-25', '2015-05-26', 'Done', 45, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(6, 37, 'nulla', 'Distinctio odit dignissimos reprehenderit ex voluptatem assumenda.', '1993-08-19', NULL, 'In Progress', 46, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(7, 38, 'totam', 'Optio unde ut provident dolorem.', '1984-08-02', NULL, 'ToDo', 47, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(8, 39, 'voluptas', 'Velit laudantium aut sequi sit animi ipsa nostrum placeat.', '2019-06-26', NULL, 'Done', 48, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(9, 40, 'reiciendis', 'Dolor similique aut repellat quia omnis tenetur tempore adipisci.', '1989-08-08', NULL, 'In Progress', 49, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(10, 41, 'ut', 'Autem doloribus ab perspiciatis consequuntur.', '2024-04-13', NULL, 'Done', 50, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(11, 42, 'rerum', 'Deleniti harum a ex nihil beatae.', '1990-01-28', '1975-01-06', 'Done', 51, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(12, 43, 'aperiam', 'Est voluptas aut explicabo repellat voluptas.', '1982-06-14', '1976-09-28', 'Done', 52, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(13, 44, 'delectus', 'Tenetur eos deserunt rem ullam nihil eum delectus sunt.', '2010-02-15', '2006-12-11', 'Done', 53, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(14, 45, 'atque', 'Reprehenderit ipsa possimus ut quia aut.', '2005-12-08', '1977-06-26', 'In Progress', 54, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(15, 46, 'exercitationem', 'Molestiae hic vero illum odio.', '2021-07-30', NULL, 'In Progress', 55, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(16, 47, 'nihil', 'Provident voluptas quis aliquid.', '1993-01-17', NULL, 'ToDo', 56, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(17, 48, 'animi', 'Vel ut explicabo et quas rerum ut sequi quia.', '1970-05-30', '2011-03-09', 'ToDo', 57, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(18, 49, 'est', 'Praesentium consequatur eveniet temporibus vel dolores quasi.', '2014-07-17', '2016-09-04', 'ToDo', 58, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(19, 50, 'mollitia', 'Fugiat inventore et quidem voluptate.', '2017-02-21', NULL, 'In Progress', 59, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(20, 51, 'fugit', 'Minima quas molestiae a animi sit iusto.', '1980-04-10', NULL, 'In Progress', 60, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(21, 52, 'accusamus', 'Quaerat enim nihil molestiae explicabo facere atque repellat.', '1977-07-05', '1970-11-02', 'Done', 61, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(22, 53, 'vitae', 'In ex iusto adipisci doloremque repellendus.', '1991-01-07', NULL, 'Done', 62, '2024-08-13 14:34:58', '2024-08-13 14:34:58'),
(23, 64, 'in', 'Asperiores odit porro quia amet velit dolore corrupti optio.', '2019-10-17', NULL, 'Done', 73, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(24, 65, 'dicta', 'Cupiditate cum beatae inventore qui autem cupiditate sunt maxime.', '1994-04-28', '1998-05-21', 'In Progress', 74, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(25, 66, 'optio', 'Eaque distinctio vitae quod sit animi quaerat quidem.', '1977-08-16', '2017-03-10', 'In Progress', 75, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(26, 67, 'quas', 'Corporis in omnis ex vel est minus reiciendis eum.', '1980-11-24', '2016-02-08', 'Done', 76, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(27, 68, 'laborum', 'At temporibus culpa cumque voluptas voluptas et officia.', '2020-06-28', NULL, 'In Progress', 77, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(28, 69, 'voluptatem', 'Tenetur commodi ut et sit sed asperiores.', '2012-09-15', '2013-07-16', 'Done', 78, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(29, 70, 'consequatur', 'Et non nobis magni amet expedita ratione reprehenderit.', '2002-12-01', '1987-12-29', 'In Progress', 79, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(30, 71, 'tempora', 'Totam inventore laborum sint rerum in.', '1991-01-24', NULL, 'ToDo', 80, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(31, 72, 'rem', 'Ipsa voluptas consectetur sit aut molestiae corporis.', '2014-05-18', '2002-06-13', 'ToDo', 81, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(32, 73, 'est', 'Animi id asperiores iure aperiam veniam autem.', '1995-11-09', '2002-01-22', 'Done', 82, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(33, 74, 'et', 'Voluptas aliquam et omnis minus.', '1993-09-13', NULL, 'Done', 83, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(34, 75, 'fuga', 'Quis nesciunt et est explicabo magnam pariatur.', '2005-10-09', '2015-08-09', 'In Progress', 84, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(35, 76, 'et', 'Dolorem aut sit non omnis delectus.', '2006-04-30', '2000-12-01', 'In Progress', 85, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(36, 77, 'sit', 'Veniam dolor aliquid deleniti pariatur ut.', '1995-06-29', NULL, 'In Progress', 86, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(37, 78, 'suscipit', 'Reiciendis porro rem quasi velit fugit est minima.', '1979-03-03', NULL, 'In Progress', 87, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(38, 79, 'odit', 'Sit alias dolor iusto vitae voluptatem magnam.', '2018-08-29', '2010-01-06', 'ToDo', 88, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(39, 80, 'omnis', 'Qui mollitia laudantium et aut est iste.', '1973-08-13', '2018-04-16', 'ToDo', 89, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(40, 81, 'eaque', 'Maiores in velit enim.', '1985-10-10', '2020-09-24', 'Done', 90, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(41, 82, 'aliquid', 'Repellendus occaecati placeat at assumenda laudantium iusto illo.', '2018-10-26', NULL, 'Done', 91, '2024-08-13 14:35:14', '2024-08-13 14:35:14'),
(42, 83, 'iusto', 'In veritatis quas laudantium voluptatem voluptatibus sunt eum.', '2011-12-31', NULL, 'In Progress', 92, '2024-08-13 14:35:14', '2024-08-13 14:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'roman', 'roman@matviy.pp.ua', NULL, '$2y$12$R8p1g0PD8zfOh/oq8XOm6usBl1R7V9pPHO9JSEA3kLP0NjVqTjSZC', 'mx00fBrX8EWEvbZRVtiMoBtFuMoVHdrkItmEzsEFvoWK4XfZZajYWXgMdFa5', '2024-08-13 10:02:26', '2024-08-13 10:02:26', 0),
(2, 'roman', 'test@test.com', NULL, '$2y$12$RkM8bYFf7XNdpIceq79oVOeyMEu4wbCx4ymuxHz9oRnE/4J6F2gJC', NULL, '2024-08-13 11:13:59', '2024-08-13 11:13:59', 0),
(3, 'Russel Flatley', 'bednar.amanda@example.org', '2024-08-13 12:16:00', '$2y$12$ALajK2V8kltxIii1WerfEemczD0HWyFi/gwsa.RYqUQivhE97f9Mm', 'DduJBW3l2J', '2024-08-13 12:16:00', '2024-08-13 12:16:00', 0),
(4, 'Joe Graham', 'blanca.batz@example.com', '2024-08-13 12:16:00', '$2y$12$ALajK2V8kltxIii1WerfEemczD0HWyFi/gwsa.RYqUQivhE97f9Mm', 'rzsbEBiY38', '2024-08-13 12:16:00', '2024-08-13 12:16:00', 0),
(5, 'Otilia Nienow PhD', 'lorenza.conn@example.net', '2024-08-13 12:16:00', '$2y$12$ALajK2V8kltxIii1WerfEemczD0HWyFi/gwsa.RYqUQivhE97f9Mm', 'PnsZCQJKWT', '2024-08-13 12:16:00', '2024-08-13 12:16:00', 0),
(6, 'Jayden Kerluke', 'owitting@example.net', '2024-08-13 12:16:00', '$2y$12$ALajK2V8kltxIii1WerfEemczD0HWyFi/gwsa.RYqUQivhE97f9Mm', 'k8PDEoFbXg', '2024-08-13 12:16:00', '2024-08-13 12:16:00', 0),
(7, 'Prof. Ricky Wisoky', 'maurine99@example.org', '2024-08-13 12:16:00', '$2y$12$ALajK2V8kltxIii1WerfEemczD0HWyFi/gwsa.RYqUQivhE97f9Mm', 'cE0v1YdmD2', '2024-08-13 12:16:00', '2024-08-13 12:16:00', 0),
(8, 'Dr. Zachery Cronin', 'jacques51@example.org', '2024-08-13 12:16:00', '$2y$12$ALajK2V8kltxIii1WerfEemczD0HWyFi/gwsa.RYqUQivhE97f9Mm', 'e39QdihepD', '2024-08-13 12:16:00', '2024-08-13 12:16:00', 0),
(9, 'Ms. Lydia Hahn DDS', 'tskiles@example.org', '2024-08-13 12:16:00', '$2y$12$ALajK2V8kltxIii1WerfEemczD0HWyFi/gwsa.RYqUQivhE97f9Mm', 'xy4uvpXgbd', '2024-08-13 12:16:00', '2024-08-13 12:16:00', 0),
(10, 'Denis Anderson', 'edward88@example.com', '2024-08-13 12:16:00', '$2y$12$ALajK2V8kltxIii1WerfEemczD0HWyFi/gwsa.RYqUQivhE97f9Mm', '5o3rQoQ33X', '2024-08-13 12:16:00', '2024-08-13 12:16:00', 0),
(11, 'Ray Mosciski', 'nia00@example.com', '2024-08-13 12:16:00', '$2y$12$ALajK2V8kltxIii1WerfEemczD0HWyFi/gwsa.RYqUQivhE97f9Mm', 'yb5hsXl5q2', '2024-08-13 12:16:00', '2024-08-13 12:16:00', 0),
(12, 'Marcellus Schulist', 'kulas.angela@example.net', '2024-08-13 12:16:00', '$2y$12$ALajK2V8kltxIii1WerfEemczD0HWyFi/gwsa.RYqUQivhE97f9Mm', 'G9QjdYBhaY', '2024-08-13 12:16:00', '2024-08-13 12:16:00', 0),
(13, 'Gerda McKenzie', 'amalia.hyatt@example.org', '2024-08-13 14:30:46', '$2y$12$lFl1EVsJ0TAZfTnMD3FhrOAXUf5NBXYQUbV.0bI6uEh8.mVrYI/0m', 'TGMn2lJ00Z', '2024-08-13 14:30:47', '2024-08-13 14:30:47', 0),
(14, 'Kaylee Pollich', 'schultz.gwen@example.com', '2024-08-13 14:30:47', '$2y$12$lFl1EVsJ0TAZfTnMD3FhrOAXUf5NBXYQUbV.0bI6uEh8.mVrYI/0m', '3in7zlMh5M', '2024-08-13 14:30:47', '2024-08-13 14:30:47', 0),
(15, 'Elsa Kris', 'junior.mckenzie@example.net', '2024-08-13 14:30:47', '$2y$12$lFl1EVsJ0TAZfTnMD3FhrOAXUf5NBXYQUbV.0bI6uEh8.mVrYI/0m', 'Xz5gc7uj7b', '2024-08-13 14:30:47', '2024-08-13 14:30:47', 0),
(16, 'Mr. Dan Zieme', 'dmckenzie@example.com', '2024-08-13 14:30:47', '$2y$12$lFl1EVsJ0TAZfTnMD3FhrOAXUf5NBXYQUbV.0bI6uEh8.mVrYI/0m', '9I2AO9HFg6', '2024-08-13 14:30:47', '2024-08-13 14:30:47', 0),
(17, 'Mariela Carroll', 'blick.alayna@example.com', '2024-08-13 14:30:47', '$2y$12$lFl1EVsJ0TAZfTnMD3FhrOAXUf5NBXYQUbV.0bI6uEh8.mVrYI/0m', '1x4yROdGHk', '2024-08-13 14:30:47', '2024-08-13 14:30:47', 0),
(18, 'Mrs. Queenie Leuschke', 'alarkin@example.com', '2024-08-13 14:30:47', '$2y$12$lFl1EVsJ0TAZfTnMD3FhrOAXUf5NBXYQUbV.0bI6uEh8.mVrYI/0m', 'OFYVYgyHSV', '2024-08-13 14:30:47', '2024-08-13 14:30:47', 0),
(19, 'Prof. Patsy Breitenberg Jr.', 'monahan.jose@example.com', '2024-08-13 14:30:47', '$2y$12$lFl1EVsJ0TAZfTnMD3FhrOAXUf5NBXYQUbV.0bI6uEh8.mVrYI/0m', 'GBzegbUu6C', '2024-08-13 14:30:47', '2024-08-13 14:30:47', 0),
(20, 'Aditya Medhurst', 'huels.mckayla@example.com', '2024-08-13 14:30:47', '$2y$12$lFl1EVsJ0TAZfTnMD3FhrOAXUf5NBXYQUbV.0bI6uEh8.mVrYI/0m', '6aXEnyBKLL', '2024-08-13 14:30:47', '2024-08-13 14:30:47', 0),
(21, 'Daisy Smitham', 'frieda.herman@example.com', '2024-08-13 14:30:47', '$2y$12$lFl1EVsJ0TAZfTnMD3FhrOAXUf5NBXYQUbV.0bI6uEh8.mVrYI/0m', 'kAwBWJJFW3', '2024-08-13 14:30:47', '2024-08-13 14:30:47', 0),
(22, 'Tomasa Adams', 'dooley.beryl@example.net', '2024-08-13 14:30:47', '$2y$12$lFl1EVsJ0TAZfTnMD3FhrOAXUf5NBXYQUbV.0bI6uEh8.mVrYI/0m', 'hlAMTB1vPz', '2024-08-13 14:30:47', '2024-08-13 14:30:47', 0),
(23, 'Lela Herzog', 'schmidt.delbert@example.com', '2024-08-13 14:31:10', '$2y$12$dJjg3obj1kkESrImeVL9GuHAwG4NPJyRSIxkuwAKtwQr7PySGQXfS', 'edYvRzmfll', '2024-08-13 14:31:10', '2024-08-13 14:31:10', 0),
(24, 'Kadin Wunsch', 'kaley48@example.org', '2024-08-13 14:31:10', '$2y$12$dJjg3obj1kkESrImeVL9GuHAwG4NPJyRSIxkuwAKtwQr7PySGQXfS', 'SFO1QAgpfU', '2024-08-13 14:31:10', '2024-08-13 14:31:10', 0),
(25, 'Julie Shields', 'bryce05@example.com', '2024-08-13 14:31:10', '$2y$12$dJjg3obj1kkESrImeVL9GuHAwG4NPJyRSIxkuwAKtwQr7PySGQXfS', 'rNUCwmHxZx', '2024-08-13 14:31:10', '2024-08-13 14:31:10', 0),
(26, 'Mr. Murray Weber III', 'haskell.jones@example.net', '2024-08-13 14:31:10', '$2y$12$dJjg3obj1kkESrImeVL9GuHAwG4NPJyRSIxkuwAKtwQr7PySGQXfS', '8dIgqh8hDn', '2024-08-13 14:31:10', '2024-08-13 14:31:10', 0),
(27, 'Nya McLaughlin', 'fiona98@example.net', '2024-08-13 14:31:10', '$2y$12$dJjg3obj1kkESrImeVL9GuHAwG4NPJyRSIxkuwAKtwQr7PySGQXfS', 'erZLzG5gXB', '2024-08-13 14:31:10', '2024-08-13 14:31:10', 0),
(28, 'Miss Marisa Nienow', 'jimmie.gusikowski@example.org', '2024-08-13 14:31:10', '$2y$12$dJjg3obj1kkESrImeVL9GuHAwG4NPJyRSIxkuwAKtwQr7PySGQXfS', 'HosxrYa98Q', '2024-08-13 14:31:10', '2024-08-13 14:31:10', 0),
(29, 'Nella Walker', 'kozey.darryl@example.com', '2024-08-13 14:31:10', '$2y$12$dJjg3obj1kkESrImeVL9GuHAwG4NPJyRSIxkuwAKtwQr7PySGQXfS', 'XdcpD0XI3f', '2024-08-13 14:31:10', '2024-08-13 14:31:10', 0),
(30, 'Lois Mante', 'von.maryjane@example.net', '2024-08-13 14:31:10', '$2y$12$dJjg3obj1kkESrImeVL9GuHAwG4NPJyRSIxkuwAKtwQr7PySGQXfS', 'Wipvxz4rlF', '2024-08-13 14:31:10', '2024-08-13 14:31:10', 0),
(31, 'Kailey Ratke I', 'sandra.hane@example.org', '2024-08-13 14:31:10', '$2y$12$dJjg3obj1kkESrImeVL9GuHAwG4NPJyRSIxkuwAKtwQr7PySGQXfS', 'kIQtaD2aTr', '2024-08-13 14:31:10', '2024-08-13 14:31:10', 0),
(32, 'Mathias Fisher DDS', 'stewart13@example.net', '2024-08-13 14:31:10', '$2y$12$dJjg3obj1kkESrImeVL9GuHAwG4NPJyRSIxkuwAKtwQr7PySGQXfS', 'yqX3hRfOvb', '2024-08-13 14:31:10', '2024-08-13 14:31:10', 0),
(33, 'Maggie Oberbrunner IV', 'quinn.kirlin@example.com', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', '7PxgPJIcES', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(34, 'Prof. Enrico Harber III', 'tristian38@example.org', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'mQ51DtyyP7', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(35, 'Buster Homenick IV', 'kali.heaney@example.com', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'T1Uf6u64XV', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(36, 'Prof. Deshaun Nikolaus', 'cummerata.berniece@example.org', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'v5RpVJC7Zf', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(37, 'Dr. Bonnie Waelchi', 'allie.gleason@example.org', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'nxh2nKYTx3', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(38, 'Korey Upton', 'ekutch@example.com', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'HzYbZayUpm', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(39, 'Prof. Zita Collier', 'stroman.kylie@example.com', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'CtWyBzTI3r', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(40, 'Fletcher Kuhlman', 'lindgren.kelvin@example.org', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'kyZ9lBwsyD', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(41, 'Miss Destinee Reynolds III', 'mark.stokes@example.com', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'YeLIlVqQdA', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(42, 'Isaias Ondricka', 'mollie38@example.com', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', '1pbg0HECXJ', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(43, 'Maximo Oberbrunner IV', 'kayley04@example.net', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'PDAp8MR2RE', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(44, 'Thea Kertzmann', 'peyton50@example.com', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', '4atSU0g5so', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(45, 'Casimir Haley', 'collier.paige@example.net', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'pyGYW2Fi7N', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(46, 'Emmitt Hessel', 'monty.murphy@example.com', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'arVInBlUJN', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(47, 'Noble Pagac', 'justine90@example.org', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'fCpBsrAM1L', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(48, 'Viviane Volkman', 'oblick@example.net', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'IadxdYbh9i', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(49, 'Ernest Wolff', 'ycole@example.net', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'm1m6nYjuIw', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(50, 'Mr. Frederic Bartoletti', 'russel.bryce@example.com', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'TL895WCWBj', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(51, 'Assunta Feeney', 'deborah.rempel@example.com', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'teaJC5Xz9u', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(52, 'Miss Trinity Halvorson', 'glenda55@example.net', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'JBGSkp35JO', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(53, 'Dr. Morton Goldner', 'madge.thompson@example.net', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'iOYIXmPHlP', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(54, 'Kristoffer Rohan', 'atoy@example.net', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'cXbAOy0Mar', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(55, 'Janessa Blanda', 'ernser.gonzalo@example.org', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'HsNKKUhNXn', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(56, 'Prof. Kay Padberg Jr.', 'xheidenreich@example.org', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'eXUlRjKf21', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(57, 'Dr. Norwood Wisozk Sr.', 'skiles.alysson@example.com', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'o1OoM2pd0j', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(58, 'Kailee Hermann', 'tianna.schimmel@example.net', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'yq4y2IAc1g', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(59, 'Prof. Jaylan Gerhold', 'pharber@example.net', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', '1pLgbtuoZ7', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(60, 'Desmond Graham II', 'klein.maddison@example.org', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'OUw5qNBLo2', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(61, 'Shania Bergstrom', 'feest.dulce@example.org', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'eZDDAYQrA0', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(62, 'Dimitri Schiller Sr.', 'khalil01@example.org', '2024-08-13 14:34:58', '$2y$12$7QmMaakHg4IRQ7kh0.OwA.lPSkLxtFJ2csoqeBA9z3xM7a.apMQ56', 'ZIn1eutsVA', '2024-08-13 14:34:58', '2024-08-13 14:34:58', 0),
(63, 'Carmela Ebert', 'chaim.greenfelder@example.com', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'wlRIrK2XKn', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(64, 'Joelle Ullrich I', 'mgerlach@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'XufR0cgQCC', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(65, 'Shawna Aufderhar', 'bradtke.frankie@example.com', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'DgrYhIhrxB', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(66, 'Magdalen Hammes', 'pgibson@example.org', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'uhpSJ5RqbU', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(67, 'Lamar Erdman', 'damien.turner@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', '3iVzeSESOT', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(68, 'Nathanael Schmidt I', 'bernadette.bergnaum@example.org', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'BlhTQxykHG', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(69, 'Prof. Buford Grady III', 'cordelia15@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'mdjowsRqql', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(70, 'Mrs. Alverta Dietrich III', 'shyatt@example.com', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'apr5FKDTL2', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(71, 'Clovis Graham III', 'obauch@example.org', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'aFU8APQud9', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(72, 'Katelyn Friesen', 'albertha72@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'h1CwSMU5ue', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(73, 'Eveline Leannon', 'cleffler@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'vUrOAfqlXT', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(74, 'Philip Reilly V', 'reinger.anabelle@example.org', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'RRuzExDlu6', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(75, 'Isom Nolan', 'kobe67@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', '9bNzrCryMs', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(76, 'Ms. Kianna Moen III', 'ohara.carlee@example.org', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'XKJJh9Gj0J', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(77, 'Stevie Jones', 'pdeckow@example.com', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'rckhrnouEg', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(78, 'Mr. Wyman Spencer IV', 'ayden.dubuque@example.com', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'CPtKnYhmyM', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(79, 'Bonita Kunde', 'keenan90@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'coEsjIGe3t', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(80, 'Celine Kihn', 'keenan.ritchie@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'oLzAcPNlkD', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(81, 'Axel Doyle IV', 'elyssa.smitham@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', '1WXUhMaqrF', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(82, 'Edwin Friesen', 'xblock@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'EwO4y72Ynd', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(83, 'Dr. Pedro Torphy', 'kbuckridge@example.com', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'ZrXHeRQbZU', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(84, 'Laurianne Hoeger', 'madie.toy@example.com', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'O6p5i0pD9s', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(85, 'Dudley Erdman', 'dell36@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'GF65jVQPwL', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(86, 'Marge Hermann', 'emelie.block@example.org', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'OHMa3Ed3ZB', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(87, 'Pierce Trantow', 'justina32@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'ev4t0OH89X', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(88, 'Freda Berge', 'reginald79@example.org', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'IZEQiNON2k', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(89, 'Janelle Donnelly I', 'yboyle@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'vACKUBO2cK', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(90, 'Larue Beer PhD', 'roselyn89@example.org', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'HpQMGzBtj6', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(91, 'Electa Watsica', 'mallory30@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', 'VyBE9ubkZy', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0),
(92, 'Prof. Aaron Ruecker I', 'turner.chaz@example.net', '2024-08-13 14:35:14', '$2y$12$PquPIIBVUz1NxYp9h46wSeofjEnOApk3cZtFA4JP2C6q2f4eXXiQS', '57lbBSNYna', '2024-08-13 14:35:14', '2024-08-13 14:35:14', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
