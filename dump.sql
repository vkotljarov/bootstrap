-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 15 2017 г., 23:47
-- Версия сервера: 5.5.45
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `vk`
--

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `groups_name` varchar(100) NOT NULL,
  `groups_nickname` varchar(100) NOT NULL,
  `group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `group_photo`
--

CREATE TABLE IF NOT EXISTS `group_photo` (
  `id` int(50) NOT NULL,
  `group_id` int(50) NOT NULL,
  `photo_id` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL DEFAULT '',
  `picture_url` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL DEFAULT '',
  `photo_type` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=456244543 ;

--
-- Дамп данных таблицы `photo`
--

INSERT INTO `photo` (`id`, `user_id`, `picture_url`, `date`, `photo_type`) VALUES
(456239077, '', 'https://pp.vk.me/c638431/v638431105/15d40/ztS7gma0TxM.jpg', '', ''),
(456239412, '', 'https://pp.vk.me/c636428/v636428487/41931/rui5Y_jbCro.jpg', '', ''),
(456239486, '', 'https://pp.vk.me/c637928/v637928487/298d1/rVVQ72r_1n8.jpg', '', ''),
(456239630, '', 'https://pp.vk.me/c636521/v636521213/3fcc9/WZLUnBORtlg.jpg', '', ''),
(456239631, '', 'https://pp.vk.me/c636521/v636521213/3fd54/3qZon-r3vLk.jpg', '', ''),
(456243102, '', 'https://pp.vk.me/c635102/v635102319/156f5/BVRjqxDm_Ys.jpg', '', ''),
(456244542, '', 'https://cs7050.vk.me/c637531/v637531088/27eea/OzDzaFvPwsM.jpg', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `group_id` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `user_photo`
--

CREATE TABLE IF NOT EXISTS `user_photo` (
  `id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `photo_id` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
