-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-02-28 13:38:22
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
-- 資料庫： `bark-bijou`
--

-- --------------------------------------------------------

--
-- 資料表結構 `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `status` enum('pending','confirmed','cancelled') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `introduction` text DEFAULT NULL,
  `price_per_night` decimal(10,2) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `total_rooms` int(11) NOT NULL DEFAULT 10,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `valid` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `hotel`
--

INSERT INTO `hotel` (`id`, `hotel_name`, `image_path`, `type_id`, `introduction`, `price_per_night`, `address`, `phone`, `total_rooms`, `create_time`, `valid`) VALUES
(1, '毛孩天堂', 'uploads/mao_hai_tian_tang.jpg', 2, '提供溫馨舒適的環境，專為小型犬設計。', 1200.00, '台北市大安區忠孝東路四段100號', '02-1234-5678', 10, '2025-02-28 12:27:39', 1),
(2, '汪星人樂園', 'uploads/wang_xing_ren_le_yuan.jpg', 3, '寬敞的活動空間，讓中型犬盡情奔跑。', 1500.00, '新北市板橋區文化路一段200號', '02-9876-5432', 15, '2025-02-28 12:27:39', 1),
(3, '貴族犬舍', 'uploads/gui_zu_quan_she.jpg', 4, '豪華裝潢，提供大型犬專屬的舒適空間。', 2000.00, '高雄市前鎮區成功路300號', '07-1234-5678', 8, '2025-02-28 12:27:39', 1),
(4, '迷你犬之家', 'uploads/mini_quan_zhi_jia.jpg', 1, '專為迷你犬打造的精緻小窩。', 1000.00, '台中市西屯區市政路400號', '04-1234-5678', 12, '2025-02-28 12:27:39', 1),
(5, '快樂汪汪', 'uploads/kuai_le_wang_wang.jpg', 2, '友善的環境，讓小型犬快樂無憂。', 1300.00, '桃園市中壢區中正路500號', '03-1234-5678', 10, '2025-02-28 12:27:39', 1),
(6, '犬貓共融', 'uploads/quan_mao_gong_rong.jpg', 3, '提供犬貓分開的空間，適合中型犬。', 1600.00, '台南市東區大學路600號', '06-1234-5678', 14, '2025-02-28 12:27:39', 1),
(7, '豪華犬宮', 'uploads/hao_hua_quan_gong.jpg', 4, '頂級服務，專為大型犬設計的豪華旅館。', 2500.00, '台北市信義區松仁路700號', '02-8765-4321', 6, '2025-02-28 12:27:39', 1),
(8, '小犬樂園', 'uploads/xiao_quan_le_yuan.jpg', 1, '迷你犬的專屬樂園，提供多種玩具。', 1100.00, '新竹市東區科學路800號', '03-5678-1234', 12, '2025-02-28 12:27:39', 1),
(9, '汪汪之家', 'uploads/wang_wang_zhi_jia.jpg', 2, '家庭式照顧，讓小型犬有家的感覺。', 1400.00, '嘉義市西區文化路900號', '05-1234-5678', 10, '2025-02-28 12:27:39', 1),
(10, '犬舍天堂', 'uploads/quan_she_tian_tang.jpg', 3, '專業照顧，適合中型犬的舒適環境。', 1700.00, '台東市中山路1000號', '089-1234-5678', 12, '2025-02-28 12:27:39', 1),
(11, '巨犬之家', 'uploads/ju_quan_zhi_jia.jpg', 4, '專為大型犬設計的寬敞空間。', 2200.00, '花蓮市國聯路1100號', '03-8765-4321', 8, '2025-02-28 12:27:39', 1),
(12, '迷你犬樂園', 'uploads/mini_quan_le_yuan.jpg', 1, '迷你犬的歡樂天地，提供多種活動。', 1200.00, '屏東市自由路1200號', '08-1234-5678', 10, '2025-02-28 12:27:39', 1),
(13, '汪星人天堂', 'uploads/wang_xing_ren_tian_tang.jpg', 2, '專業照顧，讓小型犬安心入住。', 1300.00, '宜蘭市中山路1300號', '03-9876-5432', 10, '2025-02-28 12:27:39', 1),
(14, '犬貓之家', 'uploads/quan_mao_zhi_jia.jpg', 3, '提供犬貓分開的空間，適合中型犬。', 1600.00, '基隆市仁愛路1400號', '02-2468-1357', 12, '2025-02-28 12:27:39', 1),
(15, '豪華犬舍', 'uploads/hao_hua_quan_she.jpg', 4, '頂級服務，專為大型犬設計。', 2500.00, '台北市中山區南京東路1500號', '02-2712-3456', 6, '2025-02-28 12:27:39', 1),
(16, '小犬之家', 'uploads/xiao_quan_zhi_jia.jpg', 1, '迷你犬的溫馨小窩，提供貼心照顧。', 1100.00, '新北市三重區重陽路1600號', '02-2987-6543', 10, '2025-02-28 12:27:39', 1),
(17, '快樂犬舍', 'uploads/kuai_le_quan_she.jpg', 2, '友善的環境，讓小型犬快樂無憂。', 1400.00, '桃園市桃園區中正路1700號', '03-3312-3456', 10, '2025-02-28 12:27:39', 1),
(18, '犬貓樂園', 'uploads/quan_mao_le_yuan.jpg', 3, '提供犬貓分開的空間，適合中型犬。', 1700.00, '台中市北屯區崇德路1800號', '04-2234-5678', 12, '2025-02-28 12:27:39', 1),
(19, '巨犬樂園', 'uploads/ju_quan_le_yuan.jpg', 4, '專為大型犬設計的寬敞空間。', 2200.00, '高雄市楠梓區德民路1900號', '07-3627-8901', 8, '2025-02-28 12:27:39', 1),
(20, '迷你犬天堂', 'uploads/mini_quan_tian_tang.jpg', 1, '迷你犬的歡樂天地，提供多種活動。', 1200.00, '台南市安平區安平路2000號', '06-2212-3456', 10, '2025-02-28 12:27:39', 1),
(21, '汪星人之家', 'uploads/wang_xing_ren_zhi_jia.jpg', 2, '專業照顧，讓小型犬安心入住。', 1300.00, '新竹市北區西大路2100號', '03-5222-3456', 10, '2025-02-28 12:27:39', 1),
(22, '犬貓天堂', 'uploads/quan_mao_tian_tang.jpg', 3, '提供犬貓分開的空間，適合中型犬。', 1600.00, '嘉義市東區忠孝路2200號', '05-2777-8901', 12, '2025-02-28 12:27:39', 1),
(23, '豪華犬樂園', 'uploads/hao_hua_quan_le_yuan.jpg', 4, '頂級服務，專為大型犬設計。', 2500.00, '花蓮市國聯路2300號', '03-8222-3456', 6, '2025-02-28 12:27:39', 1),
(24, '小犬天堂', 'uploads/xiao_quan_tian_tang.jpg', 1, '迷你犬的溫馨小窩，提供貼心照顧。', 1100.00, '屏東市自由路2400號', '08-7322-3456', 10, '2025-02-28 12:27:39', 1),
(25, '快樂汪星人', 'uploads/kuai_le_wang_xing_ren.jpg', 2, '友善的環境，讓小型犬快樂無憂。', 1400.00, '宜蘭市中山路2500號', '03-9322-3456', 10, '2025-02-28 12:27:39', 1),
(26, '犬貓之家', 'uploads/quan_mao_zhi_jia_2.jpg', 3, '提供犬貓分開的空間，適合中型犬。', 1700.00, '基隆市仁愛路2600號', '02-2422-3456', 12, '2025-02-28 12:27:39', 1),
(27, '巨犬天堂', 'uploads/ju_quan_tian_tang.jpg', 4, '專為大型犬設計的寬敞空間。', 2200.00, '台北市大安區忠孝東路四段2700號', '02-2722-3456', 8, '2025-02-28 12:27:39', 1),
(28, '迷你犬樂園', 'uploads/mini_quan_le_yuan_2.jpg', 1, '迷你犬的歡樂天地，提供多種活動。', 1200.00, '新北市板橋區文化路一段2800號', '02-2966-7890', 10, '2025-02-28 12:27:39', 1),
(29, '汪星人樂園', 'uploads/wang_xing_ren_le_yuan_2.jpg', 2, '專業照顧，讓小型犬安心入住。', 1300.00, '桃園市中壢區中正路2900號', '03-4256-7890', 10, '2025-02-28 12:27:39', 1),
(30, '犬貓天堂', 'uploads/quan_mao_tian_tang_2.jpg', 3, '提供犬貓分開的空間，適合中型犬。', 1600.00, '台中市西屯區市政路3000號', '04-2256-7890', 12, '2025-02-28 12:27:39', 1),
(31, '寵物夢工廠', 'uploads/chong_wu_meng_gong_chang.jpg', 2, '創意十足的環境，讓小型犬享受夢幻假期。', 1350.00, '台北市松山區復興南路一段3100號', '02-2345-6789', 10, '2025-02-28 12:32:47', 1),
(32, '犬樂天地', 'uploads/quan_le_tian_di.jpg', 3, '寬敞的遊戲區，適合中型犬放鬆玩耍。', 1650.00, '新北市新店區北新路三段3200號', '02-8912-3456', 12, '2025-02-28 12:32:47', 1),
(33, '皇家犬舍', 'uploads/huang_jia_quan_she.jpg', 4, '皇室般的待遇，專為大型犬打造。', 2300.00, '高雄市左營區自由二路3300號', '07-3456-7890', 8, '2025-02-28 12:32:47', 1),
(34, '迷你犬星空', 'uploads/mini_quan_xing_kong.jpg', 1, '星空主題房間，給迷你犬夢幻體驗。', 1150.00, '台中市南屯區向上路一段3400號', '04-2345-6789', 10, '2025-02-28 12:32:47', 1),
(35, '汪汪樂園', 'uploads/wang_wang_le_yuan.jpg', 2, '充滿歡樂的環境，適合小型犬社交。', 1450.00, '桃園市八德區介壽路二段3500號', '03-4567-8901', 10, '2025-02-28 12:32:47', 1),
(36, '犬貓星球', 'uploads/quan_mao_xing_qiu.jpg', 3, '星球主題空間，犬貓分區居住。', 1750.00, '台南市中西區西門路一段3600號', '06-3456-7890', 12, '2025-02-28 12:32:47', 1),
(37, '豪華犬苑', 'uploads/hao_hua_quan_yuan.jpg', 4, '豪華設施，讓大型犬享受頂級服務。', 2400.00, '台北市內湖區內湖路一段3700號', '02-5678-9012', 6, '2025-02-28 12:32:47', 1),
(38, '小犬星際', 'uploads/xiao_quan_xing_ji.jpg', 1, '星際風格，迷你犬的科幻之旅。', 1050.00, '新竹市東區光復路二段3800號', '03-6789-0123', 10, '2025-02-28 12:32:47', 1),
(39, '汪星人之家', 'uploads/wang_xing_ren_zhi_jia_2.jpg', 2, '溫暖的家庭氛圍，適合小型犬。', 1350.00, '嘉義市東區忠孝路3900號', '05-4567-8901', 10, '2025-02-28 12:32:47', 1),
(40, '犬樂森林', 'uploads/quan_le_sen_lin.jpg', 3, '森林風環境，讓中型犬親近自然。', 1650.00, '台東市更生路4000號', '089-5678-9012', 12, '2025-02-28 12:32:47', 1),
(41, '巨犬星空', 'uploads/ju_quan_xing_kong.jpg', 4, '寬敞星空房，專為大型犬設計。', 2250.00, '花蓮市中美路4100號', '03-7890-1234', 8, '2025-02-28 12:32:47', 1),
(42, '迷你犬花園', 'uploads/mini_quan_hua_yuan.jpg', 1, '花園主題，迷你犬的夢幻樂園。', 1150.00, '屏東市民族路4200號', '08-6789-0123', 10, '2025-02-28 12:32:47', 1),
(43, '汪汪星球', 'uploads/wang_wang_xing_qiu.jpg', 2, '星球風設計，小型犬的奇幻之旅。', 1400.00, '宜蘭市宜興路一段4300號', '03-8901-2345', 10, '2025-02-28 12:32:47', 1),
(44, '犬貓森林', 'uploads/quan_mao_sen_lin.jpg', 3, '森林主題，讓中型犬享受自然。', 1700.00, '基隆市信一路4400號', '02-9012-3456', 12, '2025-02-28 12:32:47', 1),
(45, '豪華犬星際', 'uploads/hao_hua_quan_xing_ji.jpg', 4, '星際豪華房，給大型犬頂級享受。', 2450.00, '台北市文山區景美街4500號', '02-0123-4567', 6, '2025-02-28 12:32:47', 1),
(46, '小犬花園', 'uploads/xiao_quan_hua_yuan.jpg', 1, '花園風小屋，迷你犬的舒適之家。', 1050.00, '新北市淡水區中正東路4600號', '02-1234-5678', 10, '2025-02-28 12:32:47', 1),
(47, '快樂汪之家', 'uploads/kuai_le_wang_zhi_jia.jpg', 2, '溫馨環境，讓小型犬快樂入住。', 1450.00, '桃園市龍潭區中正路4700號', '03-2345-6789', 10, '2025-02-28 12:32:47', 1),
(48, '犬樂星際', 'uploads/quan_le_xing_ji.jpg', 3, '星際風設計，中型犬的奇幻空間。', 1750.00, '台中市西區台灣大道二段4800號', '04-3456-7890', 12, '2025-02-28 12:32:47', 1),
(49, '巨犬花園', 'uploads/ju_quan_hua_yuan.jpg', 4, '花園式寬敞空間，適合大型犬。', 2300.00, '高雄市鼓山區美術館路4900號', '07-4567-8901', 8, '2025-02-28 12:32:47', 1),
(50, '迷你犬之家二號店', 'uploads/mini_quan_zhi_jia_2.jpg', 1, '迷你犬的第二個溫馨之家，提供貼心服務。', 1100.00, '台南市北區公園路5000號', '06-5678-9012', 10, '2025-02-28 12:32:47', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(3, '中型犬'),
(4, '大型犬'),
(2, '小型犬'),
(1, '迷你犬');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- 資料表索引 `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- 資料表索引 `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`);

--
-- 資料表的限制式 `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
