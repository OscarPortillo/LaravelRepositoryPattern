-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Sep 12, 2022 at 08:33 AM
-- Server version: 8.0.28
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_12_080414_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_fulfilled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `details`, `client`, `is_fulfilled`, `created_at`, `updated_at`) VALUES
(1, 'Aut aut facere amet voluptatem delectus adipisci. Nobis doloremque inventore vero fugit nulla iure aut. Impedit fugiat inventore tenetur eveniet eos quis nostrum. Vitae et consequuntur sint aut.', 'Prof. Chloe Bahringer', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(2, 'Vel quis maxime vel iure magni ipsam non. Qui accusamus voluptatem cupiditate et. Et ut ab impedit officiis. Repudiandae maiores ratione vel libero aspernatur.', 'Juliana Wintheiser', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(3, 'Iusto recusandae alias officia aliquam. Sed corrupti at aut voluptate voluptatibus enim. Impedit illum ut rerum est odit. Possimus ipsum temporibus aliquid ipsam consectetur suscipit occaecati.', 'Martina Kilback II', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(4, 'Velit optio explicabo provident enim neque odit voluptatem. Alias sit qui mollitia. Corporis quidem quia voluptates minima inventore quasi aliquid. Qui vel libero quasi odit.', 'Luisa Rosenbaum', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(5, 'Porro explicabo vero fugit omnis. Voluptatibus accusamus quos vero corporis libero quasi totam. Qui dolor cumque excepturi delectus labore doloribus rerum. Ipsa provident voluptas provident laborum doloremque consectetur.', 'Braden O\'Kon', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(6, 'Placeat dolore voluptatibus nam rerum accusamus. Quia enim enim aliquam id animi sapiente provident. Non et sequi exercitationem voluptatem ex. Et perferendis ea laboriosam nam qui aut.', 'Noemy Raynor', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(7, 'Aspernatur labore dignissimos repellendus ipsum alias qui dolore adipisci. Minima adipisci qui illo occaecati inventore. Iure totam eos officiis. Harum culpa illum delectus quasi numquam qui.', 'Mr. Corbin Ondricka I', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(8, 'Quas consectetur eum consequatur magnam qui. Possimus eius autem fuga fuga neque alias in. Maiores ex voluptas illum quae totam. Nam quod velit quasi enim voluptas asperiores voluptatem.', 'Clementine Herman', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(9, 'Alias quam voluptatum ea ut ut eos quo totam. Et sint aliquid velit ut. Eos beatae vel natus facilis est fugit. Harum et voluptatem et nihil nisi.', 'Avis Pouros', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(10, 'Modi eos vel pariatur quam harum rerum at. Ut quo ut iure tempora impedit reiciendis. Dolores deleniti autem nostrum in quo necessitatibus. Voluptas et culpa non ea et magni quia.', 'Lenny Stark', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(11, 'Sed eos eum earum at unde est laborum. Ab amet qui eligendi. Cumque quia quibusdam ut in qui inventore saepe enim. Quia accusamus voluptatem non officiis quia consequuntur.', 'Baby McClure', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(12, 'Iusto consequuntur nulla explicabo consequatur consequatur quis itaque. Facilis officiis id quibusdam et laborum consequatur. Consequatur rerum odio quis inventore labore. Illum ut esse est placeat ut.', 'Hassan Turcotte', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(13, 'Molestiae nostrum molestiae quidem tenetur. Rerum necessitatibus quam distinctio quia sed quae. Est assumenda sed dolor placeat qui. Sit earum reprehenderit tempora sed.', 'Rosalyn Gutmann', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(14, 'Modi odio placeat repudiandae. Fugiat qui tenetur sit consectetur sit inventore. Dolore velit ipsum aliquam fugiat quia. Et nihil voluptatem et sed omnis consequatur.', 'Hollis Powlowski', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(15, 'Ut corrupti voluptates sit velit aut deleniti. Eos occaecati sed in. Quae ea dolorem sint et. Natus hic cum deserunt quas.', 'Alvena Larson', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(16, 'Soluta dolor animi vitae et vel. Molestias placeat officia consectetur ut. Nulla incidunt quis voluptatem quam repudiandae rerum. At ipsum mollitia molestias nihil enim quae exercitationem.', 'Reilly Sipes', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(17, 'Suscipit rerum quas minima. Aliquam ipsa nesciunt excepturi quasi. Exercitationem nostrum incidunt quia non omnis voluptates. Ipsa accusamus culpa modi nihil quia.', 'Leopoldo Satterfield PhD', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(18, 'Et perspiciatis id et mollitia minima perspiciatis et. Sunt ut magni id qui. Quia amet nostrum autem aperiam cumque ut dolor. Ut odio dolor et consequatur.', 'Prof. Jonas Haag', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(19, 'Modi id perferendis ut aut explicabo numquam facere. Sit voluptatem dignissimos recusandae rem ut. Quas enim consequatur provident sunt nostrum. Praesentium nam quibusdam atque.', 'Guillermo McClure', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(20, 'Rem accusantium est modi. Architecto iusto soluta laboriosam nam id. Labore sit expedita vel quasi et omnis. Aperiam est magni eaque quaerat.', 'Mustafa Grimes', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(21, 'Aut repellendus aut delectus quo et voluptas. Aut libero cumque necessitatibus harum at. Ut fugiat sint dolorem nesciunt quam. Minima voluptate delectus occaecati sunt.', 'Nicholaus Schmitt', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(22, 'Vel impedit provident ea quia pariatur et eum. Consequatur debitis facilis hic nam. Quas corrupti quasi accusamus. Est deleniti minima perferendis.', 'Dr. Evan Kris', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(23, 'Quia et quisquam blanditiis exercitationem magnam sit. Quis sit saepe veritatis aut. Deserunt voluptate inventore quia delectus corporis voluptas. Minus quidem qui ut.', 'Mr. Hector Schuster III', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(24, 'Aliquam sequi inventore consequuntur ipsum blanditiis facere ut. Odit est est dicta ea et ex. Eligendi nisi voluptas qui in aut perspiciatis est. Rerum repellendus et molestiae error quae facilis consequuntur magnam.', 'Wilmer Schneider', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(25, 'Eos odit dignissimos inventore delectus ut repellendus iusto. Nemo cupiditate sed iure rerum aperiam magni enim. Qui nobis consectetur quaerat id. Qui repudiandae et nihil praesentium.', 'Lambert Ryan', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(26, 'Et optio laudantium ex illum qui magnam. Corporis ut et rerum perferendis voluptatem voluptatem enim ut. Et et ullam quia facilis fugiat. Eaque qui eum molestias omnis earum voluptates quia consequatur.', 'Dr. Ignacio Stehr', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(27, 'Recusandae architecto error qui id aut. Accusamus atque rerum ut a. Velit omnis vel soluta reiciendis quia praesentium magni aut. Fuga perspiciatis consectetur aspernatur voluptatum possimus perferendis.', 'Eladio Stanton', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(28, 'Omnis delectus architecto non est at voluptatum. Molestiae laborum unde autem rerum et autem. Pariatur tempore illo voluptas est repudiandae non. Eveniet ullam quidem laudantium iste numquam.', 'Orie Beer', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(29, 'Et rem sit inventore quisquam beatae ipsum rerum. Odio facere dolore dolores. Laborum nisi commodi totam. Doloribus aliquam cum ut aliquid.', 'Mohammad Lesch', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(30, 'Delectus consequuntur nesciunt est molestiae sit odio maxime possimus. Minus enim molestiae aliquid facere facere. Minima qui fuga rerum quisquam enim ipsam a. Quae voluptate enim distinctio qui officia libero.', 'Flavio Blanda', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(31, 'Voluptas enim expedita quis et dolorem perspiciatis exercitationem. Temporibus impedit maxime rerum id occaecati. Voluptas expedita cum alias dolorum consequuntur debitis eligendi ex. Nihil animi molestiae magnam et.', 'Kitty Altenwerth', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(32, 'Ut nam sit cum molestiae. Maxime fugiat non saepe perspiciatis quod possimus quo. Esse id eum voluptatem. Blanditiis enim voluptate aperiam dolorum id.', 'Ms. Elyse Kutch Sr.', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(33, 'Ratione dolore minus aut alias dolores. Reprehenderit et debitis et voluptate rerum. Nihil repellat aliquam quas ipsum aut. Sed et commodi quisquam amet.', 'Ignacio Harris', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(34, 'Dicta itaque veniam ad voluptas consequuntur porro repudiandae. Quas quia molestias commodi hic dolorem qui non. Omnis hic dolores voluptas aut est quidem et voluptatem. Aspernatur quia totam non ullam.', 'Mr. Joe Champlin', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(35, 'Nostrum dolor asperiores ipsum quas maiores. Ipsam explicabo aut est laudantium ipsum voluptatem dolor excepturi. Omnis ex quisquam numquam quia ex mollitia laborum. Sequi dignissimos et rem suscipit suscipit ut omnis.', 'Simone Windler Jr.', 1, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(36, 'Dolorem nemo fugiat nulla est. Non velit eum excepturi et itaque doloribus. Dolorem maiores recusandae vero aut quisquam consequatur. Est doloremque tempora recusandae.', 'Garret Herman', 0, '2022-09-12 08:06:52', '2022-09-12 08:06:52'),
(37, 'A in non vitae facere est. Iure reprehenderit necessitatibus ad distinctio nam incidunt. Cumque doloribus hic molestias a rerum sed saepe. Explicabo eum blanditiis quia dolor.', 'Miss Maude Orn', 1, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(38, 'Dolor suscipit natus blanditiis est error. Non ut ipsum error occaecati quaerat distinctio libero nisi. Maiores molestias et ut molestias ex. Consequuntur id eaque atque id consequatur iusto.', 'Baylee Jerde', 1, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(39, 'Iste rerum dolorem illo. Delectus omnis et sunt qui repellat nihil. Aut qui qui eius alias aut voluptas. Ad sed quis eos perspiciatis molestiae omnis.', 'Vincenza Murray', 0, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(40, 'Beatae porro qui qui aut iusto. Provident et nemo cum quos. Nostrum iure ad tenetur sit perspiciatis iste in voluptate. Qui ipsam ratione quidem aut velit totam dolorum.', 'Evie Braun DDS', 1, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(41, 'Hic est iusto dicta exercitationem enim laudantium placeat. Debitis optio est veniam. Dolorum vero aliquid dignissimos rerum voluptatibus. Quia dolorem odio praesentium aut pariatur fuga blanditiis.', 'Braulio Mante V', 1, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(42, 'Eligendi quas officiis at blanditiis cumque. Earum eum molestiae molestiae modi. Ducimus aut omnis et quia repellat. Qui eum numquam ipsa deserunt quia.', 'Jabari Feest', 1, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(43, 'Corrupti dolorem delectus a debitis et animi. Doloribus rerum suscipit est distinctio dolorem. Sit voluptatibus voluptatem et laudantium nisi optio nobis rerum. Eligendi occaecati quidem nihil et ad.', 'Florine Jacobson', 1, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(44, 'Qui tempore est facere reiciendis voluptatum nostrum. Maxime beatae ullam quo nam. Autem facere accusantium ea ad alias iste dicta. Praesentium consequatur explicabo vel ratione placeat.', 'Libby Leffler', 0, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(45, 'Tempore expedita reiciendis eius molestias corporis amet. Minus quidem mollitia animi voluptas sit voluptas id sint. Beatae voluptate totam mollitia error. Reprehenderit optio ab eos.', 'Dawn Kling Sr.', 1, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(46, 'Praesentium dolorum ea expedita nihil ducimus atque assumenda similique. Magnam laboriosam rerum dolorem. Magni soluta sunt illo. Vitae nesciunt eos praesentium pariatur.', 'Mr. Carmel Ryan', 0, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(47, 'Quos animi quam voluptas. Adipisci voluptas quia consequatur quibusdam. Qui quia laborum et earum omnis aut laboriosam. Aut voluptates itaque dignissimos sint facere.', 'Maxwell Ward', 1, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(48, 'Voluptas itaque culpa possimus accusantium. Repellendus magnam minima ut sunt debitis placeat. Eum dolor et temporibus expedita inventore sequi. Et non doloribus omnis dignissimos veritatis.', 'John Hermann', 0, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(49, 'Ut mollitia fugiat excepturi vitae. Vel officiis consequatur molestiae quaerat. Aperiam ea minus deserunt id et sunt quis. Illum inventore unde ea voluptate.', 'Miss Kelli Johns', 1, '2022-09-12 08:06:53', '2022-09-12 08:06:53'),
(50, 'Et placeat molestias exercitationem enim enim voluptates amet qui. Necessitatibus qui id et sunt dolor. Reiciendis voluptate voluptatem ut doloremque maiores rerum. Est ullam quis mollitia ad quisquam.', 'Prof. Derek Padberg', 1, '2022-09-12 08:06:53', '2022-09-12 08:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
