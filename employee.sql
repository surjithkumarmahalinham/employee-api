-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2022 at 11:52 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_date_of_join` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `emp_id`, `emp_name`, `emp_gender`, `emp_email`, `emp_phone`, `emp_date_of_join`, `emp_salary`, `emp_image`, `created_at`, `updated_at`) VALUES
(1, '234234', 'surjith', 'Male', 'kumar@gmail.com', '9899898989', '2020-09-22', '40000', '1185689892.jpeg', '2022-10-05 03:17:15', '2022-10-05 03:17:15'),
(2, '213', 'surjith', 'Male', 'ms@gmail.com', '8979878787', '44002', '3000', NULL, NULL, NULL),
(3, '214', 'asdfas', 'Female', 'one@gmail.com', '98798787878', '44004', '3000', NULL, NULL, NULL);

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_10_04_131130_create_employees_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00eacc593718cc5eedb75fbd60b619e9d626c6e932da8276aff57be0a3ee618ef2c74f78d79a94fb', 4, 1, 'Token', '[]', 0, '2022-10-05 03:07:16', '2022-10-05 03:07:16', '2023-10-05 08:37:16'),
('3a138729c9eba1a635a9f09b36c8ee4d76d7a16d17d5e132eb6310313859e0dbf467c31df837d70e', 2, 1, 'Token', '[]', 0, '2022-10-05 02:55:03', '2022-10-05 02:55:03', '2023-10-05 08:25:03'),
('3bb481ee95fa6ebe3361b939b0c2bb1469fd1126cc84f08273bdc2ee232b57c85258e4653e1bba26', 4, 1, 'Token', '[]', 0, '2022-10-05 03:10:55', '2022-10-05 03:10:55', '2023-10-05 08:40:55'),
('41e9da7030d3dfa1c1353c1ba75b12946f16fa27f9865a81a4ddf488ea027d5f0757471fd20e0ee9', 2, 1, 'Token', '[]', 0, '2022-10-04 21:03:44', '2022-10-04 21:03:44', '2023-10-05 02:33:44'),
('54a7053a2f5705c7a7bebd5d786e256440c7ec14d915e9c781a91556e7c7e1aae891689b678196bb', 4, 1, 'Token', '[]', 1, '2022-10-05 03:33:46', '2022-10-05 03:33:46', '2023-10-05 09:03:46'),
('76eb96e5806c01758ead4e4746d6725f9c2f4a765eb9c3710ec7e66d1eeabc5599cf4da4cc958eab', 1, 1, 'Token', '[]', 0, '2022-10-04 06:00:14', '2022-10-04 06:00:14', '2023-10-04 11:30:14'),
('776c5695fe793e2ac4442138c7e803d9e4f21374690ffab1043ce34acc2a7cea95ff6668921751b0', 4, 1, 'Token', '[]', 0, '2022-10-05 03:12:20', '2022-10-05 03:12:20', '2023-10-05 08:42:20'),
('7c9ef64d3cb70dc27fa8fefcebad6f9ff8010721665049b14b3c4acce882948e32c3e33af48844fd', 2, 1, 'Token', '[]', 0, '2022-10-04 05:13:26', '2022-10-04 05:13:26', '2023-10-04 10:43:26'),
('8b8d392ec688cde273390f9d44e47802c0d5a5844aeb07bb52c0119a2b0109eba5b7280f91944ee8', 2, 1, 'Token', '[]', 1, '2022-10-05 02:56:19', '2022-10-05 02:56:19', '2023-10-05 08:26:19'),
('a82bab28215e3b4699cbafd4610d2091c8b1ee3db59b2837fd0a45545c1044418330d3892177ba93', 1, 1, 'Token', '[]', 0, '2022-10-04 04:39:51', '2022-10-04 04:39:51', '2023-10-04 10:09:51'),
('b3ad25c1d8780251585b3ebcc0efec08a6b4e4dbfc3113f34166c3572185e74026d9400e6c06d0ce', 3, 1, 'Token', '[]', 0, '2022-10-04 05:30:00', '2022-10-04 05:30:00', '2023-10-04 11:00:00'),
('b5c530fa4626a975ab3fe4ae9d90d0e54e7fb3eeb5b380f656a0363a9392b8435a185ab628ba07b2', 4, 1, 'Token', '[]', 1, '2022-10-05 03:12:55', '2022-10-05 03:12:55', '2023-10-05 08:42:55'),
('c055068ffcc4cc03afd978a20efd1bc21847f65e8f9310ef02768bb22d00c6e7ab8fa74bcd0578b2', 2, 1, 'Token', '[]', 1, '2022-10-04 21:15:16', '2022-10-04 21:15:16', '2023-10-05 02:45:16'),
('d57330612b3ed01d859e3482001862de36b5dfe0a4645423e1a7cfdb45870b9e0d10009b241daac3', 1, 1, 'Token', '[]', 0, '2022-10-04 07:07:16', '2022-10-04 07:07:16', '2023-10-04 12:37:16'),
('e370948ab650dc989b9cf94c5773fb876411f25aeedef0dbeee9b519512bb5974a297d53e7924480', 1, 1, 'Token', '[]', 0, '2022-10-04 05:59:36', '2022-10-04 05:59:36', '2023-10-04 11:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'CyoTlQXsTiP4i9BSSCEp49xazfEEcFI061rbaYRu', NULL, 'http://localhost', 1, 0, 0, '2022-10-04 03:17:12', '2022-10-04 03:17:12'),
(2, NULL, 'Laravel Password Grant Client', '0dECdCMIUNeaeD9Z6gReDankpsflXZm144lxs6Q2', 'users', 'http://localhost', 0, 1, 0, '2022-10-04 03:17:12', '2022-10-04 03:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-10-04 03:17:12', '2022-10-04 03:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dfsdf', 'msks@gmail.com', NULL, '$2y$10$a.j1lMR8fVsenK8Khyedju2sZCEr8MHDNVeQqrGvApSwMOoPG7c9G', '98789789977', NULL, '2022-10-04 05:59:35', '2022-10-04 05:59:35'),
(2, 'dfsdf', 'msk@gmail.com', NULL, '$2y$10$YwRNLgX5mYdDdjUtJbXA/.lnNKNkbCSzKPab8h1HqKr1BkxTBrJDm', '98789789977', NULL, '2022-10-04 21:03:41', '2022-10-04 21:03:41'),
(4, 'surjith', 'surjith@gmail.com', NULL, '$2y$10$DyhZdfJOCNLG7p5v6DKlM.cuNykPEYrIOLzX5oj8Tgk5Li3l8BMaO', '9080960025', NULL, '2022-10-05 03:07:15', '2022-10-05 03:07:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
