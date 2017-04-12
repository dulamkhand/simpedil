-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 03, 2014 at 01:51 AM
-- Server version: 5.5.36
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `urinesse_imdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `filename`, `sort`, `created_at`) VALUES
(1, 'b1.png', 10, '2014-02-28 02:40:11'),
(2, 'b2.png', 9, '2014-02-28 02:40:11'),
(3, 'b3.png', 8, '2014-02-28 02:40:22'),
(4, 'b4.png', 7, '2014-02-28 02:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `object_type`, `object_id`, `created_at`, `user_id`, `ip_address`, `name`, `text`) VALUES
(1, 'news', 7, '2012-05-08 07:20:08', 0, '127.0.0.1', '????', '???'),
(2, 'news', 8, '2012-05-08 07:24:02', 0, '127.0.0.1', 'sdgasd', 'adgasd'),
(3, 'news', 8, '2012-05-08 07:24:36', 0, '127.0.0.1', 'sadga', 'C????????? ??????? ?sasdgasdg?.'),
(4, 'news', 8, '2012-05-08 07:24:41', 0, '127.0.0.1', 'wetq3ertyqery', 'reywerywerywer'),
(5, 'news', 8, '2012-05-08 07:29:19', 0, '127.0.0.1', 'ayhaeryahdf', 'sjsdfjsfjg'),
(6, 'news', 8, '2012-05-08 07:29:31', 0, '127.0.0.1', 'adghah', 'adfhadfhadf'),
(7, 'news', 8, '2012-05-08 07:29:59', 0, '127.0.0.1', 'aghsd', 'asdhadfh'),
(8, 'news', 8, '2012-05-08 07:30:27', 0, '127.0.0.1', 'asdg', 'asdgasd'),
(9, 'news', 8, '2012-05-08 07:30:56', 0, '127.0.0.1', 'ag', 'adfghadfh'),
(10, 'news', 8, '2012-05-08 07:34:41', 0, '127.0.0.1', 'trtuierti', 'rylyul;ui'),
(11, 'news', 8, '2012-05-08 07:34:46', 0, '127.0.0.1', 'fyoltyuop', 'yiupyiopi'),
(12, 'news', 2, '2012-05-08 07:45:20', 0, '127.0.0.1', 'dadsg', 'asdgasdgsd'),
(13, 'news', 2, '2012-05-08 07:46:36', 0, '127.0.0.1', 'dfhsd', 'sdfhjsdf'),
(14, 'news', 2, '2012-05-08 07:46:39', 0, '127.0.0.1', 'sj', 'sfgj'),
(15, 'news', 2, '2012-05-08 07:46:46', 0, '127.0.0.1', 'sfgjsfg', 'sfgjsfg'),
(16, 'news', 2, '2012-05-08 07:47:35', 0, '127.0.0.1', 'aasdh', 'afhadf'),
(17, 'news', 2, '2012-05-08 07:47:38', 0, '127.0.0.1', 'sfujsj', 'sfhsadf'),
(18, 'news', 2, '2012-05-08 07:47:40', 0, '127.0.0.1', 'adf', 'sahf'),
(19, 'news', 2, '2012-05-08 07:47:45', 0, '127.0.0.1', 'adfhadfafh', 'afdhadfh'),
(20, 'news', 9, '2012-05-10 13:48:21', 0, '127.0.0.1', 'asd', 'adg'),
(21, 'news', 7, '2012-06-27 19:25:08', 0, '127.0.0.1', 'saf', 'asas');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `body_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_featuired` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `title_en`, `image`, `body`, `body_en`, `is_active`, `is_featuired`, `created_at`, `updated_at`) VALUES
(1, 'Шаварын ажил маш хялбар боллоо.', 'Шаварын ажил маш хялбар боллоо.', '3.jpg', 'Хайрга, элс, цементийг дээш давхарлуу зөөж хүн хүч болон цаг үрэхгүйгээр эдгээр бүхий л ажлыг маш энгийн, түргэн шуурхай материалыг барилгын давхруудад шахаж, хана шавардлагын ажлыг хийх арга зам, боломж ', 'Хайрга, элс, цементийг дээш давхарлуу зөөж хүн хүч болон цаг үрэхгүйгээр эдгээр бүхий л ажлыг маш энгийн, түргэн шуурхай материалыг барилгын давхруудад шахаж, хана шавардлагын ажлыг хийх арга зам, боломж ', 0, 0, '2011-12-19 18:16:35', '0000-00-00 00:00:00'),
(2, 'Дотор хамар хананы гипсэн блок', 'Дотор хамар хананы гипсэн блок', '1.jpg', ' Дотор тусгаарлах ханын гипсэн блок-ыг бид Монголд үйлдвэрлэн нийлүүлж байна.\r\nХэмжээ: Урт 60см х Өргөн 51см х Зузаан 10см\r\n\r\nГалд тэсвэртэй, дуу болон дулаан тусгаарлах үзүүлэлт өндөртэй. Цэвэр байгалийн гипсээр хийсэн, эрүүл мэндэд хоргүй.\r\nУгсархад амархан, шууд замаскдаж будах эсвэл ханын цаас наах боломжтой. Барилгын даац хөнгөн болгоно.\r\n\r\nҮНЭ ХЯМД, БАРИЛГЫН ӨРТӨГ БАГАСГАНА.', ' Дотор тусгаарлах ханын гипсэн блок-ыг бид Монголд үйлдвэрлэн нийлүүлж байна.\r\nХэмжээ: Урт 60см х Өргөн 51см х Зузаан 10см\r\n\r\nГалд тэсвэртэй, дуу болон дулаан тусгаарлах үзүүлэлт өндөртэй. Цэвэр байгалийн гипсээр хийсэн, эрүүл мэндэд хоргүй.\r\nУгсархад амархан, шууд замаскдаж будах эсвэл ханын цаас наах боломжтой. Барилгын даац хөнгөн болгоно.\r\n\r\nҮНЭ ХЯМД, БАРИЛГЫН ӨРТӨГ БАГАСГАНА.', 0, 0, '2012-01-25 23:43:40', '0000-00-00 00:00:00'),
(3, 'Кран ашиглахгүйгээр барилга угсралтын ажлыг гүйцэтгэх', 'Кран ашиглахгүйгээр барилга угсралтын ажлыг гүйцэтгэх', '2.jpg', 'Аюулгүй байдлыг хангасан, Богино хугацаанд хүн болон ачаа тээвэрлэнэ, Фасадны ажлыг хийх бүрэн боломжтой, 3тонн хүртэл даацтай, 0-150метрийн өндөр угсарч ашиглах боломжтой. 2-30метрийн урт тавцантай, Угсрах, буулгахад амар хялбар, хурдан. ', 'Аюулгүй байдлыг хангасан, Богино хугацаанд хүн болон ачаа тээвэрлэнэ, Фасадны ажлыг хийх бүрэн боломжтой, 3тонн хүртэл даацтай, 0-150метрийн өндөр угсарч ашиглах боломжтой. 2-30метрийн урт тавцантай, Угсрах, буулгахад амар хялбар, хурдан. ', 0, 0, '2012-01-25 23:48:15', '0000-00-00 00:00:00'),
(4, 'Хөдөлмөр хамгааллын Евро-норм нормативыг танилцуулах сургалт семинар болно ', 'Хөдөлмөр хамгааллын Евро-норм нормативыг танилцуулах сургалт семинар болно ', '4.jpg', '', '', 0, 0, '2012-01-26 21:19:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone`, `message`, `organization`, `created_at`) VALUES
(1, 'dulamkhand', 'handaatest1@handaatest1.pcm', 'dulamkhand', 'dulamkhand', '', '2012-04-15 19:11:45'),
(2, 'test', 'test@test.com', 'test', 'test', '', '2012-04-20 17:52:43'),
(3, 'test', 'test@test.com', 'test', 'test', '', '2012-04-20 17:53:01'),
(4, 'handaatest1', 'test@test.com', 'test', 'testa', '', '2012-04-20 17:53:16'),
(5, 'dulamkhand test', 'handaa.1224@gmail.com', 'tdulamkhand testtest', 'About product', 'test', '2012-05-08 04:11:26'),
(6, 'Your name', 'handaa.1224@gmail.com', 'Phone', 'About product', 'Organization', '2012-05-08 04:11:33'),
(7, '???? ???', 'handaa.1224@gmail.com', '????', '?????????????? ?????', '???????????', '2012-05-10 21:40:41'),
(8, '???? ???', 'dulamkhand@mobicom.mn', '????', '?????????????? ?????', '???????????', '2012-05-10 21:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_ru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `description_ru` text COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `title`, `title_en`, `title_ru`, `description`, `description_en`, `description_ru`, `filename`, `created_at`) VALUES
(1, 'Tilda Swinton', '', '', 'Haider Ackermann and Fred Leighton jewelry', '', '', 'c3698a054a9539dcd9c9168b685aa8b3af89a5a5.jpg', '2012-01-27 00:24:06'),
(2, 'Michelle Williams', '', '', 'Jason Wu, Judith Leiber clutch, and vintage Fred Leighton headband', '', '', '7a3a5580eaf7002d08754aeb34bba8eb712c81bd.jpg', '2012-01-27 00:24:42'),
(3, 'Emma Stone', '', '', 'Lanvin and Cartier clutch', '', '', '258b4912d0b3557b1bb5b8507c3536ba40d5b127.jpg', '2012-01-27 00:25:22'),
(4, 'Rooney Mara', '', '', 'Nina Ricci', '', '', '791f8bb31b8dcac1fd3651e4551044b2b2a2e88a.jpg', '2012-01-27 00:26:08'),
(5, 'Charlize Theron', '', '', 'Christian Dior and Cartier jewelry', '', '', '5ee06581c5d5f1a6079801e90e26cf21f004fd23.jpg', '2012-01-27 00:26:28'),
(6, 'Macy’s INC Collection Celebrates Kate Young', '', '', 'Last evening, Macy’s celebrated their collaboration with stylist to the stars Kate Young, who acted as editor-at-large for the department store’s spring 2012 INC catalogue...', '', '', '25799087f810b2199d87ad42bfc7c7a2278fc542.jpg', '2012-01-27 23:17:07'),
(7, 'America’s Most Sizzling Chefs ', '', '', 'From in-demand meatball slingers to a Vietnamese salad innovator, these guys have us drooling—and it’s not just because of their food', '', '', '6c22dabf2f793736063bc57da6654edfb8486fc1.jpg', '2012-01-27 23:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8_unicode_ci NOT NULL,
  `on_home` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `type`, `title_en`, `title`, `content`, `content_en`, `on_home`, `created_at`, `updated_at`) VALUES
(1, 'aboutus', '"SIMPEDIL MONGOLIA" LLC', '"СИМПЕДИЛ МОНГОЛИА" ХХК', ' "Симпедил ХХК" нь барилгын арматур төмрийн Тасдагч, Матагч, Нэгтгэгч, Дөрвөлжлөгч тоног төхөөрөмжүүдийн нийлүүлэлтийг хангах төв цэг болж чадсан бөгөөд нийт бэлтгэсэн бүтээгдэхүүнийхээ 95 хувийг дэлхийн маш олон оронд экспортлодог.\r\n2011 онд " Симпедил Монголиа" ХХК байгуулагдсан нь дан ганц шинэ зорилгод хүрэх хүсэл тэмүүлэл, ажлын сонирхол байсангүй, харин ч Монгол улсын тоног төхөөрөмжийн зах зээлийн эрэлт хэрэгцээ хангагдахгүй байгааг олж мэдсэн явдал байсан юм.\r\n"Симпедил Монголиа" ХХК нь тоног төхөөрөмж ашиглагч дотоодын барилгын компаниудад бэлэн бүтээгдэхүүнийг өргөн сонголттойгоор хүргэх, ингэхдээ боломжийн үнэ, техник технологийн дагалдсан туслалцаа, сургалтыг хослуулах санал тавин ажиллаж байна.\r\n"Симпедил Монгол" ХХК нь барилгын талбайдаа тоног төхөөрөмж шаардлагатай байгаа дотоодын барилгын компаниудын хамтран ажилладаг гол түнш нь болохыг зорьж байна.\r\n  Өнөөдөр " Симпедил Монголиа" ХХК хэрэглэгчиддээ:\r\n •    Итали улсад тэргүүлдэг өндөр чанартай бүх төрлийн барилгын тоног, төхөөрөмжүүд:\r\n       •    арматур төмрийн тоног төхөөрөмж\r\n       •    бетон зуурмагийн тоног төхөөрөмж\r\n       •    зам гүүрийн тоног төхөөрөмж\r\n       •    кран, өргөх буулгах механизм\r\n       •    цахилгаан багаж\r\n       •    хөдөлмөр хамгаалал, аюулгүйн ажиллагааны багаж тоног төхөөрөмж\r\n       •    компрессор, генератор\r\n       •    гагнуурын аппарат, насос, халуун үлээгч генератор\r\n       •    цахилгааны хэрэгсэл\r\n       •    гар багаж\r\n       •    хэмжилтийн багаж\r\n       •    барилгын гадна шат, лифт\r\n       •    үйлдвэр, агуулахын тоног төхөөрөмж\r\n•    Тоног төхөөрөмжийг ашиглах үнэгүй сургалт, зааварчилгаа\r\n•    Баталгаат хугацаа\r\n•    Сэлбэг хэрэгсэл\r\n\r\nТАНИЛЦУУЛГА ТАТАЖ ТОНОГ ТӨХӨӨРӨМЖҮҮДИЙН МЭДЭЭЛЭЛ АВАХ БОЛОМЖТОЙ.', ' "Симпедил ХХК" нь барилгын арматур төмрийн Тасдагч, Матагч, Нэгтгэгч, Дөрвөлжлөгч тоног төхөөрөмжүүдийн нийлүүлэлтийг хангах төв цэг болж чадсан бөгөөд нийт бэлтгэсэн бүтээгдэхүүнийхээ 95 хувийг дэлхийн маш олон оронд экспортлодог.\r\n2011 онд " Симпедил Монголиа" ХХК байгуулагдсан нь дан ганц шинэ зорилгод хүрэх хүсэл тэмүүлэл, ажлын сонирхол байсангүй, харин ч Монгол улсын тоног төхөөрөмжийн зах зээлийн эрэлт хэрэгцээ хангагдахгүй байгааг олж мэдсэн явдал байсан юм.\r\n"Симпедил Монголиа" ХХК нь тоног төхөөрөмж ашиглагч дотоодын барилгын компаниудад бэлэн бүтээгдэхүүнийг өргөн сонголттойгоор хүргэх, ингэхдээ боломжийн үнэ, техник технологийн дагалдсан туслалцаа, сургалтыг хослуулах санал тавин ажиллаж байна.\r\n"Симпедил Монгол" ХХК нь барилгын талбайдаа тоног төхөөрөмж шаардлагатай байгаа дотоодын барилгын компаниудын хамтран ажилладаг гол түнш нь болохыг зорьж байна.\r\n  Өнөөдөр " Симпедил Монголиа" ХХК хэрэглэгчиддээ:\r\n •    Итали улсад тэргүүлдэг өндөр чанартай бүх төрлийн барилгын тоног, төхөөрөмжүүд:\r\n       •    арматур төмрийн тоног төхөөрөмж\r\n       •    бетон зуурмагийн тоног төхөөрөмж\r\n       •    зам гүүрийн тоног төхөөрөмж\r\n       •    кран, өргөх буулгах механизм\r\n       •    цахилгаан багаж\r\n       •    хөдөлмөр хамгаалал, аюулгүйн ажиллагааны багаж тоног төхөөрөмж\r\n       •    компрессор, генератор\r\n       •    гагнуурын аппарат, насос, халуун үлээгч генератор\r\n       •    цахилгааны хэрэгсэл\r\n       •    гар багаж\r\n       •    хэмжилтийн багаж\r\n       •    барилгын гадна шат, лифт\r\n       •    үйлдвэр, агуулахын тоног төхөөрөмж\r\n•    Тоног төхөөрөмжийг ашиглах үнэгүй сургалт, зааварчилгаа\r\n•    Баталгаат хугацаа\r\n•    Сэлбэг хэрэгсэл\r\n\r\nТАНИЛЦУУЛГА ТАТАЖ ТОНОГ ТӨХӨӨРӨМЖҮҮДИЙН МЭДЭЭЛЭЛ АВАХ БОЛОМЖТОЙ.', 0, '2012-04-10 18:10:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

DROP TABLE IF EXISTS `poll`;
CREATE TABLE IF NOT EXISTS `poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `question_en` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`id`, `question`, `question_en`, `sort`, `created_at`, `updated_at`) VALUES
(1, '?? ???? ???????????? ???????????? ?????? ???????? ?????? ????? ???', '', 1, '2012-04-03 02:53:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `poll_option`
--

DROP TABLE IF EXISTS `poll_option`;
CREATE TABLE IF NOT EXISTS `poll_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `text_en` text COLLATE utf8_unicode_ci NOT NULL,
  `text_ru` text COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `poll_option`
--

INSERT INTO `poll_option` (`id`, `poll_id`, `text`, `text_en`, `text_ru`, `number`, `sort`) VALUES
(5, 1, '??????? ????????', '', '', 3, 1),
(6, 1, '??? ??????? ????????? ???????', '', '', 0, 1),
(7, 1, '???? ??????? ???????? ???????', '', '', 2, 1),
(8, 1, '????? ?????? ???????? ?????????', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL,
  `image5` varchar(255) NOT NULL,
  `image6` varchar(255) NOT NULL,
  `image7` varchar(255) NOT NULL,
  `image8` varchar(255) NOT NULL,
  `body` text,
  `body_en` text NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `flash` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `title_en`, `code`, `category_id`, `image`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `body`, `body_en`, `pdf`, `flash`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'Хүн, ачаа тээврийн лифт 1500кг', 'Rack & Pinion hoist 1500kg', 'p112534', 9, 'p1.png', '', '', '', '', '', '', '', '', NULL, '', '', '', 0, '2014-02-28 06:46:04', '0000-00-00 00:00:00'),
(9, 'Шавар зуурагч', 'Mixer - Protool', 'MXP 1000 EQ', 5, '300-36a18a9764855a28747e91b4458c71e4f244719a.jpg', '', '', '', '', '', '', '', '300-36a18a9764855a28747e91b4458c71e4f244719a1.jpg', NULL, '', '', '', 0, '2014-02-28 01:31:17', '0000-00-00 00:00:00'),
(11, 'Арматур таслагч', 'Cutting machine', 'C70', 22, '300-7ca7317b774a5262bdf37d132b56baea704272e1a.jpg', '300-7ca7317b774a5262bdf37d132b56baea704272e1b.jpg', '300-7ca7317b774a5262bdf37d132b56baea704272e1c.jpg', '', '', '', '', '', '300-7ca7317b774a5262bdf37d132b56baea704272e1d.jpg', NULL, '', '', '', 0, '2014-02-28 01:41:55', '0000-00-00 00:00:00'),
(12, 'Хана шавардагч', 'Spraying machine TURBOSOL - MINI AVANT', 'UNI30', 5, 'Spraying machine1.jpg', 'Spraying machine2.jpg', 'Spraying machine3.jpg', '', '', '', '', '', 'http://urin-essence.com/tip/imdb/web/u/p/Spraying%20machine4.jpg', NULL, '', '', '', 0, '2014-02-28 01:46:15', '0000-00-00 00:00:00'),
(13, 'Хана шавардагч', 'Spraying machine TURBOSOL', 'UNI30', 5, 'UNI30a.jpg', 'UNI30b.jpg', 'UNI30c.jpg', '', '', '', '', '', 'UNI30d.jpg', NULL, '', '', '', 0, '2014-02-28 01:48:37', '0000-00-00 00:00:00'),
(14, 'Бетон зуурмаг шахагч', 'TURBOSOL - Transmat 250E', '250E', 5, '250Ea.jpg', '250Eb.jpg', '250Ec.jpg', '', '', '', '', '', '250Ed.jpg', NULL, '', '', '', 0, '2014-02-28 01:56:10', '0000-00-00 00:00:00'),
(15, 'Бетон тэгшлэгч', 'Power screed', 'PS', 5, 'PS.jpg', 'PSa.jpg', 'PSb.jpg', 'PSc.jpg', '', '', '', '', 'PSd.jpg', NULL, '', '', '', 0, '2014-02-28 01:58:13', '0000-00-00 00:00:00'),
(16, 'Бетон өнгөлөгч', 'Power float', 'PF', 5, 'PF.jpg', 'PFa.jpg', '', '', '', '', '', '', 'PFb.jpg', NULL, '', '', '', 0, '2014-02-28 01:59:23', '0000-00-00 00:00:00'),
(17, 'Гагнуурын аппаратны гар', 'Welding kit', 'H01', 18, 'a1.jpg', 'b1.jpg', '', '', '', '', '', '', '', NULL, '', '', '', 0, '2014-03-03 08:10:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `parent_id`, `name`, `name_en`, `sort`, `created_at`, `updated_at`) VALUES
(5, 0, 'Бетон зуурмагийн тоног төхөөрөмж', 'Concrete equipment', 0, '2014-02-28 06:31:39', '0000-00-00 00:00:00'),
(6, 0, 'Зам гүүрний тоног төхөөрөмж', 'Road bridge device', 0, '2014-02-28 06:31:52', '0000-00-00 00:00:00'),
(7, 0, 'Цахилгаан багаж хэрэгсэл', 'Electrical apparatus', 0, '2014-02-28 06:31:52', '0000-00-00 00:00:00'),
(8, 0, 'Гар багаж', 'Hand Tools', 0, '2014-02-28 06:32:18', '0000-00-00 00:00:00'),
(9, 0, 'Лифт өргөж буулгах механизм', 'Lift the lower lift mechanism', 0, '2014-02-28 06:32:18', '0000-00-00 00:00:00'),
(10, 0, 'Хөдөлмөр хамгааллын хэрэгсэл', 'Safety supplies', 0, '2014-02-28 06:32:47', '0000-00-00 00:00:00'),
(11, 0, 'Гипсон хавтан', 'Gipson Tile', 0, '2014-02-28 06:32:47', '0000-00-00 00:00:00'),
(17, 7, 'Цахилгаан хөрөө ', 'Power saw', 0, '2014-02-28 01:14:13', '0000-00-00 00:00:00'),
(18, 8, 'Алх', 'Hammers', 0, '2014-02-28 01:17:25', '0000-00-00 00:00:00'),
(19, 8, 'Хүрз', 'Shovels', 0, '2014-02-28 01:17:25', '0000-00-00 00:00:00'),
(20, 8, 'Finishing tools', 'Төгсгөл багажнууд', 0, '2014-02-28 01:18:13', '0000-00-00 00:00:00'),
(21, 8, 'Бусад', 'Others', 0, '2014-02-28 01:18:13', '0000-00-00 00:00:00'),
(22, 0, 'Арматур төмрийн тоног төхөөрөмж', 'Rod iron hardware', 0, '2014-02-28 01:41:42', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `body_en` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `title`, `title_en`, `image`, `summary`, `summary_en`, `body`, `body_en`, `color`, `sort`, `created_at`) VALUES
(1, '???????? ???? ?????????', '???????? ???? ?????????', 'round-people.png', '', '', 'Хайрга, элс, цементийг дээш давхарлуу зөөж хүн хүч болон цаг үрэхгүйгээр эдгээр бүхий л ажлыг маш энгийн, түргэн шуурхай материалыг барилгын давхруудад шахаж, хана шавардлагын ажлыг хийх арга зам, боломж ', 'Хайрга, элс, цементийг дээш давхарлуу зөөж хүн хүч болон цаг үрэхгүйгээр эдгээр бүхий л ажлыг маш энгийн, түргэн шуурхай материалыг барилгын давхруудад шахаж, хана шавардлагын ажлыг хийх арга зам, боломж ', 'D63333', 320, '2012-04-15 19:57:56'),
(2, '?????? ?????????', '?????? ?????????', 'round-settings.png', '', '', '???????? ??????? ????????? ???????? DN20-DN50 ????????? ??????? ????????? ?????? ?????????? ???? ????? ????????? ????? ?????????? ??????? ?????. DN65 – DN150 ????????? ??????? ????????? ???????? ???? ??? ??????? ???????.', '???????? ??????? ????????? ???????? DN20-DN50 ????????? ??????? ????????? ?????? ?????????? ???? ????? ????????? ????? ?????????? ??????? ?????. DN65 – DN150 ????????? ??????? ????????? ???????? ???? ??? ??????? ???????.', 'F99D1C', 320, '2012-04-15 20:43:48'),
(6, '????????????', '????????????', 'round-tag.png', 'MULTICAL ???????? ????????? ????????????? ????? ????? ????? ?????? ????? ???????????. ????? ????????? ???? ?????????? 90O?-??? ?? ??? ??????? ?????????? ????????? ???????? ?????? MULTICAL ??????? ???????????? ?????? ????????????? ????????.', 'MULTICAL ???????? ????????? ????????????? ????? ????? ????? ?????? ????? ???????????. ????? ????????? ???? ?????????? 90O?-??? ?? ??? ??????? ?????????? ????????? ???????? ?????? MULTICAL ??????? ???????????? ?????? ????????????? ????????.', '??? ????????? ???????????? ???? ULTRAFLOW ??????? ?????????? ??????? ????? ????? ?????? ?? ???????? ???????????? ??? ??????? ??????? 1.5 ???, ??????? ???? ???????????? ??? 2.5 ??? (DN80 ?????????? ????????? ????? 4.5 ???) ?????. ??? ???????? ???????????? 80?? ??????? ??????????? ?????????. \r\n?????????? ?????? ??????? ???????? ????? ?????? ???????? 25 ??-??? ?? ???? ?????????? ??????????.  \r\n ?????????????? ?? ??????????????? ????? ?? ??????? ????? ??????????. ????? ?????????? 5…55°C ??????? ?????.\r\n?????????? ?????????? ???? ????? ????? ???? ???????????? ???????? ??????? ?????? ??????? ?? ???????? ?????? ??????? ???? ????????? ??????????????? ?????. ????? ? ??? ??? ?????????? ??? ?????? ??????? ????????. \r\n', '??? ????????? ???????????? ???? ULTRAFLOW ??????? ?????????? ??????? ????? ????? ?????? ?? ???????? ???????????? ??? ??????? ??????? 1.5 ???, ??????? ???? ???????????? ??? 2.5 ??? (DN80 ?????????? ????????? ????? 4.5 ???) ?????. ??? ???????? ???????????? 80?? ??????? ??????????? ?????????. \r\n?????????? ?????? ??????? ???????? ????? ?????? ???????? 25 ??-??? ?? ???? ?????????? ??????????.  \r\n ?????????????? ?? ??????????????? ????? ?? ??????? ????? ??????????. ????? ?????????? 5…55°C ??????? ?????.\r\n?????????? ?????????? ???? ????? ????? ???? ???????????? ???????? ??????? ?????? ??????? ?? ???????? ?????? ??????? ???? ????????? ??????????????? ?????. ????? ? ??? ??? ?????????? ??? ?????? ??????? ????????. \r\n', '004B75', 480, '2012-05-06 01:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logged_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `is_active`, `created_at`, `updated_at`, `logged_at`) VALUES
(1, 'icon_admin', '11611531cc390b3d047142569042fca3', 'handaa.1224@gmail.com', 1, '2011-02-01 11:04:13', '0000-00-00 00:00:00', '2011-02-01 11:04:13'),
(2, '', '1cf8d706d83bf92dd9b2ab9597174519', 'info@icon.mn', 1, '2012-08-21 07:33:13', '2012-08-21 07:33:52', '0000-00-00 00:00:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `poll_option`
--
ALTER TABLE `poll_option`
  ADD CONSTRAINT `poll_option_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
