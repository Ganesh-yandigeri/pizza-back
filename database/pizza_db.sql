-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 13, 2020 at 05:24 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizza_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `mobile`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Ganesh', '+919686123211', '36th Road 1st Floor', '2020-11-13 08:39:33', '2020-11-13 08:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2020_11_13_031040_create_products_table', 2),
(19, '2020_11_13_112833_create_clients_table', 3),
(21, '2020_11_13_113011_create_orders_table', 4);

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
('04a816ff8e12af3f65e2f96d041ce1006873fd874c29593996101ef9c97084d3847bee0f0754b49f', 1, 1, 'MyApp', '[]', 0, '2020-11-13 00:07:54', '2020-11-13 00:07:54', '2021-11-13 05:37:54'),
('14d400d70cc96b7f7b95cd0a881e6362a42f72d29e99067d9fff966b90ae2dba5eccdde7e9d69ac6', 1, 1, 'MyApp', '[]', 0, '2020-11-12 23:45:06', '2020-11-12 23:45:06', '2021-11-13 05:15:06'),
('2a05b6d84a7a61268eaad1efa41d25020eaf5eec9747d8b475c4b6f8c26690daf67def2e3b959093', 1, 1, 'MyApp', '[]', 0, '2020-11-12 23:08:57', '2020-11-12 23:08:57', '2021-11-13 04:38:57'),
('2ed924f40cad425814ce23486af77e2620bcffb87fec9b7bb8eee53d2fa8dafc20379d0901908024', 1, 1, 'MyApp', '[]', 0, '2020-11-12 22:29:59', '2020-11-12 22:29:59', '2021-11-13 03:59:59'),
('39134ceabfdbd0178d1e0f393a579adfd97a25e654ea87208ee99993f2b6176c4b506f45026c7e51', 1, 1, 'MyApp', '[]', 1, '2020-11-13 05:16:06', '2020-11-13 05:16:06', '2021-11-13 10:46:06'),
('3e55370bf3d7bd55ae24f86d189bbb61223eb3efb01a22e5b62783ecbb37b803a69efb60899a3cb0', 1, 1, 'MyApp', '[]', 1, '2020-11-13 01:15:32', '2020-11-13 01:15:32', '2021-11-13 06:45:32'),
('86289e2c277c516d281698e8c28e623aed234cbda4a6f98cc265f29accc774b92bb603f2ad34e73f', 1, 1, 'MyApp', '[]', 1, '2020-11-13 01:14:41', '2020-11-13 01:14:41', '2021-11-13 06:44:41'),
('a0b51f9e82db1f8c0fe6ed3922ae514c5e6534542f67bd28235506d7a9d81366e435f89585537f3d', 1, 1, 'MyApp', '[]', 0, '2020-11-12 23:50:27', '2020-11-12 23:50:27', '2021-11-13 05:20:27'),
('a3efaaf874bfce09960daf4dd4ab9631fd53dff54c3a02c44613416f3b9c47d9e58f4f797060684b', 1, 1, 'MyApp', '[]', 1, '2020-11-13 04:17:58', '2020-11-13 04:17:58', '2021-11-13 09:47:58'),
('a5df4dd4ebfefedf89a26708b2f2f0287673b93042eb1ecff1b5ed87221796c16056bcf43c30162f', 1, 1, 'MyApp', '[]', 1, '2020-11-13 01:01:34', '2020-11-13 01:01:34', '2021-11-13 06:31:34'),
('b1e31fb23dee75585d1b5b92d31702799bd62281854c9d2803fb7a53b05d7482eb9aa819dd22916b', 1, 1, 'MyApp', '[]', 0, '2020-11-12 23:49:41', '2020-11-12 23:49:41', '2021-11-13 05:19:41'),
('b8e9c2ca15016066b0d4ae04a962c8ed76cb9f0949add10df9148efa9c7ea4e184fc30520d679e17', 1, 1, 'MyApp', '[]', 0, '2020-11-12 23:49:11', '2020-11-12 23:49:11', '2021-11-13 05:19:11'),
('c8fb79fa5b5af70c74c089b128e33a7e03c0b3ea77abd9d87225648c058b1d632c4866bd687bf5a8', 1, 1, 'MyApp', '[]', 0, '2020-11-13 00:09:24', '2020-11-13 00:09:24', '2021-11-13 05:39:24'),
('cc5cf4759369bf2f9abe1ffd7d5d8e613143ab1c0e91f933b166af889fa88b9062068078c2e16417', 1, 1, 'MyApp', '[]', 0, '2020-11-13 00:07:10', '2020-11-13 00:07:10', '2021-11-13 05:37:10'),
('d9a65b82eee81c0648512bfdf9f3824c9c2c8cc864085a8d4767dfc33eaebddad1beccaf6b79e1b1', 1, 1, 'MyApp', '[]', 1, '2020-11-13 00:29:25', '2020-11-13 00:29:25', '2021-11-13 05:59:25'),
('da280bdf8a3d62744e5cebf3d3915087b82ae730f291cc22dbcdcb04a349c4e7e82f8d675d953d2e', 1, 1, 'MyApp', '[]', 0, '2020-11-12 23:48:12', '2020-11-12 23:48:12', '2021-11-13 05:18:12');

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
(1, NULL, 'Laravel Personal Access Client', 'Ed4XnO5NEJJW9GqT6ifwyluJhB6309GXt1RwNPrO', NULL, 'http://localhost', 1, 0, 0, '2020-11-12 21:53:54', '2020-11-12 21:53:54'),
(2, NULL, 'Laravel Password Grant Client', 'k83UtYD7ncRbhXmr2oer86TpRPkt9KKLOwrrUujV', 'users', 'http://localhost', 0, 1, 0, '2020-11-12 21:53:54', '2020-11-12 21:53:54');

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
(1, 1, '2020-11-12 21:53:54', '2020-11-12 21:53:54');

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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `product_id`, `product_name`, `product_qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'sweet pizza', '1', '230', '2020-11-13 10:53:05', '2020-11-13 10:53:05'),
(2, '1', '2', 'Cheese Pizza', '1', '260', '2020-11-13 10:53:05', '2020-11-13 10:53:05');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 5,
  `availability` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `qty`, `availability`, `created_at`, `updated_at`) VALUES
(1, 'sweet pizza', 'Its is awsome pizza for all age peoples', '230', 'uploads/pizza/1605240186.jpeg', 5, 1, '2020-11-12 22:33:06', '2020-11-12 22:33:06'),
(2, 'Cheese Pizza', 'It should be no shocker that a classic is the statistical favorite', '260', 'uploads/pizza/1605240550.png', 5, 1, '2020-11-12 22:39:10', '2020-11-12 22:39:10'),
(3, 'Veggie Pizza', 'our cheese pizza with color and texture', '160', 'uploads/pizza/1605240599.jpeg', 5, 1, '2020-11-12 22:39:59', '2020-11-12 22:39:59'),
(4, 'Pepperoni Pizza', 'our Pepperoni pizza with color and texture', '320', 'uploads/pizza/1605240631.webp', 5, 1, '2020-11-12 22:40:31', '2020-11-12 22:40:31'),
(5, 'Margherita Pizza', 'our Margherita pizza with color and texture', '420', 'uploads/pizza/1605240723.jpeg', 5, 1, '2020-11-12 22:42:03', '2020-11-12 22:42:03'),
(6, 'Hawaiian Pizza', 'our Hawaiian pizza with color and texture', '380', 'uploads/pizza/1605240756.jpeg', 5, 1, '2020-11-12 22:42:36', '2020-11-12 22:42:36'),
(7, 'Buffalo Pizza', 'Buffalo pizza with color and texture', '280', 'uploads/pizza/1605240887.jpeg', 5, 1, '2020-11-12 22:44:47', '2020-11-12 22:44:47'),
(8, 'normal Pizza', 'normal pizza with color and texture', '80', 'uploads/pizza/1605240910.jpeg', 5, 1, '2020-11-12 22:45:10', '2020-11-12 22:45:10'),
(9, 'all type of Pizza', 'all type pizza with color and texture', '900', 'uploads/pizza/1605241790.jpg', 5, 1, '2020-11-12 22:59:50', '2020-11-12 22:59:50'),
(13, 'qwer', 'sadsfdfg', '123', 'uploads/pizza/1605255720.png', 5, 1, '2020-11-13 02:52:00', '2020-11-13 02:52:00'),
(14, 'qwe', '1234', '123', 'uploads/pizza/1605255836.png', 5, 1, '2020-11-13 02:53:56', '2020-11-13 02:53:56'),
(15, 'qwe', '1234', '123', 'uploads/pizza/1605255840.png', 5, 1, '2020-11-13 02:54:00', '2020-11-13 02:54:00'),
(16, 'chota Pizza', 'var _this = thisvar _this = this', '20', 'uploads/pizza/1605263538.jpeg', 5, 1, '2020-11-13 05:02:18', '2020-11-13 05:02:18');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$U/a2gXui2i3DifA0Vk7GqePkJ991yCe5GSL.19iSPXkF.oFxhwHHa', NULL, '2020-11-12 22:29:59', '2020-11-12 22:29:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
