-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 02 2024 г., 18:16
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `twitter`
--

-- --------------------------------------------------------

--
-- Структура таблицы `friend`
--

CREATE TABLE `friend` (
  `id` int(11) NOT NULL,
  `users_id(1)` int(40) NOT NULL COMMENT 'Пользователь 1',
  `user_id(2)` int(40) NOT NULL COMMENT 'Пользователь 2',
  `date` date NOT NULL COMMENT 'Дата начала дружбы'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `friend`
--

INSERT INTO `friend` (`id`, `users_id(1)`, `user_id(2)`, `date`) VALUES
(1, 1, 4, '2005-04-24'),
(2, 2, 3, '2006-11-28'),
(3, 5, 6, '2004-01-17'),
(4, 7, 10, '2004-03-12'),
(5, 8, 11, '2005-08-21'),
(6, 9, 11, '2006-06-13');

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'Название группы'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(3, 'Крипта'),
(4, 'Мир'),
(2, 'Музыка'),
(1, 'Новости');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user_from_id` int(40) NOT NULL COMMENT 'Отправитель',
  `user_to_id` int(40) NOT NULL COMMENT 'Получатель',
  `text` text NOT NULL COMMENT 'Сообщение',
  `date` date NOT NULL COMMENT 'Дата переписки'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `user_from_id`, `user_to_id`, `text`, `date`) VALUES
(2, 1, 4, 'Привет', '2005-04-25'),
(3, 5, 6, 'Как ты?', '2004-01-18'),
(4, 3, 2, 'Погнали в парк', '2006-11-28'),
(5, 2, 3, 'Хорошо, скоро буду', '2006-11-28'),
(6, 10, 7, 'Что будешь делать сегодня вечером?', '2004-03-13'),
(7, 7, 10, 'ничего..', '2004-03-13'),
(8, 8, 11, 'Привет! Давай вечером поиграем в CS:GO ?', '2005-08-21'),
(9, 11, 8, 'Не могу, отец попросил помочь в гараже', '2005-08-21');

-- --------------------------------------------------------

--
-- Структура таблицы `public_in_group`
--

CREATE TABLE `public_in_group` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL COMMENT 'ID Пользователя',
  `groups_id` int(11) NOT NULL COMMENT 'ID Группы',
  `text` text NOT NULL COMMENT 'Текст публикации'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `public_in_group`
--

INSERT INTO `public_in_group` (`id`, `users_id`, `groups_id`, `text`) VALUES
(1, 1, 1, '\"В России запустили первый спутник связи \"Луч-5А\"\r\n\r\nВ начале 2002 года в России состоялся успешный запуск первого спутника связи \"Луч-5А\", который будет использоваться для обеспечения связи в отдаленных районах страны. Спутник, оснащенный современным оборудованием, способен передавать телевидение, интернет-трафик и телефонные звонки. \r\n\r\nЗапуск \"Луч-5А\" - это значимый шаг в развитии отечественной космической отрасли и обеспечении качественной связи для всех жителей России.'),
(2, 8, 3, ' \"Виртуальные деньги: Bitcoin, новый шаг в развитии интернет-платежей?\"\r\n\r\nВ 2003 году, на заре развития интернет-платежей, начали появляться первые упоминания о новой, децентрализованной платежной системе, основанной на криптографии – Bitcoin. '),
(3, 10, 4, 'Россия: Передача власти от Бориса Ельцина к Владимиру Путину в 1999 году. Начало Второй чеченской войны.\r\nСША: Избрание Джорджа Буша-младшего президентом в 2000 году после спорных выборов. Террористические акты 11 сентября 2001 года и начало войны с терроризмом.\r\nЕвропа: Введение евро в качестве единой валюты в 12 странах Еврозоны. Расширение Европейского Союза на восток.\r\nБлижний Восток: Продолжение палестино-израильского конфликта.\r\n'),
(4, 4, 2, 'Расцвет поп-музыки, хип-хопа и R&B\r\nРоссийский хип-хоп ТОПЫ:\r\nБаста\r\nOxxxymiron\r\nСкриптонит\r\nFace\r\nNoize MC\r\n'),
(5, 11, 4, 'В Российской Федерации в 2003 году в результате пожаров было уничтожено 23,7 миллионов гектаров леса, что равно площади всей Великобритании. В 2002 году Россия потеряла 11,7 миллионов гектаров лесов.\r\n\r\nВ США в этом году погибли 2,8 миллионов гектаров леса, а в Канаде — 2,6 миллионов. Австралия же потеряла около 60 миллионов гектаров лесов из-за пожаров, половина из которых, произошла в результате человеческой деятельности.\r\n\r\nПожары в лесах — одна из проблем, которые будут обсуждаться на Седьмом Конгрессе по лесам. Он пройдет в Квебеке, Канада, с 21 по 28 сентября 2003 года.\r\n\r\nНеконтролируемое расширение сельскохозяйственной деятельности, туризм, а также использования лесов для отдыха приводит к непоправимым результатам для природных ресурсов.\r\n\r\nПо данным ФАО, разрушение лесов и их инфраструктуры, а также стоимость борьбы с пожарами оцениваются в несколько миллиардов долларов каждый год.\r\n\r\nС точки зрения потерь человеческих жизней и ущерба для лесов и инфраструктуры в этом году цикл пожаров был одним из самых разрушительных за последние годы.');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT 'ID пользователя',
  `name` varchar(100) NOT NULL COMMENT 'ФИО',
  `birthdate` date DEFAULT NULL COMMENT 'Дата рождения',
  `id_group` int(11) DEFAULT NULL COMMENT 'ID группы'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `birthdate`, `id_group`) VALUES
(1, 'Петров', '2002-04-13', 1),
(2, 'Иванов', '2001-07-11', 3),
(3, 'Степанов', '2001-01-04', 1),
(4, 'Смирнов', NULL, 2),
(5, 'Кузнецов', '2003-04-02', 2),
(6, 'Соколов', NULL, 1),
(7, 'Попов', '2003-05-08', 2),
(8, 'Борисов', '2001-07-04', 3),
(9, 'Васильев', '2004-07-03', 3),
(10, 'Михайлов', '1999-10-01', 4),
(11, 'Федоров', '2002-11-16', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL COMMENT 'Уникальный ID',
  `users_id` int(11) NOT NULL COMMENT 'Пользовательский ID',
  `groups_id` int(11) NOT NULL COMMENT 'ID Группы'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users_groups`
--

INSERT INTO `users_groups` (`id`, `users_id`, `groups_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 1),
(4, 4, 2),
(5, 5, 2),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 3),
(10, 10, 4),
(11, 11, 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id(1)` (`users_id(1)`),
  ADD KEY `user_id(2)` (`user_id(2)`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_from_id` (`user_from_id`),
  ADD KEY `user_to_id` (`user_to_id`);

--
-- Индексы таблицы `public_in_group`
--
ALTER TABLE `public_in_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `groups_id` (`groups_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_group` (`id_group`);

--
-- Индексы таблицы `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `groups_id` (`groups_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `friend`
--
ALTER TABLE `friend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `public_in_group`
--
ALTER TABLE `public_in_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID пользователя', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Уникальный ID', AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `friend`
--
ALTER TABLE `friend`
  ADD CONSTRAINT `friend_ibfk_1` FOREIGN KEY (`users_id(1)`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `friend_ibfk_2` FOREIGN KEY (`user_id(2)`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_from_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`user_to_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `public_in_group`
--
ALTER TABLE `public_in_group`
  ADD CONSTRAINT `public_in_group_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `public_in_group_ibfk_2` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `groups` (`id`);

--
-- Ограничения внешнего ключа таблицы `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_groups_ibfk_2` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
