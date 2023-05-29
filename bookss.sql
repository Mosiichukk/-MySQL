-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 29 2023 г., 17:03
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bookss`
--
CREATE DATABASE IF NOT EXISTS `bookss` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bookss`;

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `Num` int(11) DEFAULT NULL,
  `Code` int(11) NOT NULL AUTO_INCREMENT,
  `Is_new` tinyint(1) NOT NULL DEFAULT 0,
  `Title` varchar(200) NOT NULL,
  `Price` double NOT NULL DEFAULT 0,
  `Publishing` varchar(50) NOT NULL,
  `Pages` int(50) NOT NULL,
  `Format` varchar(50) NOT NULL,
  `Pub_date` date NOT NULL,
  `Circulation` int(50) NOT NULL,
  `Tema` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `Tema_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Code`),
  UNIQUE KEY `Num_2` (`Num`),
  KEY `publisher_id` (`publisher_id`),
  KEY `publisher_id_2` (`publisher_id`),
  KEY `Publishing` (`Publishing`),
  KEY `Publishing_2` (`Publishing`),
  KEY `publisher_id_3` (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8747 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `books`
--

INSERT DELAYED IGNORE INTO `books` (`Num`, `Code`, `Is_new`, `Title`, `Price`, `Publishing`, `Pages`, `Format`, `Pub_date`, `Circulation`, `Tema`, `Category`, `publisher_id`, `Tema_id`) VALUES
(8, 4985, 0, 'Засвой самостійно модернізацію та ремонт ПК за 24 години, 2-ге вид.', 18.9, 'Вільямс', 288, '70х100/16', '2000-07-07', 5000, 'Використання ПК в цілому', 'Підручники', 1, 1),
(2, 5110, 0, 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 'Видавнича група BHV', 400, '70х100/16', '2000-07-24', 5000, 'Використання ПК в цілому', 'Підручники', 1, 1),
(31, 5111, 0, 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 'Видавнича група BHV', 400, '70х100/16', '2000-07-24', 5000, 'Використання ПК в цілому', 'Апаратні засоби ПК', 1, 1),
(20, 5127, 0, 'Автоматизація інженерно-графічних робіт', 11.58, 'Видавнича група BHV', 256, '70х100/16', '2000-06-15', 5000, 'Використання ПК в цілому', 'Підручники', 1, 1),
(9, 5141, 0, 'Структури даних та алгоритми', 37.8, 'Вільямс', 384, '70х100/16', '2000-09-29', 5000, 'Використання ПК в цілому', 'Підручники', 1, 1),
(46, 5199, 0, 'Залізо IBM 2001', 30.07, 'МикроАрт', 368, '70х100/16', '2000-12-02', 5000, 'Використання ПК в цілому', 'Апаратні засоби ПК', NULL, 1),
(5, 5883, 0, 'Kobzar', 0, 'Xersonpub', 175, '80x100/50', '1988-05-24', 0, 'Kobzarstvo', 'Підручник', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `name_2` (`name`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `publisher`
--

INSERT DELAYED IGNORE INTO `publisher` (`id`, `name`) VALUES
(8, 'BHV С.-Петербург'),
(5, 'DiaSoft'),
(1, 'Вільямс'),
(7, 'Вінниця: ВДТУ'),
(6, 'Видавнича група BHV'),
(4, 'ДМК'),
(10, 'КСД'),
(9, 'МікроАрт'),
(2, 'РИПОЛ Классик'),
(3, 'Університет Україна');

-- --------------------------------------------------------

--
-- Структура таблицы `tema`
--

DROP TABLE IF EXISTS `tema`;
CREATE TABLE IF NOT EXISTS `tema` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tema`
--

INSERT DELAYED IGNORE INTO `tema` (`id`, `name`) VALUES
(1, 'Використання ПК в ці'),
(2, 'Fantasy'),
(3, 'Програмування');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
