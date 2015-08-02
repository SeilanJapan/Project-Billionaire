-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Версия на сървъра: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project_game`
--

-- --------------------------------------------------------

--
-- Структура на таблица `difficultylevels`
--

CREATE TABLE IF NOT EXISTS `difficultylevels` (
  `difficulty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `difficultylevels`
--

INSERT INTO `difficultylevels` (`difficulty`) VALUES
('easy'),
('hard'),
('very hard');

-- --------------------------------------------------------

--
-- Структура на таблица `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(500) NOT NULL,
  `answerA` varchar(200) NOT NULL,
  `answerB` varchar(200) NOT NULL,
  `answerC` varchar(200) NOT NULL,
  `answerD` varchar(200) NOT NULL,
  `correctAnswer` varchar(20) NOT NULL,
  `difficulty` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `questions`
--

INSERT INTO `questions` (`id`, `question`, `answerA`, `answerB`, `answerC`, `answerD`, `correctAnswer`, `difficulty`) VALUES
(1, 'What do fishermen hope to catch with their fishing rod?', 'Mermaid', 'Fish', 'Worms', 'Rocks', 'answerB', 'easy'),
(2, 'Какво бижу подарява младежът на избраницата си в знак на най-сериозните си брачни намерения?', 'Брошка', 'Пръстен', 'Гривна', 'Обеци', 'answerB', 'easy'),
(3, 'Кой събужда с целувка спящата красавица от едноименната приказка?', 'Красивият принц', 'Мистър Бийн', 'Хълк', 'Шрек', 'answerA', 'easy'),
(4, 'Коя от думите има по-малко срички?', 'Мура', 'Състезател', 'Хрян', 'Дантела', 'answerC', 'easy'),
(5, 'How many days are there in a leap-year?', '456', '365', '368', '366', 'answerD', 'easy'),
(6, 'What material is made of plants?', 'Cotton', 'Wool', 'Nylon', 'Glass', 'answerA', 'hard'),
(7, 'Кой от културните паметници не е построен след Освобождението?', 'Паметникът на свободата на връх Шипка', 'Руски паметник', 'Мадарският конник', 'Паметникът на връх Околчица', 'answerC', 'hard'),
(8, 'От каква националност е първият човек, излязъл в открития космос извън космическия апарат?', 'Американец', 'Руснак', 'Французин', 'Ирландец', 'answerB', 'hard'),
(9, 'Which logical game was invented by a hungarian engineer?', 'Tetris', 'Rubic''s Cube', 'Picture Puzzle', 'Chess', 'answerB', 'hard'),
(10, 'Кой град е известен като "Кралицата на Адриатика"?', 'Рим', 'Истанбул', 'Мадрид', 'Венеция', 'answerD', 'hard'),
(11, 'На кой герой от гръцката митология е наречено сухожилие на крака?', 'Херакъл', 'Персей', 'Ахил', 'Тезей', 'answerC', 'very hard'),
(12, 'В кое японско бойно изкуство противниците се сражават с бамбукови мечове?', 'Карате', 'Джиу-Джицу', 'Кендо', 'Айкидо', 'answerC', 'very hard'),
(13, 'Коя певица е собственик на звукозаписната компания "Маверик"?', 'Мадона', 'Бритни Спиърс', 'Уитни Хюстън', 'Марая Кери', 'answerA', 'very hard'),
(14, 'Who''s made the first jeans?', 'Levi Strauss', 'Ethan Lee', 'Will Vrangler', 'Kevin Clain', 'answerA', 'very hard'),
(15, 'Кой произнася фразата: "Имам една мечта" в една знаменита своя реч?', 'Уинстън Чърчил', 'Мартин Лутър Кинг', 'Владимир Илич Ленин', 'Шарл дьо Гол', 'answerB', 'very hard');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `difficultylevels`
--
ALTER TABLE `difficultylevels`
  ADD PRIMARY KEY (`difficulty`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
