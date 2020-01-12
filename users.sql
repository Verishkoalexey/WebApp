-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 23 2019 г., 23:27
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `users`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(32) NOT NULL,
  `DETAILS` varchar(64) DEFAULT NULL,
  `IMG_PATH` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`ID`, `NAME`, `DETAILS`, `IMG_PATH`) VALUES
(1, 'LG', 'TV', 'img/TV.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `ROLE_ID` int(11) NOT NULL,
  `NAME` varchar(32) NOT NULL,
  `DESCR` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`ROLE_ID`, `NAME`, `DESCR`) VALUES
(1, 'GENERAL_USER', 'Common User'),
(2, 'MANAGER', ' '),
(3, 'ADMIN', ' '),
(4, 'SU', 'Super User.'),
(5, 'NO_PERMISSIONS', 'NO_PERMISSIONS');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(32) NOT NULL,
  `PASSWORD` varchar(32) NOT NULL,
  `EMAIL` varchar(32) NOT NULL,
  `ROLE_ID` int(11) NOT NULL DEFAULT '1',
  `IS_ACTIVE` varchar(32) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`ID`, `NAME`, `PASSWORD`, `EMAIL`, `ROLE_ID`, `IS_ACTIVE`) VALUES
(1, 'ADMIN', '12345678', 'admin@admin.org', 1, 'N'),
(2, 'Alex', 'YB2qH6At77A', 'alex@alex.com', 3, 'Y'),
(3, 'bob', 'YB2qH6At77A', 'verishkoalexey@gmail.com', 3, 'Y'),
(4, 'john johnson', '123', 'johnson@gmail.com', 2, 'N'),
(6, 'john', 'YB2qH6At77A', 'johnson@gmail.com', 1, 'N');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ROLE_ID`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
