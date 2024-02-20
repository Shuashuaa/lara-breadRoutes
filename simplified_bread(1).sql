-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 20, 2024 at 08:06 AM
-- Server version: 8.0.28
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simplified_bread`
--

-- --------------------------------------------------------

--
-- Table structure for table `sample`
--

CREATE TABLE `sample` (
  `id` int NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_date` timestamp NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `wallet_id` int DEFAULT NULL,
  `transaction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `user_id`, `wallet_id`, `transaction`, `amount`, `type`, `img`, `created_date`, `updated_date`, `deleted_date`) VALUES
(1, 1, 2, 'cat', '2445.50', 'expense', 'https://1.bp.blogspot.com/-iCnFX7eWVjs/XR9NQutHXcI/AAAAAAAAJ9k/ISWH3UXgJF8QJdsV6P9wh3agzOwOF_aYgCLcBGAs/s1600/cat-1285634_1920.png', '2023-01-05', NULL, NULL),
(2, 2, 3, 'dog', '12000.75', 'gain', 'https://chris35wills.github.io/courses/PythonPackages_numpy/puppy.png', '2023-01-05', NULL, NULL),
(3, 2, 1, 'panda', '100.00', 'expense', 'https://t4.ftcdn.net/jpg/05/54/52/13/360_F_554521329_ngmDQSjSrUSRnbK2xK0bkcprsinG9Xdv.jpg', '2023-01-05', NULL, NULL),
(4, 2, 2, 'parrot', '3000.15', 'gain', 'https://images.saymedia-content.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:eco%2Cw_1200/MTc0MjU4Nzg3OTAzODc0NTU2/parrots-as-pets-african-grey-parrot.jpg', '2022-11-05', NULL, NULL),
(5, 2, 4, 'hamster', '2000.50', 'expense', 'https://media1.popsugar-assets.com/files/thumbor/uvHmDpoV6ORPb58Hymhd4oug9m0=/0x0:1653x1653/1660x1660/filters:format_auto():quality(85):extract_cover()/2019/10/11/900/n/1922243/baaa4ef75da0e7e8c55c92.59436337_.jpg', '2023-01-10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int NOT NULL,
  `kind` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breed` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breed_img` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `kind`, `breed`, `breed_img`) VALUES
(1, 'dog', 'pet_dog', 'https://chris35wills.github.io/courses/PythonPackages_numpy/puppy.png'),
(2, 'dog', 'guard_dog', 'https://image.pushauction.com/0/0/1e1864e5-8213-423e-a359-7bd87c407ee1/c57e31b6-a5fd-4059-bb0b-64c4703d96b4.jpg'),
(3, 'cat', 'savannah', 'http://www.quiet-corner.com/wp-content/uploads/2016/10/z-3.jpg'),
(4, 'cat', 'colorpoint Shorthair', 'https://purrfectcatbreeds.com/wp-content/uploads/2020/03/colorpoint-shorthair-cat-1024x736.jpg'),
(5, 'panda', 'regular', 'https://wallpaperaccess.com/full/678743.jpg'),
(6, 'panda', 'red_panda', 'https://www.ntd.com/assets/uploads/2020/02/Red-Panda-Framed.jpg'),
(7, 'parrot', 'african_grey', 'https://dkt6rvnu67rqj.cloudfront.net/cdn/ff/wEs4jpMg1rUg17q7Dv0dFCwlnv19TECZxSDuIl8gVa8/1574344411/public/media/1022601_2.jpeg'),
(8, 'hamster', 'syrian', 'https://media1.popsugar-assets.com/files/thumbor/uvHmDpoV6ORPb58Hymhd4oug9m0=/0x0:1653x1653/1660x1660/filters:format_auto():quality(85):extract_cover()/2019/10/11/900/n/1922243/baaa4ef75da0e7e8c55c92.59436337_.jpg'),
(9, 'hamster', 'roborovski', 'https://s-media-cache-ak0.pinimg.com/736x/de/db/f6/dedbf61a2a8c0298dbd717357c5d8e60--roborovski-hamster-baby-hamster.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@email.com', NULL, 'admin', NULL, NULL, NULL),
(2, 'josh', 'josh@email.com', NULL, 'josh', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int NOT NULL,
  `wallet_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `removed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `wallet_name`, `added_date`, `updated_date`, `removed_date`) VALUES
(1, 'Gcash', '2023-01-05 08:55:51', NULL, NULL),
(2, 'Maya', '2023-01-05 08:55:51', NULL, NULL),
(3, 'Physical wallet', '2023-01-05 08:55:51', NULL, NULL),
(4, 'Bank', '2023-01-05 08:55:51', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sample`
--
ALTER TABLE `sample`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sample`
--
ALTER TABLE `sample`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
