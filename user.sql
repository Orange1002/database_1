-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-02-27 15:46:58
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
-- 資料表結構 `gender`
--

CREATE TABLE `gender` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `gender`
--

INSERT INTO `gender` (`id`, `name`) VALUES
(1, '男'),
(2, '女');

-- --------------------------------------------------------

--
-- 資料表結構 `levels`
--

CREATE TABLE `levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `levels`
--

INSERT INTO `levels` (`id`, `name`, `description`) VALUES
(1, 'Basic', ''),
(2, 'Bronze', ''),
(3, 'Silver', ''),
(4, 'Gold', ''),
(5, 'Platinum', '');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL,
  `gender_id` int(2) UNSIGNED DEFAULT NULL,
  `account` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `level_id` tinyint(2) NOT NULL,
  `user_image_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `valid` tinyint(2) NOT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `gender_id`, `account`, `password`, `email`, `phone`, `adress`, `level_id`, `user_image_id`, `created_at`, `valid`, `birth_date`) VALUES
(1, 'Jimmy', 1, 'jimmy', '827ccb0eea8a706c4c34a16891f84e', 'daha71205@gmail.com', '0975026267', '', 0, 0, '2025-02-21', 1, NULL),
(2, 'Bill', 1, 'bill', '827ccb0eea8a706c4c34a16891f84e', 'bill@gmail.com', '0936314036', '', 0, 0, '2025-02-21', 1, NULL),
(3, 'eson', 1, 'eson', '827ccb0eea8a706c4c34a16891f84e', 'eson@gmail.com', '0951791210', '', 0, 0, '2025-02-21', 1, NULL),
(4, 'albe', 2, 'albe', '827ccb0eea8a706c4c34a16891f84e', 'albe@gmail.com', '0995112965', '', 0, 0, '2025-02-21', 1, NULL),
(5, 'Laby', 2, 'laby', '827ccb0eea8a706c4c34a16891f84e', 'laby@gmail.com', '0912345678', '', 0, 0, '2025-02-21', 1, NULL),
(6, 'Sophia', 2, 'sophia', '827ccb0eea8a706c4c34a16891f84e', 'sophia@gmail.com', '0936314036', '', 0, 0, '2025-02-21', 1, NULL),
(7, 'John', 1, 'john', '827ccb0eea8a706c4c34a16891f84e', 'john@gmail.com', '0900000000', '', 0, 0, '2025-02-21', 1, NULL),
(8, 'Isabella', 2, 'isabella', '827ccb0eea8a706c4c34a16891f84e', 'isabella@gmail.com', '0975028899', '', 0, 0, '2025-02-21', 1, NULL),
(9, 'Emma', 2, 'emma', '827ccb0eea8a706c4c34a16891f84e', 'emma@outlook.com', '0975080809', '', 0, 0, '2025-02-21', 1, NULL),
(10, 'Robert', 1, 'robert', '827ccb0eea8a706c4c34a16891f84e', 'robert@outlook.com', '0978308096', '', 0, 0, '2025-02-21', 1, NULL),
(11, 'Olivia', 2, 'olivia', '827ccb0eea8a706c4c34a16891f84e', 'olivia@outlook.com', '', '', 0, 0, '2025-02-21', 1, NULL),
(12, '', 1, 'william', '827ccb0eea8a706c4c34a16891f84e', 'william@outlook.com', '', '', 0, 0, '2025-02-21', 1, NULL),
(13, 'Beau', 2, 'beau', '827ccb0eea8a706c4c34a16891f84e', 'beau@gmail.com', '0974635245', '', 0, 0, '2025-02-24', 1, NULL),
(14, '', 2, 'jasmine', '827ccb0eea8a706c4c34a16891f84e', 'jasmine@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(15, '', 1, 'omar', '827ccb0eea8a706c4c34a16891f84e', 'omar@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(16, '', 2, 'hallie', '827ccb0eea8a706c4c34a16891f84e', 'hallie@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(17, '', 1, 'kenzie', '827ccb0eea8a706c4c34a16891f84e', 'kenzie@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(18, '', 1, 'rylie', '827ccb0eea8a706c4c34a16891f84e', 'rylie@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(19, '', 1, 'ethan', '827ccb0eea8a706c4c34a16891f84e', 'ethan@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(20, '', 1, 'bailey', '827ccb0eea8a706c4c34a16891f84e', 'bailey@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(21, '', 1, 'timothy', '827ccb0eea8a706c4c34a16891f84e', 'timothy@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(22, '', 1, 'mariah', '827ccb0eea8a706c4c34a16891f84e', 'mariah@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(23, '', 1, 'archie', '827ccb0eea8a706c4c34a16891f84e', 'archie@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(24, '', 1, 'destiny', '827ccb0eea8a706c4c34a16891f84e', 'destiny@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(25, '', 2, 'avaa', '827ccb0eea8a706c4c34a16891f84e', 'avaa@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(26, '', 1, 'ayden', '827ccb0eea8a706c4c34a16891f84e', 'ayden@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(27, '', 1, 'cash', '827ccb0eea8a706c4c34a16891f84e', 'cash@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(28, '', 1, 'andy', '827ccb0eea8a706c4c34a16891f84e', 'andy@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(29, '', 2, 'emily', '827ccb0eea8a706c4c34a16891f84e', 'emily@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(30, '', 2, 'angelina', '827ccb0eea8a706c4c34a16891f84e', 'angelina@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(31, '', 1, 'weston', '827ccb0eea8a706c4c34a16891f84e', 'weston@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(32, '', 1, 'jacob', '827ccb0eea8a706c4c34a16891f84e', 'jacob@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(33, '', 1, 'blair', '827ccb0eea8a706c4c34a16891f84e', 'blair@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(34, '', 2, 'Kate', '827ccb0eea8a706c4c34a16891f84e', 'Kate@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(35, '', 1, 'connor', '827ccb0eea8a706c4c34a16891f84e', 'connor@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(36, '', 1, 'miles', '827ccb0eea8a706c4c34a16891f84e', 'miles@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(37, '', 1, 'hugo', '827ccb0eea8a706c4c34a16891f84e', 'hugo@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(38, '', 1, 'michael', '827ccb0eea8a706c4c34a16891f84e', 'michael@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(39, '', 1, 'faith', '827ccb0eea8a706c4c34a16891f84e', 'faith@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(40, '', 1, 'millie', '827ccb0eea8a706c4c34a16891f84e', 'millie@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(41, '', 2, 'vivian', '827ccb0eea8a706c4c34a16891f84e', 'vivian@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(42, '', 1, 'samuel', '827ccb0eea8a706c4c34a16891f84e', 'samuel@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(43, '', 2, 'lilly', '827ccb0eea8a706c4c34a16891f84e', 'lilly@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(44, '', 2, 'julia', '827ccb0eea8a706c4c34a16891f84e', 'julia@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(45, '', 1, 'jaxx', '827ccb0eea8a706c4c34a16891f84e', 'jax@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(46, '', 1, 'james', '827ccb0eea8a706c4c34a16891f84e', 'james@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(47, '', 1, 'curry', '827ccb0eea8a706c4c34a16891f84e', 'curry@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(48, '', 1, 'harden', '827ccb0eea8a706c4c34a16891f84e', 'harden@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(49, '', 1, 'adams', '827ccb0eea8a706c4c34a16891f84e', 'adams@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(50, '', 1, 'morant', '827ccb0eea8a706c4c34a16891f84e', 'morant@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(51, '', 1, 'durant', '827ccb0eea8a706c4c34a16891f84e', 'durant@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(52, '', 1, 'allen', '827ccb0eea8a706c4c34a16891f84e', 'allen@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(53, '', 1, 'beal', '827ccb0eea8a706c4c34a16891f84e', 'beal@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(54, '', 1, 'books', '827ccb0eea8a706c4c34a16891f84e', 'books@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(55, '', 1, 'brown', '827ccb0eea8a706c4c34a16891f84e', 'brown@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(56, '', 1, 'bridges', '827ccb0eea8a706c4c34a16891f84e', 'bridges@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(57, '', 1, 'bryant', '827ccb0eea8a706c4c34a16891f84e', 'bryant@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(58, '', 1, 'jordan', '827ccb0eea8a706c4c34a16891f84e', 'jordan@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(59, '', 1, 'carter', '827ccb0eea8a706c4c34a16891f84e', 'carter@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(60, '', 1, 'clark', '827ccb0eea8a706c4c34a16891f84e', 'clark@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(61, '', 2, 'ophelia', '827ccb0eea8a706c4c34a16891f84e', 'ophelia@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(62, '', 2, 'danna', '827ccb0eea8a706c4c34a16891f84e', 'danna@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(63, '', 2, 'ella', '827ccb0eea8a706c4c34a16891f84e', 'ella@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(64, '', 2, 'juliet', '827ccb0eea8a706c4c34a16891f84e', 'juliet@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(65, '', 2, 'nina', '827ccb0eea8a706c4c34a16891f84e', 'nina@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(66, '', 2, 'daphne', '827ccb0eea8a706c4c34a16891f84e', 'daphne@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(67, '', 2, 'abigail', '827ccb0eea8a706c4c34a16891f84e', 'abigail@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(68, '', 2, 'sara', '827ccb0eea8a706c4c34a16891f84e', 'sara@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(69, '', 1, 'marcus', '827ccb0eea8a706c4c34a16891f84e', 'marcus@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(70, '', 2, 'serena', '827ccb0eea8a706c4c34a16891f84e', 'serena@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(71, '', 2, 'alice', '827ccb0eea8a706c4c34a16891f84e', 'alice@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(72, '', 2, 'thea', '827ccb0eea8a706c4c34a16891f84e', 'thea@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(73, '', 2, 'melissa', '827ccb0eea8a706c4c34a16891f84e', 'melissa@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(74, '', 2, 'molly', '827ccb0eea8a706c4c34a16891f84e', 'molly@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(75, '', 2, 'talia', '827ccb0eea8a706c4c34a16891f84e', 'talia@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(76, '', 2, 'ashh', '827ccb0eea8a706c4c34a16891f84e', 'ash@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(77, '', 2, 'katherine', '827ccb0eea8a706c4c34a16891f84e', 'katherine@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(78, '', 2, 'sophie', '827ccb0eea8a706c4c34a16891f84e', 'sophie@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(79, '', 2, 'josephine', '827ccb0eea8a706c4c34a16891f84e', 'josephine@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(80, '', 2, 'annie', '827ccb0eea8a706c4c34a16891f84e', 'annie@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(81, '', 2, 'poppy', '827ccb0eea8a706c4c34a16891f84e', 'poppy@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(82, '', 2, 'ivyy', '827ccb0eea8a706c4c34a16891f84e', 'ivy@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(83, '', 1, 'clara', '827ccb0eea8a706c4c34a16891f84e', 'clara@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(84, '', 1, 'crawford', '827ccb0eea8a706c4c34a16891f84e', 'crawford@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(85, '', 1, 'dante', '827ccb0eea8a706c4c34a16891f84e', 'dante@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(86, '', 1, 'davis', '827ccb0eea8a706c4c34a16891f84e', 'davis@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(87, '', 1, 'davison', '827ccb0eea8a706c4c34a16891f84e', 'davison@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(88, '', 1, 'edwards', '827ccb0eea8a706c4c34a16891f84e', 'edwards@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(89, '', 1, 'foxx', '827ccb0eea8a706c4c34a16891f84e', 'fox@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(90, '', 0, 'freeman', '827ccb0eea8a706c4c34a16891f84e', 'freeman@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(91, '', 1, 'garland', '827ccb0eea8a706c4c34a16891f84e', 'garland@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(92, '', 1, 'george', '827ccb0eea8a706c4c34a16891f84e', 'george@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(93, '', 1, 'giddey', '827ccb0eea8a706c4c34a16891f84e', 'giddey@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(94, '', 1, 'gobert', '827ccb0eea8a706c4c34a16891f84e', 'gobert@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(95, '', 1, 'chloe', '827ccb0eea8a706c4c34a16891f84e', 'chloe@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(96, '', 2, 'fiona', '827ccb0eea8a706c4c34a16891f84e', 'fiona@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(97, '', 1, 'kyrie', '827ccb0eea8a706c4c34a16891f84e', 'kyrie@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(98, '', 2, 'laura', '827ccb0eea8a706c4c34a16891f84e', 'laura@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(99, '', 2, 'diana', '827ccb0eea8a706c4c34a16891f84e', 'diana@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(100, '', 2, 'gracie', '827ccb0eea8a706c4c34a16891f84e', 'gracie@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(101, '', 2, 'skye', '827ccb0eea8a706c4c34a16891f84e', 'skye@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(102, '', 2, 'nadia', '827ccb0eea8a706c4c34a16891f84e', 'nadia@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(103, '', 2, 'iris', '827ccb0eea8a706c4c34a16891f84e', 'iris@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(104, '', 2, 'zoee', '827ccb0eea8a706c4c34a16891f84e', 'zoe@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(105, '', 2, 'lucille', '827ccb0eea8a706c4c34a16891f84e', 'lucille@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(106, '', 2, 'camilla', '827ccb0eea8a706c4c34a16891f84e', 'camilla@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(107, '', 2, 'jessica', '827ccb0eea8a706c4c34a16891f84e', 'jessica@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(108, '', 1, 'richard', '827ccb0eea8a706c4c34a16891f84e', 'richard@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(109, '', 2, 'holly', '827ccb0eea8a706c4c34a16891f84e', 'holly@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(110, '', 1, 'tatum', '827ccb0eea8a706c4c34a16891f84e', 'tatum@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(111, '', 2, 'stella', '827ccb0eea8a706c4c34a16891f84e', 'stella@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(112, '', 2, 'nora', '827ccb0eea8a706c4c34a16891f84e', 'nora@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(113, '', 1, 'alan', '827ccb0eea8a706c4c34a16891f84e', 'alan@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(114, '', 1, 'lane', '827ccb0eea8a706c4c34a16891f84e', 'lane@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(115, '', 1, 'johnny', '827ccb0eea8a706c4c34a16891f84e', 'johnny@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(116, '', 2, 'elizabeth', '827ccb0eea8a706c4c34a16891f84e', 'elizabeth@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(117, '', 1, 'arthur', '827ccb0eea8a706c4c34a16891f84e', 'arthur@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(118, '', 1, 'lexi', '827ccb0eea8a706c4c34a16891f84e', 'lexi@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(119, '', 1, 'pierce', '827ccb0eea8a706c4c34a16891f84e', 'pierce@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(120, '', 1, 'kaiden', '827ccb0eea8a706c4c34a16891f84e', 'kaiden@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(121, '', 1, 'grady', '827ccb0eea8a706c4c34a16891f84e', 'grady@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(122, '', 1, 'odin', '827ccb0eea8a706c4c34a16891f84e', 'odin@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(123, '', 1, 'sullivan', '827ccb0eea8a706c4c34a16891f84e', 'sullivan@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(124, '', 1, 'soloman', '827ccb0eea8a706c4c34a16891f84e', 'soloman@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(125, '', 1, 'dean', '827ccb0eea8a706c4c34a16891f84e', 'dean@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(126, '', 1, 'sean', '827ccb0eea8a706c4c34a16891f84e', 'sean@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(127, '', 1, 'keira', '827ccb0eea8a706c4c34a16891f84e', 'keira@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(128, '', 1, 'irving', '827ccb0eea8a706c4c34a16891f84e', 'irving@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(129, '', 2, 'joel', '827ccb0eea8a706c4c34a16891f84e', 'joel@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(130, '', 1, 'kyle', '827ccb0eea8a706c4c34a16891f84e', 'kyle@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(131, '', 1, 'franklin', '827ccb0eea8a706c4c34a16891f84e', 'franklin@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(132, '', 2, 'daisy', '827ccb0eea8a706c4c34a16891f84e', 'daisy@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(133, '', 1, 'philip', '827ccb0eea8a706c4c34a16891f84e', 'philip@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(134, '', 1, 'raven', '827ccb0eea8a706c4c34a16891f84e', 'raven@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(135, '', 1, 'charlie', '827ccb0eea8a706c4c34a16891f84e', 'charlie@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(136, '', 1, 'charles', '827ccb0eea8a706c4c34a16891f84e', 'charles@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(137, '', 1, 'bryson', '827ccb0eea8a706c4c34a16891f84e', 'bryson@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(138, '', 2, 'julian', '827ccb0eea8a706c4c34a16891f84e', 'julian@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(139, '', 1, 'dawson', '827ccb0eea8a706c4c34a16891f84e', 'dawson@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(140, '', 1, 'kenneth', '827ccb0eea8a706c4c34a16891f84e', 'kenneth@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(141, '', 1, 'patrick', '827ccb0eea8a706c4c34a16891f84e', 'patrick@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(142, '', 1, 'reid', '827ccb0eea8a706c4c34a16891f84e', 'reid@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(143, '', 2, 'kyler', '827ccb0eea8a706c4c34a16891f84e', 'kyler@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(144, '', 1, 'quinn', '827ccb0eea8a706c4c34a16891f84e', 'quinn@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(145, '', 2, 'winter', '827ccb0eea8a706c4c34a16891f84e', 'winter@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(146, '', 1, 'andre', '827ccb0eea8a706c4c34a16891f84e', 'andre@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(147, '', 1, 'ryan', '827ccb0eea8a706c4c34a16891f84e', 'ryan@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(148, '', 1, 'rylee', '827ccb0eea8a706c4c34a16891f84e', 'rylee@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(149, '', 1, 'josiah', '827ccb0eea8a706c4c34a16891f84e', 'josiah@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(150, '', 2, 'elaina', '827ccb0eea8a706c4c34a16891f84e', 'elaina@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(151, '', 1, 'forrest', '827ccb0eea8a706c4c34a16891f84e', 'forrest@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(152, '', 1, 'jace', '827ccb0eea8a706c4c34a16891f84e', 'jace@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(153, '', 1, 'pyke', '827ccb0eea8a706c4c34a16891f84e', 'pyke@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(154, '', 1, 'owen', '827ccb0eea8a706c4c34a16891f84e', 'owen@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(155, '', 2, 'jake', '827ccb0eea8a706c4c34a16891f84e', 'jake@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(156, '', 2, 'malcolm', '827ccb0eea8a706c4c34a16891f84e', 'malcolm@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(157, '', 2, 'jane', '827ccb0eea8a706c4c34a16891f84e', 'jane@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(158, '', 1, 'peter', '827ccb0eea8a706c4c34a16891f84e', 'peter@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(159, '', 1, 'felix', '827ccb0eea8a706c4c34a16891f84e', 'felix@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(160, '', 1, 'lewis', '827ccb0eea8a706c4c34a16891f84e', 'lewis@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(161, '', 1, 'williamson', '827ccb0eea8a706c4c34a16891f84e', 'williamson@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(162, '', 2, 'caroline', '827ccb0eea8a706c4c34a16891f84e', 'caroline@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(163, '', 2, 'sage', '827ccb0eea8a706c4c34a16891f84e', 'sage@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(164, '', 1, 'phoenix', '827ccb0eea8a706c4c34a16891f84e', 'phoenix@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(165, '', 1, 'jett', '827ccb0eea8a706c4c34a16891f84e', 'jett@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(166, '', 2, 'viper', '827ccb0eea8a706c4c34a16891f84e', 'viper@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(167, '', 1, 'sova', '827ccb0eea8a706c4c34a16891f84e', 'sova@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(168, '', 1, 'cypher', '827ccb0eea8a706c4c34a16891f84e', 'cypher@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(169, '', 1, 'brimstone', '827ccb0eea8a706c4c34a16891f84e', 'brimstone@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(170, '', 1, 'omen', '827ccb0eea8a706c4c34a16891f84e', 'omen@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(171, '', 1, 'breach', '827ccb0eea8a706c4c34a16891f84e', 'breach@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(172, '', 2, 'raze', '827ccb0eea8a706c4c34a16891f84e', 'raze@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(173, '', 2, 'reyna', '827ccb0eea8a706c4c34a16891f84e', 'reyna@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(174, '', 2, 'killjoy', '827ccb0eea8a706c4c34a16891f84e', 'killjoy@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(175, '', 1, 'yoru', '827ccb0eea8a706c4c34a16891f84e', 'yoru@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(176, '', 2, 'astra', '827ccb0eea8a706c4c34a16891f84e', 'astra@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(177, '', 1, 'chamber', '827ccb0eea8a706c4c34a16891f84e', 'chamber@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(178, '', 2, 'neon', '827ccb0eea8a706c4c34a16891f84e', 'neon@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(179, '', 2, 'fade', '827ccb0eea8a706c4c34a16891f84e', 'fade@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(180, '', 1, 'harbor', '827ccb0eea8a706c4c34a16891f84e', 'harbor@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(181, '', 1, 'gekko', '827ccb0eea8a706c4c34a16891f84e', 'gekko@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(182, '', 2, 'deadlock', '827ccb0eea8a706c4c34a16891f84e', 'deadlock@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(183, '', 1, 'isoo', '827ccb0eea8a706c4c34a16891f84e', 'iso@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(184, '', 2, 'clove', '827ccb0eea8a706c4c34a16891f84e', 'clove@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(185, '', 2, 'vyse', '827ccb0eea8a706c4c34a16891f84e', 'vyse@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(186, '', 1, 'tejo', '827ccb0eea8a706c4c34a16891f84e', 'tejo@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(187, '', 1, 'kayo', '827ccb0eea8a706c4c34a16891f84e', 'kayo@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(188, '', 2, 'troy', '827ccb0eea8a706c4c34a16891f84e', 'troy@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(189, '', 1, 'leon', '827ccb0eea8a706c4c34a16891f84e', 'leon@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(190, '', 1, 'riley', '827ccb0eea8a706c4c34a16891f84e', 'riley@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(191, '', 1, 'seth', '827ccb0eea8a706c4c34a16891f84e', 'seth@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(192, '', 1, 'natalie', '827ccb0eea8a706c4c34a16891f84e', 'natalie@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(193, '', 1, 'cody', '827ccb0eea8a706c4c34a16891f84e', 'cody@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(194, '', 1, 'victor', '827ccb0eea8a706c4c34a16891f84e', 'victor@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(195, '', 1, 'bentley', '827ccb0eea8a706c4c34a16891f84e', 'bentley@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(196, '', 1, 'lucas', '827ccb0eea8a706c4c34a16891f84e', 'lucas@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(197, '', 2, 'vanessa', '827ccb0eea8a706c4c34a16891f84e', 'vanessa@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(198, '', 1, 'otto', '827ccb0eea8a706c4c34a16891f84e', 'otto@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(199, '', 1, 'xander', '827ccb0eea8a706c4c34a16891f84e', 'xander@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(200, '', 1, 'stevie', '827ccb0eea8a706c4c34a16891f84e', 'stevie@gmail.com', '', '', 0, 0, '2025-02-24', 1, NULL),
(201, 'russell', 1, 'admin', '827ccb0eea8a706c4c34a16891f84e', 'russell@gmail.com', '0982564210', '', 0, 0, '2025-02-25', 1, '2003-02-28'),
(202, 'Hello', 2, 'hello', '827ccb0eea8a706c4c34a16891f84e', 'hello@gmail.com', '0936367673', '', 0, 0, '2025-02-25', 1, '2006-01-01'),
(203, 'Duck', 0, 'duck', '827ccb0eea8a706c4c34a16891f84e', 'duck@gmail.com', '0934343465', '', 0, 0, '2025-02-25', 1, '2004-02-21'),
(204, 'Apple', 2, 'apple', '827ccb0eea8a706c4c34a16891f84e', 'apple@gmail.com', '0987890210', '', 0, 0, '2025-02-26', 1, '1991-10-26'),
(205, 'Banana', 2, 'banana', '827ccb0eea8a706c4c34a16891f84e', 'banana@gmail.com', '0978456985', '', 0, 0, '2025-02-26', 1, '2016-01-04'),
(206, 'Melon', 0, 'melon', '827ccb0eea8a706c4c34a16891f84e', 'melon@gmail.com', '0975215898', '', 0, 0, '2025-02-26', 1, '2002-06-19'),
(209, 'Water', 1, 'water', '827ccb0eea8a706c4c34a16891f84e', 'water@gmail.com', '0975088554', '', 0, 0, '2025-02-27', 1, '2001-02-06'),
(210, 'grape', 1, 'grape', '827ccb0eea8a706c4c34a16891f84e', 'grape@gmail.com', '0978925614', '', 0, 0, '2025-02-27', 1, '1996-05-27'),
(211, 'Diddy', 1, 'diddy', '827ccb0eea8a706c4c34a16891f84e', 'daha71205@gmail.com', '0975856267', '', 0, 0, '2025-02-27', 1, '2010-01-03'),
(212, 'Hiii', 2, 'hiii', '827ccb0eea8a706c4c34a16891f84e', 'hiii@gmail.com', '0988521210', '', 0, 0, '2025-02-27', 1, '2004-02-27'),
(213, 'Haaa', 2, 'haaa', '12345', 'haaa@gmail.com', '0982888210', '', 0, 0, '2025-02-27', 1, '2007-02-27'),
(214, 'Gill', 2, 'gill', '827ccb0eea8a706c4c34a16891f84e', 'gill@gmail.com', '0966026267', '', 0, 0, '2025-02-27', 1, '2000-02-16'),
(215, 'Loll', 2, 'loll', '827ccb0eea8a706c4c34a16891f84e', 'loll@gmail.com', '099926267', '', 0, 0, '2025-02-27', 1, '2025-02-14'),
(216, 'Admin1', 1, 'admin1', '827ccb0eea8a706c4c34a16891f84e', 'admin1@gmail.com', '', '', 0, 0, '2025-02-27', 1, '2025-01-31');

-- --------------------------------------------------------

--
-- 資料表結構 `user_collection`
--

CREATE TABLE `user_collection` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_type` enum('course','product','hotel','article') NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `user_image`
--

CREATE TABLE `user_image` (
  `id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `user_order_list`
--

CREATE TABLE `user_order_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user-id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_account` (`account`),
  ADD UNIQUE KEY `unique_username_email` (`account`,`email`),
  ADD KEY `gender_id` (`gender_id`) USING BTREE;

--
-- 資料表索引 `user_collection`
--
ALTER TABLE `user_collection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`item_type`,`item_id`);

--
-- 資料表索引 `user_order_list`
--
ALTER TABLE `user_order_list`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_collection`
--
ALTER TABLE `user_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_order_list`
--
ALTER TABLE `user_order_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
