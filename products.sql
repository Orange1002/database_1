-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-03-04 15:48:58
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+08:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `bark_bijou`
--

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `sales` int(11) DEFAULT 0,
  `status` enum('active','inactive') DEFAULT 'active',
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `valid` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`id`, `product_name`, `vendor_id`, `category_id`, `price`, `stock`, `sales`, `status`, `description`, `created_at`, `updated_at`, `valid`) VALUES
(1, 'Organic Dog Food', 1, 1, 950.00, 200, 50, 'active', 'Premium organic dog food for all breeds.', '2025-02-24 07:14:31', '2025-02-26 06:00:23', 1),
(2, 'Grain-Free Dry Food', 1, 1, 1100.00, 150, 40, 'active', 'High-protein grain-free dog food.', '2025-02-24 07:14:31', '2025-02-25 03:59:13', 1),
(3, 'Chewy Beef Treats', 2, 2, 450.00, 250, 90, 'active', 'Delicious beef-flavored dog treats.', '2025-02-24 07:14:31', '2025-02-26 01:30:13', 1),
(4, 'Dental Care Sticks', 2, 2, 390.00, 300, 100, 'active', 'Dental chew sticks for healthy teeth.', '2025-02-24 07:14:31', '2025-02-26 01:32:25', 1),
(5, 'Chewable Bone Toy', 3, 3, 320.00, 300, 80, 'active', 'Durable chew toy for dogs.', '2025-02-24 07:14:31', '2025-02-24 07:38:27', 1),
(6, 'Interactive Puzzle Toy', 3, 3, 640.00, 120, 30, 'active', 'Puzzle toy to stimulate mental activity.', '2025-02-24 07:14:31', '2025-02-24 07:38:31', 1),
(7, 'Adjustable Dog Harness', 4, 4, 850.00, 100, 30, 'active', 'Comfortable and adjustable dog harness.', '2025-02-24 07:14:31', '2025-02-25 04:52:54', 1),
(8, 'Reflective Leash', 4, 4, 500.00, 200, 60, 'active', 'Reflective leash for night walks.', '2025-02-24 07:14:31', '2025-02-25 03:59:50', 1),
(9, 'Luxury Dog Bed', 5, 5, 2500.00, 80, 20, 'active', 'Soft and cozy dog bed.', '2025-02-24 07:14:31', '2025-02-25 02:18:12', 1),
(10, 'Orthopedic Memory Foam Bed', 5, 5, 3200.00, 50, 15, 'active', 'Supportive orthopedic dog bed.', '2025-02-24 07:14:31', '2025-02-24 07:38:59', 1),
(11, 'Anti-Flea Shampoo', 6, 6, 640.00, 150, 40, 'active', 'Anti-flea and tick dog shampoo.', '2025-02-24 07:14:31', '2025-02-24 07:39:04', 1),
(12, 'Hypoallergenic Conditioner', 6, 6, 700.00, 140, 35, 'active', 'Gentle conditioner for sensitive skin.', '2025-02-24 07:14:31', '2025-02-24 07:39:10', 1),
(13, 'Pet Car Seat', 7, 9, 1600.00, 90, 25, 'active', 'Comfortable car seat for dogs.', '2025-02-24 07:14:31', '2025-02-24 07:39:14', 1),
(14, 'Collapsible Travel Bowl', 7, 9, 320.00, 250, 120, 'active', 'Portable travel bowl for food and water.', '2025-02-24 07:14:31', '2025-03-03 06:21:19', 1),
(15, 'Ear Cleaning Solution', 3, 4, 2168.00, 313, 258, 'inactive', 'This is a high-quality Ear Cleaning Solution for your pet\'s needs.', '2024-02-29 06:06:00', '2024-03-06 15:39:00', 1),
(16, 'Organic Dog Supplement', 8, 7, 2433.00, 489, 194, 'active', 'This is a high-quality Organic Dog Supplement for your pet\'s needs.', '2024-02-03 03:23:00', '2024-02-10 23:33:00', 1),
(17, 'Paw Protection Wax', 1, 8, 3050.00, 470, 172, 'active', 'This is a high-quality Paw Protection Wax for your pet\'s needs.', '2024-02-28 03:59:00', '2024-03-04 10:41:00', 1),
(18, 'Premium Dog Kibble', 9, 2, 4534.00, 499, 128, 'active', 'This is a high-quality Premium Dog Kibble for your pet\'s needs.', '2024-02-24 00:36:00', '2024-02-29 05:32:00', 1),
(19, 'Adjustable Dog Collar', 1, 8, 4304.00, 301, 280, 'active', 'This is a high-quality Adjustable Dog Collar for your pet\'s needs.', '2024-01-21 02:01:00', '2024-01-25 10:28:00', 1),
(20, 'Self-Cleaning Slicker Brush', 1, 1, 696.00, 295, 150, 'inactive', 'This is a high-quality Self-Cleaning Slicker Brush for your pet\'s needs.', '2024-01-04 18:54:00', '2024-01-13 17:37:00', 1),
(21, 'LED Dog Leash', 10, 8, 869.00, 262, 296, 'inactive', 'This is a high-quality LED Dog Leash for your pet\'s needs.', '2024-01-21 10:45:00', '2024-01-29 01:04:00', 1),
(22, 'Durable Rope Toy', 1, 4, 907.00, 90, 200, 'active', 'This is a high-quality Durable Rope Toy for your pet\'s needs.', '2024-02-14 20:14:00', '2024-02-24 09:07:00', 1),
(23, 'Ear Cleaning Solution', 3, 5, 1664.00, 213, 200, 'active', 'This is a high-quality Ear Cleaning Solution for your pet\'s needs.', '2024-01-22 08:16:00', '2024-01-26 23:05:00', 1),
(24, 'Doggy Bathrobe', 8, 8, 2922.00, 259, 53, 'inactive', 'This is a high-quality Doggy Bathrobe for your pet\'s needs.', '2024-02-12 19:17:00', '2024-02-18 02:09:00', 1),
(25, 'Dog Poop Bags', 10, 9, 738.00, 307, 23, 'active', 'This is a high-quality Dog Poop Bags for your pet\'s needs.', '2024-02-03 12:34:00', '2024-02-05 14:49:00', 1),
(26, 'Grooming Brush Set', 9, 3, 2678.00, 151, 108, 'inactive', 'This is a high-quality Grooming Brush Set for your pet\'s needs.', '2024-01-16 23:51:00', '2024-01-17 00:23:00', 1),
(27, 'Pet Travel Tent', 10, 2, 426.00, 424, 278, 'active', 'This is a high-quality Pet Travel Tent for your pet\'s needs.', '2024-01-03 06:57:00', '2024-01-12 19:16:00', 1),
(28, 'Paw Protection Wax', 4, 1, 3496.00, 298, 272, 'inactive', 'This is a high-quality Paw Protection Wax for your pet\'s needs.', '2024-01-26 04:12:00', '2024-01-31 18:55:00', 1),
(29, 'Adjustable Elevated Feeder', 4, 4, 473.00, 53, 72, 'inactive', 'This is a high-quality Adjustable Elevated Feeder for your pet\'s needs.', '2024-01-29 23:31:00', '2024-02-05 08:59:00', 1),
(30, 'Training Pee Pads', 4, 3, 2340.00, 101, 177, 'inactive', 'This is a high-quality Training Pee Pads for your pet\'s needs.', '2024-01-14 05:17:00', '2024-01-21 04:48:00', 1),
(31, 'Chewable Dog Bone', 4, 1, 2875.00, 26, 153, 'inactive', 'This is a high-quality Chewable Dog Bone for your pet\'s needs.', '2024-01-22 23:12:00', '2024-01-23 15:53:00', 1),
(32, 'Organic Dog Supplement', 4, 1, 633.00, 162, 35, 'inactive', 'This is a high-quality Organic Dog Supplement for your pet\'s needs.', '2024-02-16 05:45:00', '2024-02-19 16:27:00', 1),
(33, 'Portable Dog Water Bottle', 2, 9, 2584.00, 18, 194, 'inactive', 'This is a high-quality Portable Dog Water Bottle for your pet\'s needs.', '2024-01-12 13:01:00', '2024-01-13 00:56:00', 1),
(34, 'Grooming Brush Set', 5, 3, 4639.00, 222, 53, 'active', 'This is a high-quality Grooming Brush Set for your pet\'s needs.', '2024-01-13 15:23:00', '2024-01-24 05:44:00', 1),
(35, 'Dog Training Clicker', 9, 7, 1506.00, 380, 243, 'inactive', 'This is a high-quality Dog Training Clicker for your pet\'s needs.', '2024-02-18 16:16:00', '2024-02-27 11:35:00', 1),
(36, 'Dog Poop Bags', 1, 7, 2374.00, 101, 258, 'active', 'This is a high-quality Dog Poop Bags for your pet\'s needs.', '2024-02-28 10:46:00', '2024-03-08 20:23:00', 1),
(37, 'Hypoallergenic Dog Food', 3, 9, 3236.00, 394, 69, 'inactive', 'This is a high-quality Hypoallergenic Dog Food for your pet\'s needs.', '2024-01-23 17:07:00', '2024-01-27 12:47:00', 1),
(38, 'Car Seat Cover for Dogs', 10, 9, 4974.00, 351, 116, 'inactive', 'This is a high-quality Car Seat Cover for Dogs for your pet\'s needs.', '2024-02-01 15:53:00', '2024-02-12 11:55:00', 1),
(39, 'Paw Protection Wax', 3, 5, 2525.00, 47, 170, 'inactive', 'This is a high-quality Paw Protection Wax for your pet\'s needs.', '2024-02-28 13:16:00', '2024-03-08 05:47:00', 1),
(40, 'Adjustable Elevated Feeder', 4, 4, 4346.00, 338, 293, 'active', 'This is a high-quality Adjustable Elevated Feeder for your pet\'s needs.', '2024-02-21 00:41:00', '2024-02-29 07:19:00', 1),
(41, 'Adjustable Dog Collar', 3, 2, 3288.00, 172, 232, 'active', 'This is a high-quality Adjustable Dog Collar for your pet\'s needs.', '2024-01-25 06:22:00', '2024-02-04 01:07:00', 1),
(42, 'Luxury Dog Bed', 7, 6, 186.00, 156, 276, 'inactive', 'This is a high-quality Luxury Dog Bed for your pet\'s needs.', '2024-02-24 11:16:00', '2024-03-01 11:30:00', 1),
(43, 'Cooling Mat for Dogs', 6, 9, 1952.00, 201, 164, 'inactive', 'This is a high-quality Cooling Mat for Dogs for your pet\'s needs.', '2024-02-04 22:31:00', '2024-02-14 11:26:00', 1),
(44, 'Interactive Puzzle Toy', 3, 2, 1625.00, 266, 227, 'active', 'This is a high-quality Interactive Puzzle Toy for your pet\'s needs.', '2024-01-28 03:16:00', '2024-01-29 04:12:00', 1),
(45, 'Calming Dog Bed', 1, 1, 2038.00, 169, 91, 'inactive', 'This is a high-quality Calming Dog Bed for your pet\'s needs.', '2024-02-28 22:00:00', '2024-03-03 22:57:00', 1),
(46, 'Healthy Skin Shampoo', 7, 7, 2990.00, 128, 65, 'inactive', 'This is a high-quality Healthy Skin Shampoo for your pet\'s needs.', '2024-01-02 05:12:00', '2024-01-13 04:29:00', 1),
(47, 'Organic Dog Biscuits', 10, 1, 2340.00, 313, 189, 'active', 'This is a high-quality Organic Dog Biscuits for your pet\'s needs.', '2024-01-23 13:16:00', '2024-01-25 16:27:00', 1),
(48, 'Dog Nail Clipper', 5, 4, 1733.00, 21, 274, 'inactive', 'This is a high-quality Dog Nail Clipper for your pet\'s needs.', '2024-01-07 05:30:00', '2024-01-09 05:44:00', 1),
(49, 'Organic Dog Supplement', 1, 6, 4907.00, 47, 137, 'inactive', 'This is a high-quality Organic Dog Supplement for your pet\'s needs.', '2024-01-12 06:58:00', '2024-01-20 11:44:00', 1),
(50, 'Pet ID Tag', 4, 7, 690.00, 22, 66, 'inactive', 'This is a high-quality Pet ID Tag for your pet\'s needs.', '2024-02-08 15:34:00', '2024-02-12 17:27:00', 1),
(51, 'Adjustable Elevated Feeder', 4, 4, 229.00, 26, 196, 'inactive', 'This is a high-quality Adjustable Elevated Feeder for your pet\'s needs.', '2024-01-31 22:12:00', '2024-02-06 20:23:00', 1),
(52, 'Dental Chew Stick', 9, 9, 3948.00, 448, 142, 'inactive', 'This is a high-quality Dental Chew Stick for your pet\'s needs.', '2024-02-25 16:01:00', '2024-03-03 01:09:00', 1),
(53, 'Portable Dog Water Bottle', 9, 9, 2349.00, 465, 206, 'inactive', 'This is a high-quality Portable Dog Water Bottle for your pet\'s needs.', '2024-02-09 09:05:00', '2024-02-13 00:02:00', 1),
(54, 'Chewable Dog Bone', 9, 3, 2557.00, 150, 77, 'inactive', 'This is a high-quality Chewable Dog Bone for your pet\'s needs.', '2024-02-12 20:30:00', '2024-02-22 15:34:00', 1),
(55, 'Luxury Dog Bed', 8, 3, 3539.00, 185, 250, 'active', 'This is a high-quality Luxury Dog Bed for your pet\'s needs.', '2024-02-29 11:48:00', '2024-03-05 15:05:00', 1),
(56, 'Adjustable Dog Collar', 6, 7, 4636.00, 247, 88, 'active', 'This is a high-quality Adjustable Dog Collar for your pet\'s needs.', '2024-02-24 23:55:00', '2024-02-27 19:02:00', 1),
(57, 'Paw Protection Wax', 8, 8, 877.00, 216, 112, 'inactive', 'This is a high-quality Paw Protection Wax for your pet\'s needs.', '2024-01-17 02:46:00', '2024-01-17 14:19:00', 1),
(58, 'Durable Rope Toy', 3, 7, 1846.00, 200, 140, 'inactive', 'This is a high-quality Durable Rope Toy for your pet\'s needs.', '2024-01-04 11:22:00', '2024-01-10 01:49:00', 1),
(59, 'Portable Dog Water Bottle', 6, 6, 2324.00, 195, 259, 'inactive', 'This is a high-quality Portable Dog Water Bottle for your pet\'s needs.', '2024-01-15 12:07:00', '2024-01-20 14:47:00', 1),
(60, 'Antibacterial Paw Wipes', 3, 1, 3954.00, 96, 16, 'inactive', 'This is a high-quality Antibacterial Paw Wipes for your pet\'s needs.', '2024-02-07 15:17:00', '2024-02-07 20:35:00', 1),
(61, 'Dog Nail Clipper', 3, 6, 1606.00, 185, 19, 'inactive', 'This is a high-quality Dog Nail Clipper for your pet\'s needs.', '2024-01-30 20:37:00', '2024-02-10 09:37:00', 1),
(62, 'Healthy Skin Shampoo', 4, 5, 4614.00, 435, 143, 'active', 'This is a high-quality Healthy Skin Shampoo for your pet\'s needs.', '2024-01-03 19:50:00', '2024-01-14 14:27:00', 1),
(63, 'Adjustable Elevated Feeder', 6, 8, 1395.00, 89, 89, 'active', 'This is a high-quality Adjustable Elevated Feeder for your pet\'s needs.', '2024-02-23 03:46:00', '2024-03-02 23:31:00', 1),
(64, 'Doggy Bathrobe', 6, 7, 1923.00, 20, 193, 'inactive', 'This is a high-quality Doggy Bathrobe for your pet\'s needs.', '2024-02-27 02:15:00', '2024-03-07 12:15:00', 1),
(65, 'Freeze-Dried Chicken Treats', 8, 9, 1553.00, 276, 20, 'active', 'This is a high-quality Freeze-Dried Chicken Treats for your pet\'s needs.', '2024-02-22 15:14:00', '2024-03-03 16:52:00', 1),
(66, 'Dental Chew Stick', 2, 5, 4292.00, 65, 42, 'inactive', 'This is a high-quality Dental Chew Stick for your pet\'s needs.', '2024-01-02 01:35:00', '2024-01-05 00:03:00', 1),
(67, 'Pet Travel Tent', 4, 1, 875.00, 4, 104, 'active', 'This is a high-quality Pet Travel Tent for your pet\'s needs.', '2024-01-12 06:30:00', '2024-01-20 19:26:00', 1),
(68, 'Grooming Brush Set', 4, 2, 3366.00, 241, 120, 'active', 'This is a high-quality Grooming Brush Set for your pet\'s needs.', '2024-01-12 15:01:00', '2024-01-21 12:28:00', 1),
(69, 'Luxury Dog Bed', 5, 4, 2250.00, 189, 17, 'active', 'This is a high-quality Luxury Dog Bed for your pet\'s needs.', '2024-02-17 00:46:00', '2024-02-17 06:21:00', 1),
(70, 'Interactive Puzzle Toy', 10, 7, 4851.00, 115, 66, 'active', 'This is a high-quality Interactive Puzzle Toy for your pet\'s needs.', '2024-01-20 14:49:00', '2024-01-28 19:08:00', 1),
(71, 'Dog Birthday Cake', 7, 7, 4557.00, 409, 212, 'inactive', 'This is a high-quality Dog Birthday Cake for your pet\'s needs.', '2024-01-11 07:12:00', '2024-01-12 01:04:00', 1),
(72, 'Car Seat Cover for Dogs', 2, 1, 4805.00, 253, 293, 'inactive', 'This is a high-quality Car Seat Cover for Dogs for your pet\'s needs.', '2024-01-21 08:36:00', '2024-01-23 12:44:00', 1),
(73, 'Hypoallergenic Dog Food', 9, 6, 1146.00, 129, 226, 'inactive', 'This is a high-quality Hypoallergenic Dog Food for your pet\'s needs.', '2024-02-28 15:33:00', '2024-02-29 04:57:00', 1),
(74, 'Pet ID Tag', 9, 5, 4703.00, 295, 211, 'active', 'This is a high-quality Pet ID Tag for your pet\'s needs.', '2024-02-23 06:11:00', '2024-03-01 02:07:00', 1),
(75, 'Pet Carrier Backpack', 3, 7, 2415.00, 2, 143, 'inactive', 'This is a high-quality Pet Carrier Backpack for your pet\'s needs.', '2024-01-27 15:00:00', '2024-02-06 12:24:00', 1),
(76, 'Organic Dog Supplement', 8, 6, 839.00, 190, 175, 'inactive', 'This is a high-quality Organic Dog Supplement for your pet\'s needs.', '2024-02-25 14:08:00', '2024-03-04 04:56:00', 1),
(77, 'Self-Cleaning Slicker Brush', 4, 2, 2285.00, 235, 250, 'inactive', 'This is a high-quality Self-Cleaning Slicker Brush for your pet\'s needs.', '2024-02-14 17:17:00', '2024-02-17 12:48:00', 1),
(78, 'Training Pee Pads', 10, 9, 1965.00, 252, 185, 'inactive', 'This is a high-quality Training Pee Pads for your pet\'s needs.', '2024-01-09 08:09:00', '2024-01-17 16:09:00', 1),
(79, 'Waterproof Dog Jacket', 3, 1, 2653.00, 381, 269, 'active', 'This is a high-quality Waterproof Dog Jacket for your pet\'s needs.', '2024-01-28 16:33:00', '2024-01-28 19:22:00', 1),
(80, 'Organic Dog Biscuits', 6, 8, 4357.00, 396, 228, 'inactive', 'This is a high-quality Organic Dog Biscuits for your pet\'s needs.', '2024-01-14 22:59:00', '2024-01-16 20:01:00', 1),
(81, 'Doggy Bathrobe', 3, 9, 1195.00, 47, 146, 'active', 'This is a high-quality Doggy Bathrobe for your pet\'s needs.', '2024-02-25 03:07:00', '2024-03-02 01:33:00', 1),
(82, 'Calming Dog Bed', 6, 7, 1832.00, 52, 40, 'active', 'This is a high-quality Calming Dog Bed for your pet\'s needs.', '2024-01-04 22:23:00', '2024-01-14 03:21:00', 1),
(83, 'Freeze-Dried Chicken Treats', 7, 9, 3210.00, 89, 5, 'active', 'This is a high-quality Freeze-Dried Chicken Treats for your pet\'s needs.', '2024-01-17 04:45:00', '2024-01-24 02:04:00', 1),
(84, 'Organic Dog Biscuits', 10, 1, 3398.00, 53, 261, 'inactive', 'This is a high-quality Organic Dog Biscuits for your pet\'s needs.', '2024-01-18 04:10:00', '2024-01-23 10:15:00', 1),
(85, 'Hypoallergenic Dog Food', 1, 5, 4426.00, 70, 4, 'inactive', 'This is a high-quality Hypoallergenic Dog Food for your pet\'s needs.', '2024-01-06 22:08:00', '2024-01-15 04:24:00', 1),
(86, 'Paw Protection Wax', 6, 6, 823.00, 59, 149, 'active', 'This is a high-quality Paw Protection Wax for your pet\'s needs.', '2024-02-10 08:12:00', '2024-02-17 10:39:00', 1),
(87, 'LED Dog Leash', 8, 8, 853.00, 441, 86, 'inactive', 'This is a high-quality LED Dog Leash for your pet\'s needs.', '2024-01-31 22:33:00', '2024-02-02 03:13:00', 1),
(88, 'Dog Poop Bags', 9, 8, 1512.00, 184, 23, 'inactive', 'This is a high-quality Dog Poop Bags for your pet\'s needs.', '2024-01-22 20:27:00', '2024-01-24 20:47:00', 1),
(89, 'Dog Poop Bags', 2, 4, 4323.00, 9, 2, 'active', 'This is a high-quality Dog Poop Bags for your pet\'s needs.', '2024-02-11 21:06:00', '2024-02-20 14:27:00', 1),
(90, 'Interactive Puzzle Toy', 1, 1, 436.00, 383, 109, 'inactive', 'This is a high-quality Interactive Puzzle Toy for your pet\'s needs.', '2024-02-21 06:57:00', '2024-02-27 19:36:00', 1),
(91, 'Paw Protection Wax', 9, 9, 658.00, 126, 294, 'active', 'This is a high-quality Paw Protection Wax for your pet\'s needs.', '2024-01-31 23:13:00', '2024-02-03 02:08:00', 1),
(92, 'Grooming Brush Set', 3, 8, 2291.00, 4, 80, 'inactive', 'This is a high-quality Grooming Brush Set for your pet\'s needs.', '2024-02-22 07:20:00', '2024-02-29 06:11:00', 1),
(93, 'Paw Protection Wax', 8, 5, 4788.00, 274, 49, 'active', 'This is a high-quality Paw Protection Wax for your pet\'s needs.', '2024-01-21 21:00:00', '2024-01-26 08:52:00', 1),
(94, 'Protein-Rich Wet Food', 7, 8, 3129.00, 287, 145, 'active', 'This is a high-quality Protein-Rich Wet Food for your pet\'s needs.', '2024-02-29 14:47:00', '2024-03-11 09:09:00', 1),
(95, 'Dog Training Clicker', 3, 4, 4044.00, 336, 15, 'inactive', 'This is a high-quality Dog Training Clicker for your pet\'s needs.', '2024-01-21 11:09:00', '2024-01-31 02:33:00', 1),
(96, 'Antibacterial Paw Wipes', 4, 5, 4351.00, 379, 66, 'inactive', 'This is a high-quality Antibacterial Paw Wipes for your pet\'s needs.', '2024-02-17 22:18:00', '2024-02-22 20:35:00', 1),
(97, 'Lick Mat for Anxiety', 10, 4, 2165.00, 160, 91, 'active', 'This is a high-quality Lick Mat for Anxiety for your pet\'s needs.', '2024-02-27 11:22:00', '2024-02-29 14:00:00', 1),
(98, 'Hypoallergenic Dog Food', 10, 4, 3490.00, 238, 47, 'active', 'This is a high-quality Hypoallergenic Dog Food for your pet\'s needs.', '2024-01-31 18:07:00', '2024-02-07 07:34:00', 1),
(99, 'Freeze-Dried Chicken Treats', 4, 7, 928.00, 164, 9, 'active', 'This is a high-quality Freeze-Dried Chicken Treats for your pet\'s needs.', '2024-02-08 02:47:00', '2024-02-14 09:36:00', 1),
(100, 'Healthy Skin Shampoo', 7, 6, 1874.00, 122, 71, 'active', 'This is a high-quality Healthy Skin Shampoo for your pet\'s needs.', '2024-02-16 08:16:00', '2024-02-18 01:38:00', 1),
(101, 'Organic Dog Supplement', 2, 5, 784.00, 68, 104, 'inactive', 'This is a high-quality Organic Dog Supplement for your pet\'s needs.', '2024-02-28 21:57:00', '2024-02-28 22:29:00', 1),
(102, 'Soft Plush Toy', 5, 7, 2205.00, 454, 272, 'inactive', 'This is a high-quality Soft Plush Toy for your pet\'s needs.', '2024-01-14 03:51:00', '2024-01-23 10:17:00', 1),
(103, 'Adjustable Elevated Feeder', 4, 3, 718.00, 439, 137, 'active', 'This is a high-quality Adjustable Elevated Feeder for your pet\'s needs.', '2024-01-24 10:57:00', '2024-01-27 13:50:00', 1),
(104, 'Dental Chew Stick', 10, 9, 2554.00, 185, 220, 'active', 'This is a high-quality Dental Chew Stick for your pet\'s needs.', '2024-01-03 18:42:00', '2024-01-08 07:33:00', 1),
(105, 'Adjustable Dog Collar', 3, 5, 580.00, 401, 80, 'inactive', 'This is a high-quality Adjustable Dog Collar for your pet\'s needs.', '2024-01-21 23:59:00', '2024-01-31 18:48:00', 1),
(106, 'Stainless Steel Feeding Bowl', 6, 4, 3720.00, 457, 274, 'active', 'This is a high-quality Stainless Steel Feeding Bowl for your pet\'s needs.', '2024-01-02 05:20:00', '2024-01-06 10:39:00', 1),
(107, 'Training Pee Pads', 7, 4, 505.00, 241, 1, 'active', 'This is a high-quality Training Pee Pads for your pet\'s needs.', '2024-02-07 10:57:00', '2024-02-18 04:41:00', 1),
(108, 'Freeze-Dried Chicken Treats', 4, 2, 1463.00, 166, 114, 'active', 'This is a high-quality Freeze-Dried Chicken Treats for your pet\'s needs.', '2024-01-20 10:39:00', '2024-01-22 08:43:00', 1),
(109, 'Protein-Rich Wet Food', 3, 7, 2740.00, 493, 177, 'active', 'This is a high-quality Protein-Rich Wet Food for your pet\'s needs.', '2024-02-22 07:45:00', '2024-02-27 03:49:00', 1),
(110, 'Dental Chew Stick', 1, 7, 3782.00, 253, 212, 'active', 'This is a high-quality Dental Chew Stick for your pet\'s needs.', '2024-01-17 20:19:00', '2024-01-25 06:34:00', 1),
(111, 'Portable Dog Water Bottle', 5, 7, 3647.00, 15, 245, 'active', 'This is a high-quality Portable Dog Water Bottle for your pet\'s needs.', '2024-01-31 11:56:00', '2024-01-31 18:05:00', 1),
(112, 'Chewable Dog Bone', 1, 5, 1606.00, 258, 156, 'inactive', 'This is a high-quality Chewable Dog Bone for your pet\'s needs.', '2024-02-28 05:30:00', '2024-03-05 23:39:00', 1),
(113, 'Luxury Dog Bed', 8, 7, 4578.00, 351, 215, 'inactive', 'This is a high-quality Luxury Dog Bed for your pet\'s needs.', '2024-01-26 02:06:00', '2024-02-01 16:50:00', 1),
(114, 'Paw Protection Wax', 5, 8, 1384.00, 226, 84, 'active', 'This is a high-quality Paw Protection Wax for your pet\'s needs.', '2024-02-25 20:27:00', '2024-03-06 05:29:00', 1),
(115, 'Freeze-Dried Chicken Treats', 9, 5, 657.00, 189, 253, 'active', 'This is a high-quality Freeze-Dried Chicken Treats for your pet\'s needs.', '2024-01-15 05:37:00', '2024-01-18 12:29:00', 1),
(116, 'Ear Cleaning Solution', 8, 5, 2852.00, 318, 58, 'active', 'This is a high-quality Ear Cleaning Solution for your pet\'s needs.', '2024-02-08 23:53:00', '2024-02-13 15:27:00', 1),
(117, 'Luxury Dog Bed', 1, 4, 4414.00, 442, 240, 'active', 'This is a high-quality Luxury Dog Bed for your pet\'s needs.', '2024-02-05 08:05:00', '2024-02-14 10:27:00', 1),
(118, 'Cooling Mat for Dogs', 2, 2, 742.00, 62, 173, 'inactive', 'This is a high-quality Cooling Mat for Dogs for your pet\'s needs.', '2024-02-20 15:00:00', '2024-02-22 14:22:00', 1),
(119, 'Antibacterial Paw Wipes', 1, 7, 462.00, 496, 253, 'active', 'This is a high-quality Antibacterial Paw Wipes for your pet\'s needs.', '2024-02-17 16:07:00', '2024-02-24 18:02:00', 1),
(120, 'Luxury Dog Bed', 5, 5, 1461.00, 472, 204, 'inactive', 'This is a high-quality Luxury Dog Bed for your pet\'s needs.', '2024-02-04 06:47:00', '2024-02-10 10:14:00', 1),
(121, 'Pet ID Tag', 6, 5, 4440.00, 438, 262, 'active', 'This is a high-quality Pet ID Tag for your pet\'s needs.', '2024-01-28 15:47:00', '2024-02-02 10:44:00', 1),
(122, 'Pet Travel Tent', 2, 8, 2712.00, 439, 121, 'inactive', 'This is a high-quality Pet Travel Tent for your pet\'s needs.', '2024-01-25 22:45:00', '2024-02-02 07:41:00', 1),
(123, 'Cooling Mat for Dogs', 5, 2, 4239.00, 200, 180, 'inactive', 'This is a high-quality Cooling Mat for Dogs for your pet\'s needs.', '2024-01-20 00:48:00', '2024-01-23 22:56:00', 1),
(124, 'Grooming Brush Set', 7, 6, 4534.00, 253, 8, 'active', 'This is a high-quality Grooming Brush Set for your pet\'s needs.', '2024-01-16 12:48:00', '2024-01-25 21:14:00', 1),
(125, 'Dog Nail Clipper', 10, 1, 232.00, 494, 200, 'inactive', 'This is a high-quality Dog Nail Clipper for your pet\'s needs.', '2024-01-02 15:28:00', '2024-01-03 04:04:00', 1),
(126, 'Pet Travel Tent', 9, 5, 528.00, 468, 131, 'inactive', 'This is a high-quality Pet Travel Tent for your pet\'s needs.', '2024-02-10 12:36:00', '2024-02-13 02:54:00', 1),
(127, 'Premium Dog Kibble', 8, 5, 3807.00, 109, 9, 'active', 'This is a high-quality Premium Dog Kibble for your pet\'s needs.', '2024-01-19 07:47:00', '2024-01-22 18:48:00', 1),
(128, 'Adjustable Dog Collar', 1, 4, 2655.00, 269, 247, 'active', 'This is a high-quality Adjustable Dog Collar for your pet\'s needs.', '2024-02-15 13:56:00', '2024-02-25 08:30:00', 1),
(129, 'Self-Cleaning Slicker Brush', 10, 3, 3226.00, 453, 106, 'inactive', 'This is a high-quality Self-Cleaning Slicker Brush for your pet\'s needs.', '2024-02-10 02:04:00', '2024-02-15 01:46:00', 1),
(130, 'Pet ID Tag', 5, 3, 1178.00, 267, 144, 'active', 'This is a high-quality Pet ID Tag for your pet\'s needs.', '2024-02-24 01:38:00', '2024-03-05 23:24:00', 1),
(131, 'Pet Carrier Backpack', 10, 1, 1313.00, 93, 228, 'active', 'This is a high-quality Pet Carrier Backpack for your pet\'s needs.', '2024-01-24 16:40:00', '2024-02-01 15:27:00', 1),
(132, 'Freeze-Dried Chicken Treats', 1, 2, 2642.00, 390, 6, 'inactive', 'This is a high-quality Freeze-Dried Chicken Treats for your pet\'s needs.', '2024-01-13 21:34:00', '2024-01-18 02:50:00', 1),
(133, 'Protein-Rich Wet Food', 7, 1, 2758.00, 224, 202, 'active', 'This is a high-quality Protein-Rich Wet Food for your pet\'s needs.', '2024-01-06 06:42:00', '2024-01-10 12:44:00', 1),
(134, 'Padded Dog Harness', 6, 6, 3257.00, 68, 134, 'inactive', 'This is a high-quality Padded Dog Harness for your pet\'s needs.', '2024-01-05 19:32:00', '2024-01-06 02:52:00', 1),
(135, 'Dog Birthday Cake', 7, 6, 3820.00, 264, 135, 'active', 'This is a high-quality Dog Birthday Cake for your pet\'s needs.', '2024-01-12 12:18:00', '2024-01-21 14:05:00', 1),
(136, 'Organic Dog Biscuits', 1, 3, 331.00, 226, 121, 'active', 'This is a high-quality Organic Dog Biscuits for your pet\'s needs.', '2024-02-24 23:44:00', '2024-03-06 13:12:00', 1),
(137, 'Grooming Brush Set', 5, 5, 2341.00, 292, 203, 'active', 'This is a high-quality Grooming Brush Set for your pet\'s needs.', '2024-01-23 01:58:00', '2024-02-01 16:00:00', 1),
(138, 'Soft Plush Toy', 2, 9, 1421.00, 243, 101, 'active', 'This is a high-quality Soft Plush Toy for your pet\'s needs.', '2024-02-11 04:36:00', '2024-02-21 00:56:00', 1),
(139, 'Squeaky Rubber Ball', 3, 9, 3482.00, 240, 97, 'active', 'This is a high-quality Squeaky Rubber Ball for your pet\'s needs.', '2024-03-01 00:10:00', '2024-03-04 16:03:00', 1),
(140, 'Pet Carrier Backpack', 7, 8, 1273.00, 481, 22, 'active', 'This is a high-quality Pet Carrier Backpack for your pet\'s needs.', '2024-01-21 17:57:00', '2024-01-29 23:01:00', 1),
(141, 'Pet ID Tag', 4, 9, 566.00, 258, 97, 'active', 'This is a high-quality Pet ID Tag for your pet\'s needs.', '2024-01-03 04:25:00', '2024-01-05 13:47:00', 1),
(142, 'Soft Plush Toy', 7, 2, 3505.00, 495, 105, 'active', 'This is a high-quality Soft Plush Toy for your pet\'s needs.', '2024-01-26 22:59:00', '2024-01-27 13:08:00', 1),
(143, 'Pet Travel Tent', 10, 4, 1232.00, 202, 175, 'inactive', 'This is a high-quality Pet Travel Tent for your pet\'s needs.', '2024-01-15 08:40:00', '2024-01-22 20:51:00', 1),
(144, 'Protein-Rich Wet Food', 8, 4, 4376.00, 352, 73, 'active', 'This is a high-quality Protein-Rich Wet Food for your pet\'s needs.', '2024-02-01 03:20:00', '2024-02-09 09:47:00', 1),
(145, 'LED Dog Leash', 8, 7, 4062.00, 423, 180, 'active', 'This is a high-quality LED Dog Leash for your pet\'s needs.', '2024-01-03 11:14:00', '2024-01-12 08:07:00', 1),
(146, 'Freeze-Dried Chicken Treats', 4, 9, 2388.00, 180, 139, 'active', 'This is a high-quality Freeze-Dried Chicken Treats for your pet\'s needs.', '2024-01-30 17:41:00', '2024-02-09 13:37:00', 1),
(147, 'Pet Carrier Backpack', 6, 8, 3398.00, 253, 167, 'inactive', 'This is a high-quality Pet Carrier Backpack for your pet\'s needs.', '2024-01-04 20:32:00', '2024-01-09 20:03:00', 1),
(148, 'Dog Birthday Cake', 5, 9, 156.00, 27, 34, 'active', 'This is a high-quality Dog Birthday Cake for your pet\'s needs.', '2024-01-09 17:23:00', '2024-01-15 07:30:00', 1),
(149, 'Antibacterial Paw Wipes', 10, 7, 3757.00, 134, 242, 'active', 'This is a high-quality Antibacterial Paw Wipes for your pet\'s needs.', '2024-02-08 05:38:00', '2024-02-17 17:24:00', 1),
(150, 'Adjustable Elevated Feeder', 4, 6, 2398.00, 430, 131, 'active', 'This is a high-quality Adjustable Elevated Feeder for your pet\'s needs.', '2024-02-18 21:45:00', '2024-02-28 20:11:00', 1),
(151, 'Dog Birthday Cake', 3, 4, 1970.00, 406, 188, 'inactive', 'This is a high-quality Dog Birthday Cake for your pet\'s needs.', '2024-01-10 17:49:00', '2024-01-12 16:26:00', 1),
(152, 'Padded Dog Harness', 2, 2, 1711.00, 69, 207, 'active', 'This is a high-quality Padded Dog Harness for your pet\'s needs.', '2024-02-07 12:04:00', '2024-02-08 00:12:00', 1),
(153, 'Freeze-Dried Chicken Treats', 5, 5, 4058.00, 325, 256, 'inactive', 'This is a high-quality Freeze-Dried Chicken Treats for your pet\'s needs.', '2024-02-21 22:33:00', '2024-02-26 01:33:00', 1),
(154, 'Anti-Slip Dog Shoes', 4, 2, 935.00, 347, 134, 'inactive', 'This is a high-quality Anti-Slip Dog Shoes for your pet\'s needs.', '2024-02-10 21:26:00', '2024-02-16 19:27:00', 1),
(155, 'Organic Dog Supplement', 2, 6, 2183.00, 218, 256, 'active', 'This is a high-quality Organic Dog Supplement for your pet\'s needs.', '2024-02-18 20:21:00', '2024-02-26 23:30:00', 1),
(156, 'Pet Carrier Backpack', 1, 8, 3408.00, 487, 194, 'inactive', 'This is a high-quality Pet Carrier Backpack for your pet\'s needs.', '2024-02-12 21:27:00', '2024-02-21 23:24:00', 1),
(157, 'Portable Dog Water Bottle', 3, 4, 2654.00, 362, 79, 'active', 'This is a high-quality Portable Dog Water Bottle for your pet\'s needs.', '2024-02-25 05:34:00', '2024-03-06 08:20:00', 1),
(158, 'Paw Protection Wax', 9, 6, 4105.00, 62, 109, 'active', 'This is a high-quality Paw Protection Wax for your pet\'s needs.', '2024-01-04 00:56:00', '2024-01-05 06:56:00', 1),
(159, 'Anti-Slip Dog Shoes', 3, 1, 2054.00, 395, 293, 'active', 'This is a high-quality Anti-Slip Dog Shoes for your pet\'s needs.', '2024-01-15 19:27:00', '2024-01-22 16:04:00', 1),
(160, 'Durable Rope Toy', 9, 3, 4362.00, 226, 103, 'active', 'This is a high-quality Durable Rope Toy for your pet\'s needs.', '2024-01-26 14:04:00', '2024-02-03 18:55:00', 1),
(161, 'Car Seat Cover for Dogs', 6, 4, 4606.00, 294, 39, 'inactive', 'This is a high-quality Car Seat Cover for Dogs for your pet\'s needs.', '2024-01-13 14:11:00', '2024-01-19 19:49:00', 1),
(162, 'Waterproof Dog Jacket', 10, 2, 2886.00, 227, 209, 'inactive', 'This is a high-quality Waterproof Dog Jacket for your pet\'s needs.', '2024-01-29 12:52:00', '2024-02-07 22:29:00', 1),
(163, 'Antibacterial Paw Wipes', 1, 7, 3046.00, 350, 47, 'inactive', 'This is a high-quality Antibacterial Paw Wipes for your pet\'s needs.', '2024-02-09 09:57:00', '2024-02-12 20:09:00', 1),
(164, 'Protein-Rich Wet Food', 1, 8, 2946.00, 429, 49, 'inactive', 'This is a high-quality Protein-Rich Wet Food for your pet\'s needs.', '2024-02-04 23:18:00', '2024-02-12 01:22:00', 1),
(165, 'Anti-Slip Dog Shoes', 1, 7, 4798.00, 77, 256, 'inactive', 'This is a high-quality Anti-Slip Dog Shoes for your pet\'s needs.', '2024-01-29 19:54:00', '2024-02-06 10:35:00', 1),
(166, 'Ear Cleaning Solution', 1, 5, 2536.00, 195, 175, 'inactive', 'This is a high-quality Ear Cleaning Solution for your pet\'s needs.', '2024-02-25 14:40:00', '2024-03-03 00:12:00', 1),
(167, 'Doggy Bathrobe', 3, 5, 2554.00, 346, 34, 'inactive', 'This is a high-quality Doggy Bathrobe for your pet\'s needs.', '2024-01-16 04:00:00', '2024-01-20 01:12:00', 1),
(168, 'Pet Carrier Backpack', 6, 6, 4616.00, 325, 262, 'inactive', 'This is a high-quality Pet Carrier Backpack for your pet\'s needs.', '2024-01-19 16:23:00', '2024-01-21 05:49:00', 1),
(169, 'Doggy Bathrobe', 2, 1, 2289.00, 296, 168, 'active', 'This is a high-quality Doggy Bathrobe for your pet\'s needs.', '2024-01-17 08:28:00', '2024-01-27 21:55:00', 1),
(170, 'Pet ID Tag', 5, 2, 3718.00, 163, 258, 'active', 'This is a high-quality Pet ID Tag for your pet\'s needs.', '2024-01-09 21:41:00', '2024-01-13 12:43:00', 1),
(171, 'Dog Training Clicker', 4, 4, 4582.00, 428, 73, 'inactive', 'This is a high-quality Dog Training Clicker for your pet\'s needs.', '2024-02-08 06:47:00', '2024-02-17 09:02:00', 1),
(172, 'Pet Carrier Backpack', 6, 2, 833.00, 64, 228, 'active', 'This is a high-quality Pet Carrier Backpack for your pet\'s needs.', '2024-02-17 02:51:00', '2024-02-19 04:56:00', 1),
(173, 'Interactive Puzzle Toy', 7, 8, 4464.00, 190, 123, 'active', 'This is a high-quality Interactive Puzzle Toy for your pet\'s needs.', '2024-02-13 20:22:00', '2024-02-18 06:35:00', 1),
(174, 'Ear Cleaning Solution', 9, 5, 4026.00, 328, 170, 'inactive', 'This is a high-quality Ear Cleaning Solution for your pet\'s needs.', '2024-02-13 11:36:00', '2024-02-19 02:36:00', 1),
(175, 'Squeaky Rubber Ball', 8, 2, 1280.00, 87, 194, 'inactive', 'This is a high-quality Squeaky Rubber Ball for your pet\'s needs.', '2024-01-08 11:52:00', '2024-01-09 03:49:00', 1),
(176, 'Organic Dog Supplement', 2, 9, 1152.00, 210, 145, 'active', 'This is a high-quality Organic Dog Supplement for your pet\'s needs.', '2024-02-03 07:08:00', '2024-02-06 14:48:00', 1),
(177, 'Hypoallergenic Dog Food', 3, 8, 1159.00, 336, 242, 'active', 'This is a high-quality Hypoallergenic Dog Food for your pet\'s needs.', '2024-03-01 02:06:00', '2024-03-03 07:44:00', 1),
(178, 'Calming Dog Bed', 9, 3, 3031.00, 244, 161, 'active', 'This is a high-quality Calming Dog Bed for your pet\'s needs.', '2024-01-06 13:41:00', '2024-01-12 00:17:00', 1),
(179, 'Dog Birthday Cake', 1, 8, 1022.00, 40, 219, 'inactive', 'This is a high-quality Dog Birthday Cake for your pet\'s needs.', '2024-02-28 03:39:00', '2024-03-02 16:05:00', 1),
(180, 'Hypoallergenic Dog Food', 1, 7, 3062.00, 333, 45, 'active', 'This is a high-quality Hypoallergenic Dog Food for your pet\'s needs.', '2024-01-25 14:44:00', '2024-01-28 05:35:00', 1),
(181, 'Dental Chew Stick', 1, 5, 2404.00, 175, 300, 'active', 'This is a high-quality Dental Chew Stick for your pet\'s needs.', '2024-01-11 18:52:00', '2024-01-20 14:15:00', 1),
(182, 'Anti-Slip Dog Shoes', 7, 1, 4375.00, 248, 176, 'inactive', 'This is a high-quality Anti-Slip Dog Shoes for your pet\'s needs.', '2024-01-26 08:23:00', '2024-02-02 20:58:00', 1),
(183, 'Training Pee Pads', 10, 1, 1696.00, 43, 133, 'active', 'This is a high-quality Training Pee Pads for your pet\'s needs.', '2024-01-19 00:40:00', '2024-01-21 12:43:00', 1),
(184, 'Waterproof Dog Jacket', 2, 7, 1401.00, 21, 14, 'active', 'This is a high-quality Waterproof Dog Jacket for your pet\'s needs.', '2024-01-29 00:23:00', '2024-01-29 05:26:00', 1),
(185, 'Pet ID Tag', 3, 8, 3482.00, 111, 68, 'active', 'This is a high-quality Pet ID Tag for your pet\'s needs.', '2024-01-29 05:03:00', '2024-01-29 15:59:00', 1),
(186, 'Adjustable Elevated Feeder', 5, 7, 1204.00, 341, 185, 'active', 'This is a high-quality Adjustable Elevated Feeder for your pet\'s needs.', '2024-01-13 20:42:00', '2024-01-23 11:42:00', 1),
(187, 'Durable Rope Toy', 1, 4, 1326.00, 491, 266, 'active', 'This is a high-quality Durable Rope Toy for your pet\'s needs.', '2024-02-29 20:29:00', '2024-03-04 04:40:00', 1),
(188, 'Interactive Puzzle Toy', 9, 6, 2581.00, 320, 170, 'active', 'This is a high-quality Interactive Puzzle Toy for your pet\'s needs.', '2024-01-09 20:23:00', '2024-01-15 20:21:00', 1),
(189, 'Doggy Bathrobe', 8, 3, 191.00, 251, 246, 'inactive', 'This is a high-quality Doggy Bathrobe for your pet\'s needs.', '2024-01-09 10:49:00', '2024-01-10 11:57:00', 1),
(190, 'Dog Poop Bags', 2, 8, 1479.00, 110, 159, 'inactive', 'This is a high-quality Dog Poop Bags for your pet\'s needs.', '2024-01-26 15:37:00', '2024-01-28 23:05:00', 1),
(191, 'Pet ID Tag', 10, 1, 3312.00, 206, 62, 'inactive', 'This is a high-quality Pet ID Tag for your pet\'s needs.', '2024-02-08 16:42:00', '2024-02-15 18:42:00', 1),
(192, 'Doggy Bathrobe', 6, 8, 2072.00, 225, 230, 'active', 'This is a high-quality Doggy Bathrobe for your pet\'s needs.', '2024-01-19 20:50:00', '2024-01-23 21:43:00', 1),
(193, 'Dog Birthday Cake', 5, 7, 3209.00, 124, 165, 'active', 'This is a high-quality Dog Birthday Cake for your pet\'s needs.', '2024-02-05 17:06:00', '2024-02-12 13:02:00', 1),
(194, 'Antibacterial Paw Wipes', 2, 3, 200.00, 244, 62, 'inactive', 'This is a high-quality Antibacterial Paw Wipes for your pet\'s needs.', '2024-01-28 07:08:00', '2024-02-01 21:46:00', 1),
(195, 'Dog Training Clicker', 6, 3, 3413.00, 431, 169, 'inactive', 'This is a high-quality Dog Training Clicker for your pet\'s needs.', '2024-01-02 02:05:00', '2024-01-10 11:13:00', 1),
(196, 'Protein-Rich Wet Food', 2, 8, 2125.00, 97, 156, 'active', 'This is a high-quality Protein-Rich Wet Food for your pet\'s needs.', '2024-01-22 09:04:00', '2024-01-29 07:01:00', 1),
(197, 'Doggy Bathrobe', 6, 6, 1564.00, 388, 153, 'active', 'This is a high-quality Doggy Bathrobe for your pet\'s needs.', '2024-01-15 03:56:00', '2024-01-23 14:56:00', 1),
(198, 'Cooling Mat for Dogs', 9, 4, 4672.00, 420, 80, 'active', 'This is a high-quality Cooling Mat for Dogs for your pet\'s needs.', '2024-01-10 02:12:00', '2024-01-18 02:40:00', 1),
(199, 'Stainless Steel Feeding Bowl', 8, 9, 864.00, 216, 93, 'inactive', 'This is a high-quality Stainless Steel Feeding Bowl for your pet\'s needs.', '2024-02-15 13:46:00', '2024-02-22 00:05:00', 1),
(200, 'Healthy Skin Shampoo', 3, 8, 2458.00, 490, 295, 'active', 'This is a high-quality Healthy Skin Shampoo for your pet\'s needs.', '2024-01-07 09:57:00', '2024-01-08 15:45:00', 1),
(201, 'Luxury Dog Bed', 10, 1, 2456.00, 112, 190, 'inactive', 'This is a high-quality Luxury Dog Bed for your pet\'s needs.', '2024-01-14 14:34:00', '2024-01-25 00:59:00', 1),
(202, 'Pet ID Tag', 2, 4, 4916.00, 245, 97, 'active', 'This is a high-quality Pet ID Tag for your pet\'s needs.', '2024-02-22 02:01:00', '2024-02-22 16:11:00', 1),
(203, 'Organic Dog Supplement', 3, 3, 2417.00, 438, 62, 'inactive', 'This is a high-quality Organic Dog Supplement for your pet\'s needs.', '2024-01-18 14:57:00', '2024-01-21 11:00:00', 1),
(204, 'Freeze-Dried Chicken Treats', 10, 3, 3653.00, 342, 258, 'inactive', 'This is a high-quality Freeze-Dried Chicken Treats for your pet\'s needs.', '2024-02-04 23:38:00', '2024-02-12 00:43:00', 1),
(205, 'Soft Plush Toy', 5, 6, 1282.00, 428, 84, 'inactive', 'This is a high-quality Soft Plush Toy for your pet\'s needs.', '2024-01-26 15:51:00', '2024-01-29 14:39:00', 1),
(206, 'Dog Nail Clipper', 6, 6, 4405.00, 58, 104, 'active', 'This is a high-quality Dog Nail Clipper for your pet\'s needs.', '2024-01-17 01:33:00', '2024-01-22 04:59:00', 1),
(207, 'Premium Dog Kibble', 4, 8, 3612.00, 365, 140, 'active', 'This is a high-quality Premium Dog Kibble for your pet\'s needs.', '2024-01-19 08:20:00', '2024-01-24 15:34:00', 1),
(208, 'Car Seat Cover for Dogs', 8, 8, 3092.00, 268, 148, 'active', 'This is a high-quality Car Seat Cover for Dogs for your pet\'s needs.', '2024-02-24 10:49:00', '2024-02-28 01:10:00', 1),
(209, 'Organic Dog Supplement', 5, 2, 4460.00, 56, 10, 'inactive', 'This is a high-quality Organic Dog Supplement for your pet\'s needs.', '2024-01-03 20:50:00', '2024-01-05 11:54:00', 1),
(210, 'Squeaky Rubber Ball', 10, 5, 4502.00, 118, 17, 'inactive', 'This is a high-quality Squeaky Rubber Ball for your pet\'s needs.', '2024-02-05 13:00:00', '2024-02-10 06:37:00', 1),
(211, 'Soft Plush Toy', 9, 4, 3873.00, 203, 190, 'active', 'This is a high-quality Soft Plush Toy for your pet\'s needs.', '2024-01-08 10:38:00', '2024-01-18 10:11:00', 1),
(212, 'Car Seat Cover for Dogs', 4, 9, 4793.00, 487, 182, 'active', 'This is a high-quality Car Seat Cover for Dogs for your pet\'s needs.', '2024-02-14 23:04:00', '2024-02-23 21:19:00', 1),
(213, 'Anti-Slip Dog Shoes', 10, 5, 1583.00, 109, 137, 'inactive', 'This is a high-quality Anti-Slip Dog Shoes for your pet\'s needs.', '2024-01-20 16:55:00', '2024-01-21 04:33:00', 1),
(214, 'Dog Birthday Cake', 5, 4, 3179.00, 51, 237, 'active', 'This is a high-quality Dog Birthday Cake for your pet\'s needs.', '2024-01-26 22:31:00', '2025-03-04 07:18:26', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `product_categories`
--

CREATE TABLE `product_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product_categories`
--

INSERT INTO `product_categories` (`category_id`, `category_name`) VALUES
(1, 'Dog Food'),
(2, 'Dog Treats'),
(3, 'Dog Toys'),
(4, 'Dog Accessories'),
(5, 'Dog Health & Care'),
(6, 'Dog Grooming'),
(7, 'Dog Training Equipment'),
(8, 'Dog Beds & Furniture'),
(9, 'Dog Travel & Carriers');

-- --------------------------------------------------------

--
-- 資料表結構 `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `img_url`) VALUES
(1, 1, 'uploads/product (1).jpg'),
(2, 2, 'uploads/product (2).jpg'),
(3, 3, 'uploads/product (3).jpg'),
(4, 4, 'uploads/product (4).jpg'),
(5, 5, 'uploads/product (5).jpg'),
(6, 6, 'uploads/product (6).jpg'),
(7, 7, 'uploads/product (7).jpg'),
(8, 8, 'uploads/product (8).jpg'),
(9, 9, 'uploads/product (9).jpg'),
(10, 10, 'uploads/product (10).jpg'),
(11, 11, 'uploads/product (11).jpg'),
(12, 12, 'uploads/product (12).jpg'),
(13, 13, 'uploads/product (13).jpg'),
(14, 14, 'uploads/product (14).jpg'),
(15, 15, 'uploads/product (15).jpg'),
(16, 16, 'uploads/product (16).jpg'),
(17, 17, 'uploads/product (17).jpg'),
(18, 18, 'uploads/product (18).jpg'),
(19, 19, 'uploads/product (19).jpg'),
(20, 20, 'uploads/product (20).jpg'),
(21, 21, 'uploads/product (21).jpg'),
(22, 22, 'uploads/product (22).jpg'),
(23, 23, 'uploads/product (23).jpg'),
(24, 24, 'uploads/product (24).jpg'),
(25, 25, 'uploads/product (25).jpg'),
(26, 26, 'uploads/product (26).jpg'),
(27, 27, 'uploads/product (27).jpg'),
(28, 28, 'uploads/product (28).jpg'),
(29, 29, 'uploads/product (29).jpg'),
(30, 30, 'uploads/product (30).jpg'),
(31, 31, 'uploads/product (31).jpg'),
(32, 32, 'uploads/product (32).jpg'),
(33, 33, 'uploads/product (33).jpg'),
(34, 34, 'uploads/product (34).jpg'),
(35, 35, 'uploads/product (35).jpg'),
(36, 36, 'uploads/product (36).jpg'),
(37, 37, 'uploads/product (37).jpg'),
(38, 38, 'uploads/product (38).jpg'),
(39, 39, 'uploads/product (39).jpg'),
(40, 40, 'uploads/product (40).jpg'),
(41, 41, 'uploads/product (41).jpg'),
(42, 42, 'uploads/product (42).jpg'),
(43, 43, 'uploads/product (43).jpg'),
(44, 44, 'uploads/product (44).jpg'),
(45, 45, 'uploads/product (45).jpg'),
(46, 46, 'uploads/product (46).jpg'),
(47, 47, 'uploads/product (47).jpg'),
(48, 48, 'uploads/product (48).jpg'),
(49, 49, 'uploads/product (49).jpg'),
(50, 50, 'uploads/product (50).jpg'),
(51, 51, 'uploads/product (51).jpg'),
(52, 52, 'uploads/product (52).jpg'),
(53, 53, 'uploads/product (53).jpg'),
(54, 54, 'uploads/product (54).jpg'),
(55, 55, 'uploads/product (55).jpg'),
(56, 56, 'uploads/product (56).jpg'),
(57, 57, 'uploads/product (57).jpg'),
(58, 58, 'uploads/product (58).jpg'),
(59, 59, 'uploads/product (59).jpg'),
(60, 60, 'uploads/product (60).jpg'),
(61, 61, 'uploads/product (61).jpg'),
(62, 62, 'uploads/product (62).jpg'),
(63, 63, 'uploads/product (63).jpg'),
(64, 64, 'uploads/product (64).jpg'),
(65, 65, 'uploads/product (65).jpg'),
(66, 66, 'uploads/product (66).jpg'),
(67, 67, 'uploads/product (67).jpg'),
(68, 68, 'uploads/product (68).jpg'),
(69, 69, 'uploads/product (69).jpg'),
(70, 70, 'uploads/product (70).jpg'),
(71, 71, 'uploads/product (71).jpg'),
(72, 72, 'uploads/product (72).jpg'),
(73, 73, 'uploads/product (73).jpg'),
(74, 74, 'uploads/product (74).jpg'),
(75, 75, 'uploads/product (75).jpg'),
(76, 76, 'uploads/product (76).jpg'),
(77, 77, 'uploads/product (77).jpg'),
(78, 78, 'uploads/product (78).jpg'),
(79, 79, 'uploads/product (79).jpg'),
(80, 80, 'uploads/product (80).jpg'),
(81, 81, 'uploads/product (81).jpg'),
(82, 82, 'uploads/product (82).jpg'),
(83, 83, 'uploads/product (83).jpg'),
(84, 84, 'uploads/product (84).jpg'),
(85, 85, 'uploads/product (85).jpg'),
(86, 86, 'uploads/product (86).jpg'),
(87, 87, 'uploads/product (87).jpg'),
(88, 88, 'uploads/product (88).jpg'),
(89, 89, 'uploads/product (89).jpg'),
(90, 90, 'uploads/product (90).jpg'),
(91, 91, 'uploads/product (91).jpg'),
(92, 92, 'uploads/product (92).jpg'),
(93, 93, 'uploads/product (93).jpg'),
(94, 94, 'uploads/product (94).jpg'),
(95, 95, 'uploads/product (95).jpg'),
(96, 96, 'uploads/product (96).jpg'),
(97, 97, 'uploads/product (97).jpg'),
(98, 98, 'uploads/product (98).jpg'),
(99, 99, 'uploads/product (99).jpg'),
(100, 100, 'uploads/product (100).jpg'),
(101, 101, 'uploads/product (101).jpg'),
(102, 102, 'uploads/product (102).jpg'),
(103, 103, 'uploads/product (103).jpg'),
(104, 104, 'uploads/product (104).jpg'),
(105, 105, 'uploads/product (105).jpg'),
(106, 106, 'uploads/product (106).jpg'),
(107, 107, 'uploads/product (107).jpg'),
(108, 108, 'uploads/product (108).jpg'),
(109, 109, 'uploads/product (109).jpg'),
(110, 110, 'uploads/product (110).jpg'),
(111, 111, 'uploads/product (111).jpg'),
(112, 112, 'uploads/product (112).jpg'),
(113, 113, 'uploads/product (113).jpg'),
(114, 114, 'uploads/product (114).jpg'),
(115, 115, 'uploads/product (115).jpg'),
(116, 116, 'uploads/product (116).jpg'),
(117, 117, 'uploads/product (117).jpg'),
(118, 118, 'uploads/product (118).jpg'),
(119, 119, 'uploads/product (119).jpg'),
(120, 120, 'uploads/product (120).jpg'),
(121, 121, 'uploads/product (121).jpg'),
(122, 122, 'uploads/product (122).jpg'),
(123, 123, 'uploads/product (123).jpg'),
(124, 124, 'uploads/product (124).jpg'),
(125, 125, 'uploads/product (125).jpg'),
(126, 126, 'uploads/product (126).jpg'),
(127, 127, 'uploads/product (127).jpg'),
(128, 128, 'uploads/product (128).jpg'),
(129, 129, 'uploads/product (129).jpg'),
(130, 130, 'uploads/product (130).jpg'),
(131, 131, 'uploads/product (131).jpg'),
(132, 132, 'uploads/product (132).jpg'),
(133, 133, 'uploads/product (133).jpg'),
(134, 134, 'uploads/product (134).jpg'),
(135, 135, 'uploads/product (135).jpg'),
(136, 136, 'uploads/product (136).jpg'),
(137, 137, 'uploads/product (137).jpg'),
(138, 138, 'uploads/product (138).jpg'),
(139, 139, 'uploads/product (139).jpg'),
(140, 140, 'uploads/product (140).jpg'),
(141, 141, 'uploads/product (141).jpg'),
(142, 142, 'uploads/product (142).jpg'),
(143, 143, 'uploads/product (143).jpg'),
(144, 144, 'uploads/product (144).jpg'),
(145, 145, 'uploads/product (145).jpg'),
(146, 146, 'uploads/product (146).jpg'),
(147, 147, 'uploads/product (147).jpg'),
(148, 148, 'uploads/product (148).jpg'),
(149, 149, 'uploads/product (149).jpg'),
(150, 150, 'uploads/product (150).jpg'),
(151, 151, 'uploads/product (151).jpg'),
(152, 152, 'uploads/product (152).jpg'),
(153, 153, 'uploads/product (153).jpg'),
(154, 154, 'uploads/product (154).jpg'),
(155, 155, 'uploads/product (155).jpg'),
(156, 156, 'uploads/product (156).jpg'),
(157, 157, 'uploads/product (157).jpg'),
(158, 158, 'uploads/product (158).jpg'),
(159, 159, 'uploads/product (159).jpg'),
(160, 160, 'uploads/product (160).jpg'),
(161, 161, 'uploads/product (161).jpg'),
(162, 162, 'uploads/product (162).jpg'),
(163, 163, 'uploads/product (163).jpg'),
(164, 164, 'uploads/product (164).jpg'),
(165, 165, 'uploads/product (165).jpg'),
(166, 166, 'uploads/product (166).jpg'),
(167, 167, 'uploads/product (167).jpg'),
(168, 168, 'uploads/product (168).jpg'),
(169, 169, 'uploads/product (169).jpg'),
(170, 170, 'uploads/product (170).jpg'),
(171, 171, 'uploads/product (171).jpg'),
(172, 172, 'uploads/product (172).jpg'),
(173, 173, 'uploads/product (173).jpg'),
(174, 174, 'uploads/product (174).jpg'),
(175, 175, 'uploads/product (175).jpg'),
(176, 176, 'uploads/product (176).jpg'),
(177, 177, 'uploads/product (177).jpg'),
(178, 178, 'uploads/product (178).jpg'),
(179, 179, 'uploads/product (179).jpg'),
(180, 180, 'uploads/product (180).jpg'),
(181, 181, 'uploads/product (181).jpg'),
(182, 182, 'uploads/product (182).jpg'),
(183, 183, 'uploads/product (183).jpg'),
(184, 184, 'uploads/product (184).jpg'),
(185, 185, 'uploads/product (185).jpg'),
(186, 186, 'uploads/product (186).jpg'),
(187, 187, 'uploads/product (187).jpg'),
(188, 188, 'uploads/product (188).jpg'),
(189, 189, 'uploads/product (189).jpg'),
(190, 190, 'uploads/product (190).jpg'),
(191, 191, 'uploads/product (191).jpg'),
(192, 192, 'uploads/product (192).jpg'),
(193, 193, 'uploads/product (193).jpg'),
(194, 194, 'uploads/product (194).jpg'),
(195, 195, 'uploads/product (195).jpg'),
(196, 196, 'uploads/product (196).jpg'),
(197, 197, 'uploads/product (197).jpg'),
(198, 198, 'uploads/product (198).jpg'),
(199, 199, 'uploads/product (199).jpg'),
(200, 200, 'uploads/product (200).jpg'),
(201, 201, 'uploads/product (201).jpg'),
(202, 202, 'uploads/product (202).jpg'),
(203, 203, 'uploads/product (203).jpg'),
(204, 204, 'uploads/product (204).jpg'),
(205, 205, 'uploads/product (205).jpg'),
(206, 206, 'uploads/product (206).jpg'),
(207, 207, 'uploads/product (207).jpg'),
(208, 208, 'uploads/product (208).jpg'),
(209, 209, 'uploads/product (209).jpg'),
(210, 210, 'uploads/product (210).jpg'),
(211, 211, 'uploads/product (211).jpg'),
(212, 212, 'uploads/product (212).jpg'),
(213, 213, 'uploads/product (213).jpg'),
(214, 214, 'uploads/product (214).jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `product_reviews`
--

CREATE TABLE `product_reviews` (
  `review_id` int(11) NOT NULL,
  `star_rating` int(11) DEFAULT NULL CHECK (`star_rating` between 1 and 5),
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `review_content` text DEFAULT NULL,
  `review_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `product_stock`
--

CREATE TABLE `product_stock` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variant_combination` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product_stock`
--

INSERT INTO `product_stock` (`id`, `product_id`, `variant_combination`, `stock`) VALUES
(1, 1, 'Flavor: Beef', 100),
(2, 1, 'Flavor: Chicken', 80),
(3, 1, 'Flavor: Salmon', 60),
(4, 2, 'Flavor: Lamb', 90),
(5, 2, 'Flavor: Turkey', 70),
(6, 3, 'Flavor: Beef', 120),
(7, 3, 'Flavor: Duck', 95),
(8, 4, 'Flavor: Mint', 150),
(9, 4, 'Flavor: Carrot', 130),
(10, 5, 'Color: Red', 50),
(11, 5, 'Color: Blue', 40),
(12, 5, 'Color: Green', 30),
(13, 6, 'Color: Yellow', 70),
(14, 6, 'Color: Purple', 60),
(15, 7, 'Size: Small', 50),
(16, 7, 'Size: Medium', 40),
(17, 7, 'Size: Large', 30),
(18, 8, 'Material: Nylon', 90),
(19, 8, 'Material: Leather', 60),
(20, 9, 'Size: Medium + Cotton', 25),
(21, 9, 'Size: Large + Memory Foam', 15),
(22, 10, 'Size: Large + Memory Foam', 10),
(23, 11, 'Pack Size: 250ml', 80),
(24, 11, 'Pack Size: 500ml', 60),
(25, 12, 'Pack Size: 200ml', 70),
(26, 12, 'Pack Size: 400ml', 50),
(27, 13, 'Weight Capacity: 10kg', 30),
(28, 13, 'Weight Capacity: 20kg', 20),
(29, 14, 'Pack Size: Single Pack', 100),
(30, 14, 'Pack Size: Double Pack', 80);

-- --------------------------------------------------------

--
-- 資料表結構 `product_subcategories`
--

CREATE TABLE `product_subcategories` (
  `subcategory_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product_subcategories`
--

INSERT INTO `product_subcategories` (`subcategory_id`, `category_id`, `subcategory_name`) VALUES
(1, 1, 'Dry Dog Food'),
(2, 1, 'Wet Dog Food'),
(3, 1, 'Organic Dog Food'),
(4, 1, 'Grain-Free Dog Food'),
(5, 2, 'Chew Treats'),
(6, 2, 'Dental Treats'),
(7, 2, 'Training Treats'),
(8, 2, 'Natural Treats'),
(9, 3, 'Chew Toys'),
(10, 3, 'Interactive Toys'),
(11, 3, 'Squeaky Toys'),
(12, 3, 'Plush Toys'),
(13, 4, 'Leashes'),
(14, 4, 'Collars'),
(15, 4, 'Harnesses'),
(16, 4, 'ID Tags'),
(17, 5, 'Vitamins & Supplements'),
(18, 5, 'Dental Care'),
(19, 5, 'Hip & Joint Care'),
(20, 5, 'Digestive Health'),
(21, 6, 'Shampoo & Conditioners'),
(22, 6, 'Brushes & Combs'),
(23, 6, 'Nail Clippers'),
(24, 6, 'Ear & Eye Care'),
(25, 7, 'Training Pads'),
(26, 7, 'Clickers & Whistles'),
(27, 7, 'Training Collars'),
(28, 7, 'Agility Equipment'),
(29, 8, 'Orthopedic Beds'),
(30, 8, 'Heated Beds'),
(31, 8, 'Cushion Beds'),
(32, 8, 'Dog Sofas'),
(33, 9, 'Car Seats & Seat Belts'),
(34, 9, 'Pet Carriers'),
(35, 9, 'Travel Bowls'),
(36, 9, 'Backpacks & Slings');

-- --------------------------------------------------------

--
-- 資料表結構 `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `variant_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant_id`, `variant_value`) VALUES
(1, 1, 3, 'Beef'),
(2, 1, 3, 'Chicken'),
(3, 1, 3, 'Salmon'),
(4, 2, 3, 'Lamb'),
(5, 2, 3, 'Turkey'),
(6, 3, 3, 'Beef'),
(7, 3, 3, 'Duck'),
(8, 4, 3, 'Mint'),
(9, 4, 3, 'Carrot'),
(10, 5, 2, 'Red'),
(11, 5, 2, 'Blue'),
(12, 5, 2, 'Green'),
(13, 6, 2, 'Yellow'),
(14, 6, 2, 'Purple'),
(15, 7, 1, 'Small'),
(16, 7, 1, 'Medium'),
(17, 7, 1, 'Large'),
(18, 8, 4, 'Nylon'),
(19, 8, 4, 'Leather'),
(20, 9, 1, 'Medium'),
(21, 9, 1, 'Large'),
(22, 9, 4, 'Cotton'),
(23, 9, 4, 'Memory Foam'),
(24, 10, 1, 'Large'),
(25, 10, 4, 'Memory Foam'),
(26, 11, 5, '250ml'),
(27, 11, 5, '500ml'),
(28, 12, 5, '200ml'),
(29, 12, 5, '400ml'),
(30, 13, 7, '10kg'),
(31, 13, 7, '20kg'),
(32, 14, 5, 'Single Pack'),
(33, 14, 5, 'Double Pack');

-- --------------------------------------------------------

--
-- 資料表結構 `variants`
--

CREATE TABLE `variants` (
  `variant_id` int(11) NOT NULL,
  `variant_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `variants`
--

INSERT INTO `variants` (`variant_id`, `variant_name`) VALUES
(1, 'Size'),
(2, 'Color'),
(3, 'Flavor'),
(4, 'Material'),
(5, 'Pack Size'),
(6, 'Breed Type'),
(7, 'Weight Capacity');

-- --------------------------------------------------------

--
-- 資料表結構 `vendors`
--

CREATE TABLE `vendors` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `vendors`
--

INSERT INTO `vendors` (`vendor_id`, `vendor_name`, `created_at`) VALUES
(1, 'Pawfect Pet Supplies', '2024-01-10 02:00:00'),
(2, 'Bark & Bite Co.', '2024-01-15 04:30:00'),
(3, 'Furry Friends Essentials', '2024-01-20 06:45:00'),
(4, 'Happy Tails Distributors', '2024-01-25 01:20:00'),
(5, 'Canine Comfort Brands', '2024-02-01 08:10:00'),
(6, 'Woof Woof Toys', '2024-02-05 00:50:00'),
(7, 'Healthy Paws Nutrition', '2024-02-10 03:00:00'),
(8, 'Doggy Dream Beds', '2024-02-12 05:40:00'),
(9, 'Puppy Love Accessories', '2024-02-15 07:30:00'),
(10, 'Tail Waggers Training', '2024-02-18 09:25:00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- 資料表索引 `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `product_stock`
--
ALTER TABLE `product_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `product_subcategories`
--
ALTER TABLE `product_subcategories`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- 資料表索引 `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `variant_id` (`variant_id`);

--
-- 資料表索引 `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`variant_id`);

--
-- 資料表索引 `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendor_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_stock`
--
ALTER TABLE `product_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_subcategories`
--
ALTER TABLE `product_subcategories`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `variants`
--
ALTER TABLE `variants`
  MODIFY `variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `product_stock`
--
ALTER TABLE `product_stock`
  ADD CONSTRAINT `product_stock_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `product_subcategories`
--
ALTER TABLE `product_subcategories`
  ADD CONSTRAINT `product_subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`category_id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variants_ibfk_2` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`variant_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
