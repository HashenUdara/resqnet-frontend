-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: uninest-mysql-cluster-do-user-25057272-0.j.db.ondigitalocean.com:25060
-- Generation Time: Oct 14, 2025 at 08:06 AM
-- Server version: 8.0.35
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `defaultdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `token` varchar(64) NOT NULL,
  `user_id` int NOT NULL,
  `expires_at` timestamp NOT NULL,
  `used` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`token`, `user_id`, `expires_at`, `used`, `created_at`) VALUES
('037e43fd397b4689a5927e0acc4c8a6a', 2, '2025-09-04 10:20:17', 0, '2025-09-04 09:50:17'),
('0f536efff16641fb9ff2e311f529ba8f', 2, '2025-08-31 09:04:15', 0, '2025-08-31 08:34:15'),
('26b35f1cad4f40fba88711aee4e25caf', 2, '2025-09-01 10:26:48', 0, '2025-09-01 09:56:48'),
('2b8523487d34408db7326c30828d0d60', 2, '2025-09-01 10:21:47', 0, '2025-09-01 09:51:47'),
('526788e46e114b5fb8ff20ff762e07c2', 2, '2025-08-31 09:02:27', 0, '2025-08-31 08:32:27'),
('6803264186e84dadb2a8542155c1bf21', 2, '2025-09-01 10:20:38', 0, '2025-09-01 09:50:38'),
('70adfae5df1e4c568926099d99ad1319', 2, '2025-09-01 10:33:11', 0, '2025-09-01 10:03:11'),
('77a402ee96674d61a5272cf15e3e36dc', 2, '2025-09-01 10:12:15', 0, '2025-09-01 09:42:15'),
('79e5d9b42df94f728a65ad5e6f5a2c4c', 2, '2025-10-13 04:26:38', 1, '2025-10-13 03:56:38'),
('8a94cfc5ad224c8ea60e46934eb35c16', 2, '2025-10-11 10:28:56', 1, '2025-10-11 09:58:56'),
('921a060a96d740b389b2f1376ebb3f70', 2, '2025-09-01 10:13:28', 0, '2025-09-01 09:43:28'),
('94ae9c9901904cff972ea0430d431802', 2, '2025-08-31 08:53:38', 0, '2025-08-31 08:23:38'),
('9686a3db3b444da0914a9d6db545c97e', 2, '2025-09-01 10:28:03', 0, '2025-09-01 09:58:03'),
('9b8276aa94d647c185ab5c25864a239f', 2, '2025-09-01 10:36:05', 0, '2025-09-01 10:06:05'),
('a1180ff475d24e619b5ba9d3810fdcb1', 2, '2025-08-31 08:05:26', 0, '2025-08-31 07:35:26'),
('aeef137d95f546aeb5d64777e00db8c7', 2, '2025-08-31 08:52:13', 0, '2025-08-31 08:22:13'),
('c758fc772eef4d7c95cd25ab1d2a32c9', 2, '2025-09-01 10:13:28', 0, '2025-09-01 09:43:28'),
('c85122341905498eb4b5bc4abf72d932', 2, '2025-08-31 07:51:01', 1, '2025-08-31 07:21:01'),
('cb562faeba944a9397fc61cdefe0284d', 2, '2025-09-01 10:15:54', 0, '2025-09-01 09:45:54'),
('d7e926f7388e4d96918e0d80657db60d', 2, '2025-09-01 10:22:37', 0, '2025-09-01 09:52:37'),
('ddc803fdd27b419b96976f6969fc92ee', 2, '2025-08-31 07:53:26', 1, '2025-08-31 07:23:26'),
('eb380586bdbd437f8aa6a2370904129c', 2, '2025-09-01 10:35:27', 0, '2025-09-01 10:05:27'),
('ede446e2b8f643538c9166a0be3a9a66', 2, '2025-09-01 10:17:56', 1, '2025-09-01 09:47:56'),
('efd9e96a14e640a193037920677f5eea', 2, '2025-09-01 10:35:44', 0, '2025-09-01 10:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'ADMIN', 'Administrator'),
(2, 'STAFF', 'Staff member'),
(3, 'MANAGER', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`) VALUES
(1, 'Alice', 'alice@example.com'),
(2, 'Bob', 'bob@example.com'),
(3, 'test test', 'hashsandbox@gmail.com'),
(4, 'test test', 'info@xleron.io');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(120) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password_hash`, `role_id`, `created_at`) VALUES
(2, 'admin@example.com', '$2a$12$GdofgMIEwEnpQSJ3wU6qGeOlVq/ZFnMAwTSKvNTRB8ew07UjTIBXW', 1, '2025-08-29 15:04:56'),
(3, 'staff1@example.com', '$2a$12$WDTAiumc5c95r/kIvFobJuGc7KzJjz78OQVj8YYZ/.c1kaNO59d9W', 2, '2025-08-29 15:04:56'),
(7, 'manager@example.com', '$2a$12$eLugNJPD85Ri.cYxNULn8.nSiBN6/zgG41R2tayK9nH9D4HcQlF7i', 3, '2025-08-29 17:10:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`token`),
  ADD KEY `idx_prt_user_expires` (`user_id`,`expires_at`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_users_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD CONSTRAINT `fk_prt_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
