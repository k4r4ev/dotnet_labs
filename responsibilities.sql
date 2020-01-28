-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 28 2020 г., 11:53
-- Версия сервера: 10.4.6-MariaDB
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `responsibilities`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sotr`
--

CREATE TABLE `sotr` (
  `kod_sotr` int(11) NOT NULL,
  `familia` varchar(30) CHARACTER SET utf8 NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `otchestvo` varchar(30) CHARACTER SET utf8 NOT NULL,
  `oklad` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `sotr`
--

INSERT INTO `sotr` (`kod_sotr`, `familia`, `name`, `otchestvo`, `oklad`) VALUES
(1, 'Попазов', 'Дмитрий', 'Владимирович', 28000),
(2, 'Айрапетов', 'Стас', 'Дмитриевич', 48000),
(5, 'thrth', 'htrhtrh', 'hrthrt', 34),
(6, 'bfd', 'gfdgdfg', 'gfdgdfg', 180000),
(7, 'r6u56u', 'trhyth', 'htryhrh', 500005),
(9, 'fn', 'hfgh', 'hfghk', 505);

-- --------------------------------------------------------


--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `pass`) VALUES
(0, '1', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `kod_sotr` int(11) NOT NULL,
  `kod_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `finish_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`kod_sotr`, `kod_type`, `start_date`, `finish_date`) VALUES
(1, 1, '2020-01-09', '2020-01-29'),
(2, 2, '2020-01-17', '2020-01-30'),
(1, 2, '2020-01-01', '2020-02-01'),
(6, 2, '2020-01-02', '2020-01-25'),
(6, 1, '2020-01-01', '2020-01-31'),
(6, 2, '2019-12-31', '2020-01-24'),
(5, 2, '2020-01-02', '2020-01-25'),
(5, 2, '2020-01-07', '2020-02-01'),
(1, 1, '0001-01-01', '0001-01-01'),
(1, 1, '0001-01-01', '0001-01-01');

-- --------------------------------------------------------

--
-- Структура таблицы `work_types`
--

CREATE TABLE `work_types` (
  `kod_type` int(11) NOT NULL,
  `opisanie` varchar(30) CHARACTER SET utf8 NOT NULL,
  `oplata` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `work_types`
--

INSERT INTO `work_types` (`kod_type`, `opisanie`, `oplata`) VALUES
(1, 'work1', 10000),
(2, 'work2', 5000);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `sotr`
--
ALTER TABLE `sotr`
  ADD PRIMARY KEY (`kod_sotr`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD KEY `kod_type` (`kod_type`),
  ADD KEY `kod_sotr` (`kod_sotr`);

--
-- Индексы таблицы `work_types`
--
ALTER TABLE `work_types`
  ADD PRIMARY KEY (`kod_type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `sotr`
--
ALTER TABLE `sotr`
  MODIFY `kod_sotr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `kod_sotr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `work_types`
--
ALTER TABLE `work_types`
  MODIFY `kod_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
