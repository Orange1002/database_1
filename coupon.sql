-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-03-04 15:51:34
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `bark_bijou`
--

-- --------------------------------------------------------

--
-- 資料表結構 `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `discount_type` enum('percentage','fixed') NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `min_order_amount` decimal(10,2) DEFAULT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `code`, `discount_type`, `discount_value`, `start_date`, `end_date`, `usage_limit`, `min_order_amount`, `valid`) VALUES
(1, 'PAWFECT469', 'fixed', 115.00, '2025-01-05', '2025-03-14', 300, 2799.00, 1),
(2, 'SWEET692', 'fixed', 195.00, '2025-01-25', '2025-04-08', 500, 3000.00, 1),
(3, 'SWEET739', 'percentage', 20.00, '2025-01-03', '2025-02-19', 450, 3309.00, 1),
(4, 'PAWFECT357', 'percentage', 20.00, '2025-01-01', '2025-02-03', NULL, 4199.00, 1),
(5, 'PUPPY658', 'percentage', 10.00, '2025-01-18', '2025-02-07', 300, 3299.00, 1),
(6, 'WOOF948', 'fixed', 485.00, '2025-01-22', '2025-03-17', 250, 409.00, 1),
(7, 'CUDDLY139', 'percentage', 20.00, '2025-01-27', '2025-02-13', 250, 4700.00, 1),
(8, 'FLUFFY844', 'fixed', 240.00, '2025-01-06', '2025-03-07', NULL, 2300.00, 1),
(9, 'HAPPY789', 'fixed', 195.00, '2025-01-21', '2025-02-04', NULL, NULL, 1),
(10, 'PAWFECT925', 'fixed', 360.00, '2025-01-01', '2025-03-24', NULL, NULL, 1),
(11, 'SNUGGLE879', 'fixed', 120.00, '2025-01-01', '2025-04-01', NULL, NULL, 1),
(12, 'PUPPY907', 'percentage', 5.00, '2025-01-03', '2025-02-08', 300, 2009.00, 1),
(13, 'HAPPY769', 'percentage', 15.00, '2025-01-31', '2025-03-10', 150, NULL, 1),
(14, 'FLUFFY405', 'fixed', 385.00, '2025-01-23', '2025-02-03', 200, 4999.00, 1),
(15, 'SNUGGLE878', 'fixed', 100.00, '2025-01-12', '2025-01-30', 450, NULL, 1),
(16, 'WOOF576', 'fixed', 295.00, '2025-01-06', '2025-03-14', 100, 800.00, 1),
(17, 'PAWFECT104', 'percentage', 30.00, '2025-01-25', '2025-02-09', 400, NULL, 1),
(18, 'SNUGGLE117', 'percentage', 20.00, '2025-01-17', '2025-01-29', 300, 3800.00, 1),
(19, 'SWEET403', 'fixed', 145.00, '2025-01-20', '2025-03-30', NULL, NULL, 1),
(20, 'WOOF362', 'fixed', 210.00, '2025-01-24', '2025-02-17', 400, NULL, 1),
(21, '123', 'percentage', 1.00, '2025-02-21', '2025-03-08', 1, 888.00, 0),
(23, '1233', 'fixed', 1.00, '2025-02-15', '2025-02-21', 0, 0.00, 0),
(24, '12', 'fixed', 2.00, '2025-01-29', '2025-02-07', NULL, 0.00, 0),
(25, '111', 'fixed', 2.00, '2025-02-06', '2025-03-01', 2, 989.00, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `coupon_product`
--

CREATE TABLE `coupon_product` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `coupon_product`
--

INSERT INTO `coupon_product` (`id`, `coupon_id`, `product_id`, `course_id`, `hotel_id`) VALUES
(1, 3, 43, NULL, 3),
(2, 11, 35, NULL, 4),
(3, 13, 30, NULL, 2),
(4, 10, 7, 1, NULL),
(5, 19, 33, NULL, NULL),
(6, 5, 50, NULL, NULL),
(7, 18, 47, 4, 2),
(8, 19, 35, NULL, NULL),
(9, 10, 25, NULL, 4),
(10, 3, 5, 3, NULL),
(11, 4, 48, NULL, NULL),
(12, 8, 1, NULL, NULL),
(13, 2, 38, NULL, NULL),
(14, 11, 1, NULL, NULL),
(15, 18, 22, 2, NULL),
(16, 19, 9, 10, NULL),
(17, 11, 28, 2, NULL),
(18, 2, 15, 5, 2),
(19, 3, 43, NULL, NULL),
(20, 7, 29, 6, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `user_coupon`
--

CREATE TABLE `user_coupon` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `status` enum('unused','used','expired') NOT NULL DEFAULT 'unused',
  `received_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `used_at` timestamp NULL DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `user_coupon`
--

INSERT INTO `user_coupon` (`id`, `user_id`, `coupon_id`, `status`, `received_at`, `used_at`, `order_id`) VALUES
(1, 10, 6, 'unused', '2025-01-02 16:00:00', NULL, NULL),
(2, 5, 4, 'used', '2025-01-10 16:00:00', '2025-01-17 16:00:00', 24),
(3, 4, 1, 'used', '2025-01-06 16:00:00', '2025-01-24 16:00:00', 14),
(4, 8, 18, 'used', '2025-01-16 16:00:00', '2025-02-05 16:00:00', 87),
(5, 1, 19, 'used', '2025-01-14 16:00:00', '2025-02-12 16:00:00', 82),
(6, 6, 5, 'expired', '2025-01-08 16:00:00', NULL, NULL),
(7, 5, 15, 'unused', '2025-01-23 16:00:00', NULL, NULL),
(8, 1, 14, 'expired', '2024-12-31 16:00:00', NULL, NULL),
(9, 5, 4, 'unused', '2025-01-02 16:00:00', NULL, NULL),
(10, 9, 9, 'unused', '2025-01-12 16:00:00', NULL, NULL),
(11, 2, 17, 'expired', '2025-01-07 16:00:00', NULL, NULL),
(12, 4, 13, 'used', '2024-12-31 16:00:00', '2025-01-02 16:00:00', 21),
(13, 4, 9, 'unused', '2025-01-03 16:00:00', NULL, NULL),
(14, 9, 3, 'used', '2025-01-01 16:00:00', '2025-01-03 16:00:00', 38),
(15, 7, 9, 'used', '2025-01-05 16:00:00', '2025-01-22 16:00:00', 41),
(16, 3, 4, 'used', '2024-12-31 16:00:00', '2025-01-09 16:00:00', 68),
(17, 8, 13, 'expired', '2025-01-11 16:00:00', NULL, NULL),
(18, 7, 18, 'used', '2025-01-05 16:00:00', '2025-01-08 16:00:00', 20),
(19, 7, 19, 'used', '2025-01-14 16:00:00', '2025-01-20 16:00:00', 69),
(20, 9, 14, 'unused', '2025-01-22 16:00:00', NULL, NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- 資料表索引 `coupon_product`
--
ALTER TABLE `coupon_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- 資料表索引 `user_coupon`
--
ALTER TABLE `user_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coupon_product`
--
ALTER TABLE `coupon_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_coupon`
--
ALTER TABLE `user_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `coupon_product`
--
ALTER TABLE `coupon_product`
  ADD CONSTRAINT `coupon_product_ibfk_1` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`coupon_id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `user_coupon`
--
ALTER TABLE `user_coupon`
  ADD CONSTRAINT `user_coupon_ibfk_1` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`coupon_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
