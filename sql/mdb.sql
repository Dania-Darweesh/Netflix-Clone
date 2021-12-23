-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 02:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdb`
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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_20_212805_create_movies_table', 1),
(6, '2021_12_21_161012_add_votes_to_movies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_gener` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `movie_tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movie_name`, `movie_desc`, `movie_gener`, `movie_image`, `created_at`, `updated_at`, `movie_tag`) VALUES
(1, 'Wynonna Farr', 'The Wynonna Farr is a 2011 American action thriller film directed', '1995', 'uploads/16401042871.png', '2021-12-22 00:31:27', '2021-12-22 00:31:27', 'popular'),
(2, 'CLUB', 'The CLUB Farr is a 2011 American action thriller film directed', '1991', 'uploads/1640104353p2.png', '2021-12-22 00:32:33', '2021-12-23 18:09:22', 'trending'),
(4, 'The road trick', 'The FFFF Farr is a 2011 American action thriller film directed', '2017', 'uploads/1640120200The road trick.png', '2021-12-22 04:56:40', '2021-12-22 04:56:40', 'popular'),
(5, 'GRYES ANNTONY', 'The FFFF Farr is a 2011 American action thriller film directed', '1995', 'uploads/1640120291p4.png', '2021-12-22 04:58:11', '2021-12-22 04:58:11', 'popular'),
(6, 'STEP UP 2', 'The FFFF Farr is a 2011 American action thriller film directed', '1995', 'uploads/1640120362p5.png', '2021-12-22 04:59:22', '2021-12-22 04:59:22', 'popular'),
(7, 'LIQUID SCIENCE', 'The FFFF Farr is a 2011 American action thriller film directed', '2014', 'uploads/1640120411p6.png', '2021-12-22 05:00:11', '2021-12-22 05:00:11', 'popular'),
(8, 'REASONS WHY', 'The FFFF Farr is a 2011 American action thriller film directed', '2013', 'uploads/1640120451p7.png', '2021-12-22 05:00:51', '2021-12-22 05:00:51', 'popular'),
(9, 'THE STAIRCASE', 'The FFFF Farr is a 2011 American action thriller film directed', '2015', 'uploads/1640120492p8.png', '2021-12-22 05:01:32', '2021-12-22 05:01:32', 'popular'),
(10, 'THE VIETNAM WAR', 'The FFFF Farr is a 2011 American action thriller film directed', '2016', 'uploads/1640120536p9.png', '2021-12-22 05:02:16', '2021-12-22 05:02:16', 'popular'),
(11, 'THE COVENAN+', 'The FFFF Farr is a 2011 American action thriller film directed', '2014', 'uploads/1640120588p10.png', '2021-12-22 05:03:08', '2021-12-22 05:03:08', 'popular'),
(12, 'MARCELLA', 'The FFFF Farr is a 2011 American action thriller film directed', '1997', 'uploads/1640120648p11.png', '2021-12-22 05:04:08', '2021-12-22 05:04:08', 'popular'),
(13, 'RIVERDALI', 'The FFFF Farr is a 2011 American action thriller film directed', '1998', 'uploads/1640120683p12.png', '2021-12-22 05:04:43', '2021-12-22 05:04:43', 'popular'),
(14, 'LUCK CAGE', 'The FFFF Farr is a 2011 American action thriller film directed', '2014', 'uploads/1640120729t1.png', '2021-12-22 05:05:29', '2021-12-22 05:05:29', 'trending'),
(15, 'THE RANCH', 'The FFFF Farr is a 2011 American action thriller film directed', '2010', 'uploads/1640120787t2.png', '2021-12-22 05:06:27', '2021-12-22 05:06:27', 'trending'),
(16, 'STEP UP 2', 'The FFFF Farr is a 2011 American action thriller film directed', '2013', 'uploads/1640120829t3.png', '2021-12-22 05:07:09', '2021-12-22 05:07:09', 'trending'),
(17, 'CLUB', 'The FFFF Farr is a 2011 American action thriller film directed', '1997', 'uploads/1640120883t4.png', '2021-12-22 05:08:03', '2021-12-22 05:08:03', 'trending'),
(18, 'THE KISSING BOOTH', 'The FFFF Farr is a 2011 American action thriller film directed', '1998', 'uploads/1640120918t5.png', '2021-12-22 05:08:38', '2021-12-22 05:08:38', 'trending'),
(19, 'NIGHT SHIFT', 'The FFFF Farr is a 2011 American action thriller film directed', '2014', 'uploads/1640120952t6.png', '2021-12-22 05:09:12', '2021-12-22 05:09:12', 'trending'),
(20, 'QUEER EYE', 'The FFFF Farr is a 2011 American action thriller film directed', '1995', 'uploads/1640121040tv10.png', '2021-12-22 05:10:40', '2021-12-22 05:10:40', 'trending'),
(21, 'COOKING', 'The FFFF Farr is a 2011 American action thriller film directed', '2011', 'uploads/1640121092tv9.png', '2021-12-22 05:11:32', '2021-12-22 05:11:32', 'trending'),
(22, 'NEW GIRL', 'The FFFF Farr is a 2011 American action thriller film directed', '1993', 'uploads/1640121149tv5.png', '2021-12-22 05:12:29', '2021-12-22 05:12:29', 'trending'),
(23, 'FIVE HAWAI O', 'The FFFF Farr is a 2011 American action thriller film directed', '1997', 'uploads/1640121184tv1.png', '2021-12-22 05:13:04', '2021-12-22 05:13:04', 'trending'),
(24, 'NATIONAL TREASURE', 'The FFFF Farr is a 2011 American action thriller film directed', '1997', 'uploads/1640121265b4.png', '2021-12-22 05:14:25', '2021-12-22 05:14:25', 'trending'),
(25, 'AGENTS SHIELD', 'The FFFF Farr is a 2011 American action thriller film directed', '1997', 'uploads/1640121417tv7.png', '2021-12-22 05:16:57', '2021-12-22 05:16:57', 'tv show'),
(26, 'marlon', 'The FFFF Farr is a 2011 American action thriller film directed', '2015', 'uploads/1640121478tv8.png', '2021-12-22 05:17:58', '2021-12-22 05:17:58', 'tv show'),
(27, 'shooter', 'The FFFF Farr is a 2011 American action thriller film directed', '1997', 'uploads/1640121529tv11.png', '2021-12-22 05:18:49', '2021-12-22 05:18:49', 'tv show'),
(28, 'jessica jones', 'The FFFF Farr is a 2011 American action thriller film directed', '2013', 'uploads/1640121581tv12.png', '2021-12-22 05:19:41', '2021-12-22 05:19:41', 'tv show'),
(29, 'JESSICA JONES', 'The FFFF Farr is a 2011 American action thriller film directed', '1997', 'uploads/1640121744tv12.png', '2021-12-22 05:22:24', '2021-12-22 05:22:24', 'tv show'),
(30, 'FLASH', 'The FFFF Farr is a 2011 American action thriller film directed', '2015', 'uploads/1640122347tv3.png', '2021-12-22 05:32:27', '2021-12-22 05:32:27', 'tv show'),
(31, 'BAD BOYS', 'The FFFF Farr is a 2011 American action thriller film directed', '1995', 'uploads/1640122568b5.png', '2021-12-22 05:36:08', '2021-12-22 05:36:08', 'action'),
(32, 'BRIGHT', 'The FFFF Farr is a 2011 American action thriller film directed', '1998', 'uploads/1640122597b6.png', '2021-12-22 05:36:37', '2021-12-22 05:36:37', 'action'),
(33, 'LEGENDS', 'The FFFF Farr is a 2011 American action thriller film directed', '1995', 'uploads/1640122639tv6.png', '2021-12-22 05:37:19', '2021-12-22 05:37:19', 'action'),
(34, 'WANTED', 'The FFFF Farr is a 2011 American action thriller film directed', '2015', 'uploads/1640122663b1.png', '2021-12-22 05:37:43', '2021-12-22 05:37:43', 'action'),
(35, 'THE BOURNIE', 'The FFFF Farr is a 2011 American action thriller film directed', '1995', 'uploads/1640122696b2.png', '2021-12-22 05:38:16', '2021-12-22 05:38:16', 'action'),
(36, 'GUARDIANS', 'The FFFF Farr is a 2011 American action thriller film directed', '1991', 'uploads/1640122742b3.png', '2021-12-22 05:39:02', '2021-12-22 05:39:02', 'action'),
(37, 'QUEER EYE', 'The FFFF Farr is a 2011 American action thriller film directed', '2014', 'uploads/1640122776tv10.png', '2021-12-22 05:39:36', '2021-12-22 05:39:36', 'action'),
(38, 'NATIONAL TREASURE', 'The FFFF Farr is a 2011 American action thriller film directed', '2013', 'uploads/1640122807b4.png', '2021-12-22 05:40:07', '2021-12-22 05:40:07', 'action'),
(39, 'LUCK CAGE', 'The FFFF Farr is a 2011 American action thriller film directed', '1998', 'uploads/1640122848tv2.png', '2021-12-22 05:40:48', '2021-12-22 05:40:48', 'action'),
(40, 'MARCELLA', 'The FFFF Farr is a 2011 American action thriller film directed', '2001', 'uploads/1640122889p11.png', '2021-12-22 05:41:29', '2021-12-22 05:41:29', 'action'),
(41, 'RIVERDALI', 'The FFFF Farr is a 2011 American action thriller film directed', '1995', 'uploads/1640122923p12.png', '2021-12-22 05:42:03', '2021-12-22 05:42:03', 'action'),
(42, 'THE RANCH', 'The FFFF Farr is a 2011 American action thriller film directed', '2014', 'uploads/1640122958t2.png', '2021-12-22 05:42:38', '2021-12-22 05:42:38', 'action'),
(43, 'BRAIN ON FIRE', 'The FFFF Farr is a 2011 American action thriller film directed', '2014', 'uploads/1640123261s.png', '2021-12-22 05:47:41', '2021-12-22 05:47:41', 'original'),
(44, 'DEVELOPMENT', 'The FFFF Farr is a 2011 American action thriller film directed', '1997', 'uploads/1640123301s2.png', '2021-12-22 05:48:21', '2021-12-22 05:48:21', 'original'),
(45, 'The ROAD TRICK', 'The FFFF Farr is a 2011 American action thriller film directed', '2015', 'uploads/1640123378The road trick.png', '2021-12-22 05:49:38', '2021-12-22 05:49:38', 'original'),
(46, 'THE VIETNAM WAR', 'The FFFF Farr is a 2011 American action thriller film directed', '2014', 'uploads/1640123448p9.png', '2021-12-22 05:50:48', '2021-12-22 05:50:48', 'original'),
(47, 'LIQUID SCIENCE', 'The FFFF Farr is a 2011 American action thriller film directed', '1995', 'uploads/1640123492p6.png', '2021-12-22 05:51:32', '2021-12-22 05:51:32', 'original'),
(48, 'THE KISSING BOOTH', 'The FFFF Farr is a 2011 American action thriller film directed', '1997', 'uploads/1640123581t5.png', '2021-12-22 05:53:01', '2021-12-22 05:53:01', 'original'),
(49, 'MARLON', 'The FFFF Farr is a 2011 American action thriller film directed', '1997', 'uploads/1640254871tv8.png', '2021-12-23 18:21:11', '2021-12-23 18:21:11', 'popular');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `movies`
--
ALTER TABLE `movies`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
