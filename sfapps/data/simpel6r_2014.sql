-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2014 at 06:47 PM
-- Server version: 5.1.63-rel13.4-log
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `simpel6r_2014`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `filename`, `sort`, `created_at`) VALUES
(1, 'b1.png', 10, '2014-02-28 11:40:11'),
(2, 'b2.png', 9, '2014-02-28 11:40:11'),
(3, 'b3.png', 8, '2014-02-28 11:40:22'),
(4, 'b4.png', 7, '2014-02-28 11:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

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
(1, 'news', 7, '2012-05-08 16:20:08', 0, '127.0.0.1', '????', '???'),
(2, 'news', 8, '2012-05-08 16:24:02', 0, '127.0.0.1', 'sdgasd', 'adgasd'),
(3, 'news', 8, '2012-05-08 16:24:36', 0, '127.0.0.1', 'sadga', 'C????????? ??????? ?sasdgasdg?.'),
(4, 'news', 8, '2012-05-08 16:24:41', 0, '127.0.0.1', 'wetq3ertyqery', 'reywerywerywer'),
(5, 'news', 8, '2012-05-08 16:29:19', 0, '127.0.0.1', 'ayhaeryahdf', 'sjsdfjsfjg'),
(6, 'news', 8, '2012-05-08 16:29:31', 0, '127.0.0.1', 'adghah', 'adfhadfhadf'),
(7, 'news', 8, '2012-05-08 16:29:59', 0, '127.0.0.1', 'aghsd', 'asdhadfh'),
(8, 'news', 8, '2012-05-08 16:30:27', 0, '127.0.0.1', 'asdg', 'asdgasd'),
(9, 'news', 8, '2012-05-08 16:30:56', 0, '127.0.0.1', 'ag', 'adfghadfh'),
(10, 'news', 8, '2012-05-08 16:34:41', 0, '127.0.0.1', 'trtuierti', 'rylyul;ui'),
(11, 'news', 8, '2012-05-08 16:34:46', 0, '127.0.0.1', 'fyoltyuop', 'yiupyiopi'),
(12, 'news', 2, '2012-05-08 16:45:20', 0, '127.0.0.1', 'dadsg', 'asdgasdgsd'),
(13, 'news', 2, '2012-05-08 16:46:36', 0, '127.0.0.1', 'dfhsd', 'sdfhjsdf'),
(14, 'news', 2, '2012-05-08 16:46:39', 0, '127.0.0.1', 'sj', 'sfgj'),
(15, 'news', 2, '2012-05-08 16:46:46', 0, '127.0.0.1', 'sfgjsfg', 'sfgjsfg'),
(16, 'news', 2, '2012-05-08 16:47:35', 0, '127.0.0.1', 'aasdh', 'afhadf'),
(17, 'news', 2, '2012-05-08 16:47:38', 0, '127.0.0.1', 'sfujsj', 'sfhsadf'),
(18, 'news', 2, '2012-05-08 16:47:40', 0, '127.0.0.1', 'adf', 'sahf'),
(19, 'news', 2, '2012-05-08 16:47:45', 0, '127.0.0.1', 'adfhadfafh', 'afdhadfh'),
(20, 'news', 9, '2012-05-10 22:48:21', 0, '127.0.0.1', 'asd', 'adg'),
(21, 'news', 7, '2012-06-28 04:25:08', 0, '127.0.0.1', 'saf', 'asas');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `body_en` text COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_featuired` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `title_en`, `image`, `body`, `body_en`, `is_active`, `is_featuired`, `created_at`, `updated_at`) VALUES
(1, 'Шаварын ажил маш хялбар боллоо.', 'Шаварын ажил маш хялбар боллоо.', '3.jpg', 'Хайрга, элс, цементийг дээш давхарлуу зөөж хүн хүч болон цаг үрэхгүйгээр эдгээр бүхий л ажлыг маш энгийн, түргэн шуурхай материалыг барилгын давхруудад шахаж, хана шавардлагын ажлыг хийх арга зам, боломж ', 'Хайрга, элс, цементийг дээш давхарлуу зөөж хүн хүч болон цаг үрэхгүйгээр эдгээр бүхий л ажлыг маш энгийн, түргэн шуурхай материалыг барилгын давхруудад шахаж, хана шавардлагын ажлыг хийх арга зам, боломж ', 0, 0, '2011-12-20 03:16:35', '0000-00-00 00:00:00'),
(2, 'Дотор хамар хананы гипсэн блок', 'Дотор хамар хананы гипсэн блок', '1.jpg', ' Дотор тусгаарлах ханын гипсэн блок-ыг бид Монголд үйлдвэрлэн нийлүүлж байна.\r\nХэмжээ: Урт 60см х Өргөн 51см х Зузаан 10см\r\n\r\nГалд тэсвэртэй, дуу болон дулаан тусгаарлах үзүүлэлт өндөртэй. Цэвэр байгалийн гипсээр хийсэн, эрүүл мэндэд хоргүй.\r\nУгсархад амархан, шууд замаскдаж будах эсвэл ханын цаас наах боломжтой. Барилгын даац хөнгөн болгоно.\r\n\r\nҮНЭ ХЯМД, БАРИЛГЫН ӨРТӨГ БАГАСГАНА.', ' Дотор тусгаарлах ханын гипсэн блок-ыг бид Монголд үйлдвэрлэн нийлүүлж байна.\r\nХэмжээ: Урт 60см х Өргөн 51см х Зузаан 10см\r\n\r\nГалд тэсвэртэй, дуу болон дулаан тусгаарлах үзүүлэлт өндөртэй. Цэвэр байгалийн гипсээр хийсэн, эрүүл мэндэд хоргүй.\r\nУгсархад амархан, шууд замаскдаж будах эсвэл ханын цаас наах боломжтой. Барилгын даац хөнгөн болгоно.\r\n\r\nҮНЭ ХЯМД, БАРИЛГЫН ӨРТӨГ БАГАСГАНА.', 0, 0, '2012-01-26 08:43:40', '0000-00-00 00:00:00'),
(3, 'КРАН АШИГЛАХГҮЙГЭЭР БАРИЛГА УГСРАЛТЫН АЖЛУУДЫГ ГҮЙЦЭТГЭХ', 'КРАН АШИГЛАХГҮЙГЭЭР БАРИЛГА УГСРАЛТЫН АЖЛУУДЫГ ГҮЙЦЭТГЭХ', '2.jpg', 'Аюулгүй байдлыг хангасан, Богино хугацаанд хүн болон ачаа тээвэрлэнэ, Фасадны ажлыг хийх бүрэн боломжтой, 3тонн хүртэл даацтай, 0-150метрийн өндөр угсарч ашиглах боломжтой. 2-30метрийн урт тавцантай, Угсрах, буулгахад амар хялбар, хурдан. ', 'Аюулгүй байдлыг хангасан, Богино хугацаанд хүн болон ачаа тээвэрлэнэ, Фасадны ажлыг хийх бүрэн боломжтой, 3тонн хүртэл даацтай, 0-150метрийн өндөр угсарч ашиглах боломжтой. 2-30метрийн урт тавцантай, Угсрах, буулгахад амар хялбар, хурдан. ', 0, 0, '2012-01-26 08:48:15', '0000-00-00 00:00:00'),
(4, 'Хөдөлмөр хамгааллын Евро-норм нормативыг танилцуулах сургалт семинар болно ', 'Хөдөлмөр хамгааллын Евро-норм нормативыг танилцуулах сургалт семинар болно ', '4.jpg', '', '', 0, 0, '2012-01-27 06:19:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

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
(1, 'dulamkhand', 'handaatest1@handaatest1.pcm', 'dulamkhand', 'dulamkhand', '', '2012-04-16 04:11:45'),
(2, 'test', 'test@test.com', 'test', 'test', '', '2012-04-21 02:52:43'),
(3, 'test', 'test@test.com', 'test', 'test', '', '2012-04-21 02:53:01'),
(4, 'handaatest1', 'test@test.com', 'test', 'testa', '', '2012-04-21 02:53:16'),
(5, 'dulamkhand test', 'handaa.1224@gmail.com', 'tdulamkhand testtest', 'About product', 'test', '2012-05-08 13:11:26'),
(6, 'Your name', 'handaa.1224@gmail.com', 'Phone', 'About product', 'Organization', '2012-05-08 13:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

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
(1, 'Tilda Swinton', '', '', 'Haider Ackermann and Fred Leighton jewelry', '', '', 'c3698a054a9539dcd9c9168b685aa8b3af89a5a5.jpg', '2012-01-27 09:24:06'),
(2, 'Michelle Williams', '', '', 'Jason Wu, Judith Leiber clutch, and vintage Fred Leighton headband', '', '', '7a3a5580eaf7002d08754aeb34bba8eb712c81bd.jpg', '2012-01-27 09:24:42'),
(3, 'Emma Stone', '', '', 'Lanvin and Cartier clutch', '', '', '258b4912d0b3557b1bb5b8507c3536ba40d5b127.jpg', '2012-01-27 09:25:22'),
(4, 'Rooney Mara', '', '', 'Nina Ricci', '', '', '791f8bb31b8dcac1fd3651e4551044b2b2a2e88a.jpg', '2012-01-27 09:26:08'),
(5, 'Charlize Theron', '', '', 'Christian Dior and Cartier jewelry', '', '', '5ee06581c5d5f1a6079801e90e26cf21f004fd23.jpg', '2012-01-27 09:26:28'),
(6, 'Macy’s INC Collection Celebrates Kate Young', '', '', 'Last evening, Macy’s celebrated their collaboration with stylist to the stars Kate Young, who acted as editor-at-large for the department store’s spring 2012 INC catalogue...', '', '', '25799087f810b2199d87ad42bfc7c7a2278fc542.jpg', '2012-01-28 08:17:07'),
(7, 'America’s Most Sizzling Chefs ', '', '', 'From in-demand meatball slingers to a Vietnamese salad innovator, these guys have us drooling—and it’s not just because of their food', '', '', '6c22dabf2f793736063bc57da6654edfb8486fc1.jpg', '2012-01-28 08:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8_unicode_ci NOT NULL,
  `on_home` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `type`, `title_en`, `title`, `image`, `content`, `content_en`, `on_home`, `created_at`, `updated_at`) VALUES
(1, 'aboutus', '"SIMPEDIL MONGOLIA" LLC', '"СИМПЕДИЛ МОНГОЛИА" ХХК', 'f3f7d964fff2d31b63dec298edd75a46105b4b22.jpg', '<p>&quot;Симпедил ХХК&quot; нь барилгын арматур төмрийн Тасдагч, Матагч, Нэгтгэгч, Дөрвөлжлөгч тоног төхөөрөмжүүдийн нийлүүлэлтийг хангах төв цэг болж чадсан бөгөөд нийт бэлтгэсэн бүтээгдэхүүнийхээ 95 хувийг дэлхийн маш олон оронд экспортлодог. 2011 онд &quot; Симпедил Монголиа&quot; ХХК байгуулагдсан нь дан ганц шинэ зорилгод хүрэх хүсэл тэмүүлэл, ажлын сонирхол байсангүй, харин ч Монгол улсын тоног төхөөрөмжийн зах зээлийн эрэлт хэрэгцээ хангагдахгүй байгааг олж мэдсэн явдал байсан юм. &quot;Симпедил Монголиа&quot; ХХК нь тоног төхөөрөмж ашиглагч дотоодын барилгын компаниудад бэлэн бүтээгдэхүүнийг өргөн сонголттойгоор хүргэх, ингэхдээ боломжийн үнэ, техник технологийн дагалдсан туслалцаа, сургалтыг хослуулах санал тавин ажиллаж байна.</p>', '<p>&quot;Симпедил ХХК&quot; нь барилгын арматур төмрийн Тасдагч, Матагч, Нэгтгэгч,  Дөрвөлжлөгч тоног төхөөрөмжүүдийн нийлүүлэлтийг хангах төв цэг болж  чадсан бөгөөд нийт бэлтгэсэн бүтээгдэхүүнийхээ 95 хувийг дэлхийн маш  олон оронд экспортлодог. 2011 онд &quot; Симпедил Монголиа&quot; ХХК байгуулагдсан нь дан ганц шинэ  зорилгод хүрэх хүсэл тэмүүлэл, ажлын сонирхол байсангүй, харин ч Монгол  улсын тоног төхөөрөмжийн зах зээлийн эрэлт хэрэгцээ хангагдахгүй байгааг  олж мэдсэн явдал байсан юм. &quot;Симпедил Монголиа&quot; ХХК нь тоног төхөөрөмж ашиглагч дотоодын барилгын  компаниудад бэлэн бүтээгдэхүүнийг өргөн сонголттойгоор хүргэх, ингэхдээ  боломжийн үнэ, техник технологийн дагалдсан туслалцаа, сургалтыг  хослуулах санал тавин ажиллаж байна.</p>', 0, '2012-04-11 03:10:30', '0000-00-00 00:00:00'),
(2, 'gypsum', 'Гипсэн хавтан', 'Gypsum board', 'gypsum.jpg', 'Модон каркасан барилгын дотор талын хананд гипсэн хавтанг хамгийн өргөн хэрэглэдэг. Энэ нь дотор талын заслын ажил хийхэд тэгш, толигор гадаргуу болохоос гадна галд тэсвэртэй материал юм. Галд тэсвэртэй гипсэн хавтан нь барилгын дотор гал гарсан тохиолдолд 1-1.30 цаг галыг модон хийцрүү тархахаас хамгаалж байдаг. Европийн зах зээлд томоохон байр суурь эзэлээд зогсохгүй дэлхийн хэмжээний барилгын материалын шилдэг компаниудын нэг болтлоо хөгжсөн.', 'Модон каркасан барилгын дотор талын хананд гипсэн хавтанг хамгийн өргөн хэрэглэдэг. Энэ нь дотор талын заслын ажил хийхэд тэгш, толигор гадаргуу болохоос гадна галд тэсвэртэй материал юм. Галд тэсвэртэй гипсэн хавтан нь барилгын дотор гал гарсан тохиолдолд 1-1.30 цаг галыг модон хийцрүү тархахаас хамгаалж байдаг. Европийн зах зээлд томоохон байр суурь эзэлээд зогсохгүй дэлхийн хэмжээний барилгын материалын шилдэг компаниудын нэг болтлоо хөгжсөн.', 0, '2014-03-12 03:59:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

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
(1, '?? ???? ???????????? ???????????? ?????? ???????? ?????? ????? ???', '', 1, '2012-04-03 11:53:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `poll_option`
--

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

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `summary_en` varchar(255) NOT NULL,
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
  `video` varchar(255) NOT NULL,
  `color` varchar(10) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `has_leasing` tinyint(1) NOT NULL,
  `rental_cost` double NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `title_en`, `code`, `category_id`, `summary`, `summary_en`, `image`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `body`, `body_en`, `pdf`, `video`, `color`, `keywords`, `has_leasing`, `rental_cost`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'Хүн, ачаа тээврийн лифт 1500кг', 'Rack & Pinion hoist 1500kg', 'p112534', 31, '', '', 'p1.png', '', '', '', '', '', '', '', '', NULL, '', '29f4719ea5a0f9922bd7ba075a6829c38c0bf32c.pdf', '//www.youtube.com/embed/MaL89mZpQ2M', '990077', '', 1, 0, 0, '2014-02-28 22:46:04', '0000-00-00 00:00:00'),
(9, 'Шавар зуурагч', 'Mixer - Protool', 'MXP 1000 EQ', 25, '', '', '300-36a18a9764855a28747e91b4458c71e4f244719a.jpg', '300-36a18a9764855a28747e91b4458c71e4f244719a1.jpg', '', '', '', '', '', '', '', NULL, '', '29f4719ea5a0f9922bd7ba075a6829c38c0bf32c.pdf', '//www.youtube.com/embed/MaL89mZpQ2M', '', '', 1, 0, 0, '2014-02-28 17:31:17', '0000-00-00 00:00:00'),
(11, 'Арматур таслагч', 'Cutting machine', 'C70', 27, '', '', '300-7ca7317b774a5262bdf37d132b56baea704272e1a.jpg', '300-7ca7317b774a5262bdf37d132b56baea704272e1b.jpg', '300-7ca7317b774a5262bdf37d132b56baea704272e1c.jpg', '300-7ca7317b774a5262bdf37d132b56baea704272e1d.jpg', '', '', '', '', '', NULL, '', '29f4719ea5a0f9922bd7ba075a6829c38c0bf32c.pdf', '//www.youtube.com/embed/MaL89mZpQ2M', '', '', 1, 0, 0, '2014-02-28 17:41:55', '0000-00-00 00:00:00'),
(12, 'Хана шавардагч', 'Spraying machine TURBOSOL - MINI AVANT', 'UNI30', 28, '', '', 'Spraying machine1.jpg', 'Spraying machine2.jpg', 'Spraying machine3.jpg', 'Spraying machine4.jpg', '', '', '', '', '', NULL, '', '29f4719ea5a0f9922bd7ba075a6829c38c0bf32c.pdf', '//www.youtube.com/embed/MaL89mZpQ2M', '', '', 1, 0, 0, '2014-02-28 17:46:15', '0000-00-00 00:00:00'),
(13, 'Хана шавардагч', 'Spraying machine TURBOSOL', 'UNI30', 28, '', '', 'UNI30a.jpg', 'UNI30b.jpg', 'UNI30c.jpg', 'UNI30d.jpg', '', '', '', '', '', NULL, '', '29f4719ea5a0f9922bd7ba075a6829c38c0bf32c.pdf', '//www.youtube.com/embed/MaL89mZpQ2M', '', '', 1, 0, 0, '2014-02-28 17:48:37', '0000-00-00 00:00:00'),
(14, 'Бетон зуурмаг шахагч', 'TURBOSOL - Transmat 250E', '250E', 24, '', '', '250Ea.jpg', '250Eb.jpg', '250Ec.jpg', '250Ed.jpg', '', '', '', '', '', NULL, '', '29f4719ea5a0f9922bd7ba075a6829c38c0bf32c.pdf', '//www.youtube.com/embed/MaL89mZpQ2M', '', '', 1, 0, 0, '2014-02-28 17:56:10', '0000-00-00 00:00:00'),
(15, 'Бетон тэгшлэгч', 'Power screed', 'PS', 24, '', '', 'PS.jpg', 'PSa.jpg', 'PSb.jpg', 'PSc.jpg', 'PSd.jpg', '', '', '', '', NULL, '', '29f4719ea5a0f9922bd7ba075a6829c38c0bf32c.pdf', '//www.youtube.com/embed/MaL89mZpQ2M', '', '', 1, 0, 0, '2014-02-28 17:58:13', '0000-00-00 00:00:00'),
(16, 'Бетон өнгөлөгч', 'Power float', 'PF', 20, '', '', 'PF.jpg', 'PFa.jpg', 'PFb.jpg', 'PFc.jpg', '', '', '', '', '', '', '', '953406d3bb5eb5ad0af6dbe696debdffb28c1a61.doc', '//www.youtube.com/embed/MaL89mZpQ2M', 'cc0066', '', 1, 45000, 0, '2014-02-28 17:59:23', '2014-03-17 00:00:00'),
(17, 'Алх iberica 250гр, иш 40см соронзтой', 'Claw hammer "iberica" 250g + handle 40cm with magnet', '10064', 18, 'Бэлэн байгаа бүтээгдэхүүн. Иш болон толгой нь .. модоор хийгдсэн. ', 'Head + handle in beechwood: ready to use', 'a82aa78b8f15dc4c3c11942803c541c8c466bf54.jpg', '499ac57024e1a4253ad70e270fde7944b50a564a.jpg', '', '', '', '', '', '', '', '<p>Бэлэн байгаа бүтээгдэхүүн. Иш болон толгой нь .. модоор хийгдсэн.&nbsp; Бэлэн байгаа бүтээгдэхүүн. Иш болон толгой нь .. модоор хийгдсэн.</p>\r\n<p>Бэлэн байгаа бүтээгдэхүүн. Иш болон толгой нь .. модоор хийгдсэн.&nbsp; Бэлэн байгаа бүтээгдэхүүн. Иш болон толгой нь .. модоор хийгдсэн.</p>', '<p>Head + handle in beechwood: ready to useHead + handle in beechwood: ready to useHead + handle in beechwood: ready to useHead + handle in beechwood: ready to useHead + handle in beechwood: ready to useHead + handle in beechwood: ready to useHead + handle in beechwood: ready to use</p><p>Head + handle in beechwood: ready to useHead + handle in beechwood: ready to useHead + handle in beechwood: ready to useHead + handle in beechwood: ready to useHead + handle in beechwood: ready to useHead + handle in beechwood: ready to useHead + handle in beechwood: ready to use</p>', '29f4719ea5a0f9922bd7ba075a6829c38c0bf32c.pdf', '//www.youtube.com/embed/MaL89mZpQ2M', 'cc6600', 'Бэлэн байгаа бүтээгдэхүүн. Иш болон толгой нь .. модоор хийгдсэн. ', 0, 0, 0, '2014-03-11 16:40:51', '2014-03-10 15:00:00'),
(18, 'Хамгаалалтын систем "1 суурьт"', '"ft 1 basic" protection system', '50100', 32, 'Protection system with clamp for balconies, roof gardens and stairs\r\nUni en 13374/04 - a class\r\nProtection system height 100 cm\r\nMounting distance between each product 180 cm\r\nMax clamp opening 80 cm', 'Protection system with clamp for balconies, roof gardens and stairs\r\nUni en 13374/04 - a class\r\nProtection system height 100 cm\r\nMounting distance between each product 180 cm\r\nMax clamp opening 80 cm', '612dfeffeb83a03f7ecbc2748339635f213c36b9.jpg', 'a207d23c681349bcf2f51d65a43ca1e6101a4285.jpg', '', '', '', '', '', '', '', '', '', '29f4719ea5a0f9922bd7ba075a6829c38c0bf32c.pdf', '//www.youtube.com/embed/MaL89mZpQ2M', '3377ff', '', 0, 0, 0, '2014-03-11 18:07:13', '2014-03-10 15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `has_leasing` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `parent_id`, `name`, `name_en`, `has_leasing`, `sort`, `created_at`, `updated_at`) VALUES
(5, 0, 'Бетон зуурмагийн тоног төхөөрөмж', 'Concrete equipment', 1, 18, '2014-02-28 22:31:39', '0000-00-00 00:00:00'),
(6, 0, 'Зам гүүрний тоног төхөөрөмж', 'Road bridge device', 1, 16, '2014-02-28 22:31:52', '0000-00-00 00:00:00'),
(7, 0, 'Цахилгаан багаж хэрэгсэл', 'Electrical apparatus', 1, 14, '2014-02-28 22:31:52', '0000-00-00 00:00:00'),
(8, 0, 'Гар багаж', 'Hand Tools', 0, 12, '2014-02-28 22:32:18', '0000-00-00 00:00:00'),
(9, 0, 'Лифт өргөж буулгах механизм', 'Lift the lower lift mechanism', 1, 10, '2014-02-28 22:32:18', '0000-00-00 00:00:00'),
(10, 0, 'Хөдөлмөр хамгааллын хэрэгсэл', 'Safety supplies', 1, 8, '2014-02-28 22:32:47', '0000-00-00 00:00:00'),
(17, 7, 'Цахилгаан хөрөө ', 'Power saw', 1, 0, '2014-02-28 17:14:13', '0000-00-00 00:00:00'),
(18, 8, 'Алх', 'Hammers', 0, 0, '2014-02-28 17:17:25', '0000-00-00 00:00:00'),
(19, 8, 'Хүрз', 'Shovels', 0, 0, '2014-02-28 17:17:25', '0000-00-00 00:00:00'),
(20, 8, 'Finishing tools', 'Төгсгөл багажнууд', 0, 0, '2014-02-28 17:18:13', '0000-00-00 00:00:00'),
(21, 8, 'Бусад', 'Others', 0, 0, '2014-02-28 17:18:13', '0000-00-00 00:00:00'),
(22, 0, 'Арматур төмрийн тоног төхөөрөмж', 'Rod iron hardware', 1, 20, '2014-02-28 17:41:42', '0000-00-00 00:00:00'),
(24, 5, 'Шахагч', 'Compressors', 1, 0, '2014-03-19 14:31:03', '0000-00-00 00:00:00'),
(25, 5, 'Зуурагч', 'Mixers', 1, 0, '2014-03-19 14:31:48', '0000-00-00 00:00:00'),
(26, 22, 'Матагч', 'Матагч', 1, 0, '2014-03-19 14:32:23', '0000-00-00 00:00:00'),
(27, 22, 'Таслагч', 'Cutters', 1, 0, '2014-03-19 14:32:44', '0000-00-00 00:00:00'),
(28, 6, 'Авто замын индүү', 'Road roller', 1, 0, '2014-03-19 14:33:46', '0000-00-00 00:00:00'),
(29, 6, 'Авто замын нягтруулагч', 'Road hubs', 1, 0, '2014-03-19 14:34:47', '0000-00-00 00:00:00'),
(30, 9, 'Кран', 'Cranes', 1, 0, '2014-03-19 14:35:55', '0000-00-00 00:00:00'),
(31, 9, 'Цахилгаан шат', 'Lift', 1, 0, '2014-03-19 14:36:24', '0000-00-00 00:00:00'),
(32, 10, 'Хамгаалалтын системүүд', 'Safety tools', 0, 0, '2014-03-20 08:40:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_model`
--

CREATE TABLE IF NOT EXISTS `product_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `product_model`
--

INSERT INTO `product_model` (`id`, `product_id`, `name`, `name_en`, `sort`, `created_at`, `updated_at`) VALUES
(1, 18, 'm1', 'm1', 0, '2014-03-23 18:42:00', '2014-03-23 00:00:00'),
(2, 17, 'h1', 'h2', 0, '2014-03-23 18:42:06', '2014-03-23 00:00:00'),
(3, 1, 'l1', 'l1', 0, '2014-03-23 18:42:12', '2014-03-23 00:00:00'),
(4, 18, 's1', 's1', 0, '2014-03-23 18:42:21', '2014-03-23 00:00:00'),
(5, 17, 'h2', 'h2', 0, '2014-03-23 18:42:26', '2014-03-23 00:00:00'),
(6, 18, 's3', 's3', 0, '2014-03-23 18:42:33', '2014-03-23 00:00:00'),
(7, 18, 's4', 's4', 0, '2014-03-23 18:42:38', '2014-03-23 00:00:00'),
(8, 1, 'l2', 'l2', 0, '2014-03-23 18:42:43', '2014-03-23 00:00:00'),
(9, 1, 'l3', 'l3', 0, '2014-03-23 18:42:49', '2014-03-23 00:00:00'),
(10, 1, 'l4', 'l4', 0, '2014-03-23 18:42:54', '2014-03-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE IF NOT EXISTS `product_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `product_id`, `name`, `email`, `phone`, `message`, `organization`, `position`, `created_at`) VALUES
(1, 17, 'Dulamkhand', 'handaa.1224@gmail.com', '99071053', 'tst test', 'Mobicom', '', '2014-03-13 15:39:35'),
(2, 17, 'Dulamkhand', 'handaa.1224@gmail.com', '99071053', 'tst test', 'm', '', '2014-03-13 15:40:24'),
(3, 17, 'Dulamkhand', 'handaa.1224@gmail.com', '99071053', 'test msg', 'Mobicom', '', '2014-03-13 15:41:37'),
(4, 17, 'Dulamkhand', 'handaa.1224@gmail.com', '99071053', 'test msg', 'Mobicom', '', '2014-03-13 15:42:32'),
(5, 17, 'Dulamkhand', 'handaa.1224@gmail.com', '99071053', 'test msg', 'Mobicom', 'Programmer', '2014-03-13 15:43:45'),
(6, 11, 'Dulamkhand', 'handaa.1224@gmail.com', '99071053', 'bla blah', 'Firewall', 'Manager', '2014-03-14 07:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_spec`
--

CREATE TABLE IF NOT EXISTS `product_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `spec_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `body` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `body_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `spec_id` (`spec_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Dumping data for table `product_spec`
--

INSERT INTO `product_spec` (`id`, `product_id`, `model_id`, `spec_id`, `sort`, `body`, `body_en`, `created_at`, `updated_at`) VALUES
(22, 16, 0, 9, 0, '300 кг', '300 kg', '2014-03-17 14:40:47', '0000-00-00 00:00:00'),
(23, 18, 7, 9, 0, '20', '20', '2014-03-23 18:44:02', '0000-00-00 00:00:00'),
(24, 18, 6, 9, 0, '30', '30', '2014-03-23 18:44:02', '0000-00-00 00:00:00'),
(25, 18, 4, 9, 0, '15', '15', '2014-03-23 18:44:02', '0000-00-00 00:00:00'),
(26, 18, 1, 9, 0, '40', '40', '2014-03-23 18:44:02', '0000-00-00 00:00:00'),
(27, 18, 7, 8, 0, '126', '126', '2014-03-23 18:44:02', '0000-00-00 00:00:00'),
(28, 18, 6, 8, 0, '134', '134', '2014-03-23 18:44:02', '0000-00-00 00:00:00'),
(29, 18, 4, 8, 0, '25', '25', '2014-03-23 18:44:02', '0000-00-00 00:00:00'),
(30, 18, 1, 8, 0, '241', '241', '2014-03-23 18:44:02', '0000-00-00 00:00:00'),
(31, 17, 5, 9, 0, '30', '30', '2014-03-23 18:44:52', '0000-00-00 00:00:00'),
(32, 17, 2, 9, 0, '40', '40', '2014-03-23 18:44:52', '0000-00-00 00:00:00'),
(33, 17, 5, 8, 0, '20cm', '20cm', '2014-03-23 18:44:52', '0000-00-00 00:00:00'),
(34, 17, 2, 8, 0, '25cm', '25cm', '2014-03-23 18:44:52', '0000-00-00 00:00:00'),
(35, 17, 5, 3, 0, 'Хар', 'Хар', '2014-03-23 18:44:52', '0000-00-00 00:00:00'),
(36, 17, 2, 3, 0, 'Цэнхэр', 'Цэнхэр', '2014-03-23 18:44:52', '0000-00-00 00:00:00'),
(37, 1, 10, 7, 0, '200', '200', '2014-03-23 18:45:30', '0000-00-00 00:00:00'),
(38, 1, 9, 7, 0, '250', '250', '2014-03-23 18:45:30', '0000-00-00 00:00:00'),
(39, 1, 8, 7, 0, '300', '300', '2014-03-23 18:45:30', '0000-00-00 00:00:00'),
(40, 1, 3, 7, 0, '350', '350', '2014-03-23 18:45:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `spec`
--

CREATE TABLE IF NOT EXISTS `spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `spec`
--

INSERT INTO `spec` (`id`, `name`, `name_en`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'Өргөн', 'Width', 0, '2014-03-10 15:15:11', '0000-00-00 00:00:00'),
(2, 'Өндөр', 'Height', 0, '2014-03-10 15:15:22', '0000-00-00 00:00:00'),
(3, 'Өнгө', 'Color', 0, '2014-03-10 15:15:50', '0000-00-00 00:00:00'),
(4, 'Диаметр', 'Diameter', 0, '2014-03-10 15:16:18', '0000-00-00 00:00:00'),
(5, 'Төрөл', 'Type', 0, '2014-03-10 15:16:40', '0000-00-00 00:00:00'),
(6, 'Хүчдэл', 'Power supply', 0, '2014-03-10 15:18:03', '0000-00-00 00:00:00'),
(7, 'Хүчин чадал', 'Potential', 0, '2014-03-10 15:18:44', '0000-00-00 00:00:00'),
(8, 'Урт', 'Length', 0, '2014-03-11 17:37:20', '0000-00-00 00:00:00'),
(9, 'Жин', 'Weight', 0, '2014-03-11 17:37:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'admin@simpedil.mn', 1, '2011-02-01 20:04:13', '0000-00-00 00:00:00', '2011-02-01 20:04:13'),
(2, '', '1cf8d706d83bf92dd9b2ab9597174519', 'info@icon.mn', 1, '2012-08-21 16:33:13', '2012-08-21 16:33:52', '0000-00-00 00:00:00');

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
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_model`
--
ALTER TABLE `product_model`
  ADD CONSTRAINT `product_model_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `product_order_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_spec`
--
ALTER TABLE `product_spec`
  ADD CONSTRAINT `product_spec_ibfk_4` FOREIGN KEY (`spec_id`) REFERENCES `spec` (`id`),
  ADD CONSTRAINT `product_spec_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
