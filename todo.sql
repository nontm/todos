-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 
-- サーバのバージョン： 10.4.8-MariaDB
-- PHP のバージョン: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `todo`
--
CREATE DATABASE IF NOT EXISTS `todo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `todo`;

-- --------------------------------------------------------

--
-- テーブルの構造 `folders`
--

DROP TABLE IF EXISTS `folders`;
CREATE TABLE `folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `folders`
--

INSERT INTO `folders` (`id`, `title`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'プライベート', '2020-02-21 02:59:41', '2020-02-21 02:59:41', 1),
(2, '仕事', '2020-02-21 02:59:41', '2020-02-21 02:59:41', 1),
(3, '旅行', '2020-02-21 02:59:41', '2020-02-21 02:59:41', 1),
(4, '勉強', '2020-02-21 04:29:38', '2020-02-21 04:29:38', 2),
(5, 'プログラミング', '2020-02-21 04:29:50', '2020-02-21 04:29:50', 2),
(6, '仕事', '2020-02-21 04:29:57', '2020-02-21 04:29:57', 2),
(7, 'aaaaaaaaa', '2020-02-21 04:33:27', '2020-02-21 04:33:27', 3),
(8, 'あああ', '2020-02-21 06:59:03', '2020-02-21 06:59:03', 4),
(9, 'いいい', '2020-02-21 06:59:24', '2020-02-21 06:59:24', 4),
(10, 'aaa', '2020-02-21 07:17:58', '2020-02-21 07:17:58', 4);

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_02_14_153621_create_folders_table', 1),
(4, '2020_02_19_111216_create_tasks_table', 1),
(5, '2020_02_21_114913_add_user_id_to_folders', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('aaa@test.com', '$2y$10$GiplXM6jyyd6S0UE7pU7G.jNrvmsD0Sf7Tq3B3xs9N0sjeJijLehG', '2020-02-21 06:43:30');

-- --------------------------------------------------------

--
-- テーブルの構造 `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `tasks`
--

INSERT INTO `tasks` (`id`, `folder_id`, `title`, `due_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'サンプルタスク 1', '2020-02-22', 1, '2020-02-21 02:59:55', '2020-02-21 02:59:55'),
(2, 1, 'サンプルタスク 2', '2020-02-23', 2, '2020-02-21 02:59:55', '2020-02-21 02:59:55'),
(3, 1, 'サンプルタスク 3', '2020-02-24', 3, '2020-02-21 02:59:55', '2020-02-21 02:59:55'),
(4, 5, 'Laravelをマスターする', '2020-02-21', 2, '2020-02-21 04:30:14', '2020-02-21 04:30:29'),
(5, 5, 'aaaaaaaaa', '2020-02-23', 1, '2020-02-21 04:30:50', '2020-02-21 04:30:50'),
(6, 7, 'sssss', '2020-02-22', 1, '2020-02-21 04:33:41', '2020-02-21 04:33:41'),
(7, 4, 'aaaaaaaaa', '2020-02-28', 1, '2020-02-21 06:20:26', '2020-02-21 06:20:26'),
(8, 8, 'きむらTODO', '2020-02-22', 1, '2020-02-21 06:59:20', '2020-02-21 06:59:20'),
(9, 9, 'きむらTODO', '2020-02-28', 1, '2020-02-21 06:59:35', '2020-02-21 06:59:35');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'dummy@email.com', NULL, '$2y$10$G1HUR/fgMmEQ8xgkNMWQ0O08jfcME2/xQm0CBycd6pv5npfQmVmE.', NULL, '2020-02-21 02:59:29', '2020-02-21 02:59:29'),
(2, 'aaaaa', 'aaa@test.com', NULL, '$2y$10$7rhiR095PkLPuQVz3BCLjeIkEwBQcZF14zAtY6kHLTAyGl0RSaQ7m', 'ZzNpaG9NOQV9UzEd6pPcoELRFhprT2EUNbFpOIwy25BawXWlK5ucvq36TWyB', '2020-02-21 03:33:09', '2020-02-21 06:33:34'),
(3, 'aaaaa', 'abb@test.com', NULL, '$2y$10$ew2zJ6WI2XkjX.w3mxflk.raccSSHvvBjEGMceGi4C6xWwqPy1SRK', 'EvlrXSnxdNcoeYDcLHU3zwWFliAAwBC9S0tjR7N5b9YIetRfiH9eP53SgI1o', '2020-02-21 04:31:39', '2020-02-21 06:54:14'),
(4, 'きむら', 'test@test.com', NULL, '$2y$10$RELRYANpLteTmsZP8/0kv.2KmivO7UaUK/rPZsRPe2jGWSANzh8qW', 'JGKnGHf07HtHqophpuDd2FMjqXo5JKzigheqUhOoeQB6zSbaCpNKb9pHG2fJ', '2020-02-21 06:58:57', '2020-02-21 06:58:57');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folders_user_id_foreign` (`user_id`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- テーブルのインデックス `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_folder_id_foreign` (`folder_id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルのAUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルのAUTO_INCREMENT `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- テーブルのAUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `folders`
--
ALTER TABLE `folders`
  ADD CONSTRAINT `folders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- テーブルの制約 `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
