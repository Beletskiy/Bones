-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 22 2015 г., 15:16
-- Версия сервера: 5.5.39
-- Версия PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `alex_bones`
--

-- --------------------------------------------------------

--
-- Структура таблицы `experiment`
--

CREATE TABLE IF NOT EXISTS `experiment` (
`id_exp` int(10) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `bones_num` int(10) NOT NULL,
  `throws` int(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Дамп данных таблицы `experiment`
--

INSERT INTO `experiment` (`id_exp`, `date`, `time`, `name`, `bones_num`, `throws`) VALUES
(1, '15-05-20', '12:11:53', 'Auto', 2, 36000),
(2, '15-05-20', '12:14:35', 'Alex', 2, 36000),
(3, '15-05-20', '12:15:18', 'Alex', 2, 36000),
(4, '15-05-20', '12:34:50', 'Alex', 2, 36000),
(5, '15-05-20', '12:40:27', 'Alex', 2, 36000),
(6, '15-05-20', '12:40:42', 'Alex', 2, 36000),
(7, '15-05-21', '08:13:25', 'Alex', 2, 36000),
(8, '15-05-21', '08:13:33', 'Alex', 2, 36000),
(9, '15-05-21', '08:14:36', 'Alex', 2, 36000),
(10, '15-05-21', '08:14:57', 'Alex', 2, 36000),
(11, '15-05-21', '09:29:35', 'Alex', 2, 36000),
(12, '15-05-22', '11:45:22', 'Alex', 2, 36000),
(13, '15-05-22', '11:46:01', 'Alex', 2, 36000),
(14, '15-05-22', '11:46:35', 'Alex', 2, 36000),
(15, '15-05-22', '11:50:54', 'Alex', 2, 36000),
(16, '15-05-22', '11:59:40', 'Alex', 2, 36000),
(17, '15-05-22', '12:00:34', 'Alex', 2, 36000),
(18, '15-05-22', '12:02:25', 'Alex', 2, 36000),
(19, '15-05-22', '12:08:58', 'Alex', 2, 36000),
(20, '15-05-22', '12:10:18', 'Alex', 2, 36000),
(21, '15-05-22', '12:14:21', 'Alex', 2, 36000),
(22, '15-05-22', '12:23:15', 'Alex', 2, 36000),
(23, '15-05-22', '12:26:03', 'Alex', 2, 36000),
(24, '15-05-22', '12:31:10', 'Alex', 2, 36000),
(25, '15-05-22', '12:31:47', 'Alex', 2, 36000),
(26, '15-05-22', '12:35:11', 'Alex', 2, 36000),
(27, '15-05-22', '12:43:30', 'Alex', 2, 36000),
(28, '15-05-22', '12:58:05', 'Auto', 2, 36000),
(29, '15-05-22', '13:00:20', 'Юра', 2, 36000),
(30, '15-05-22', '13:11:13', 'Alex', 2, 36000),
(31, '15-05-22', '13:14:51', 'Alex', 2, 36000),
(32, '15-05-22', '13:17:45', 'Юра', 2, 36000),
(33, '15-05-22', '13:30:28', 'Юра', 2, 36000),
(34, '15-05-22', '13:34:02', 'Alex', 2, 36000),
(35, '15-05-22', '13:43:33', 'Alex', 2, 36000),
(36, '15-05-22', '13:50:22', 'Юра', 2, 36000),
(37, '15-05-22', '15:01:18', 'Alex', 2, 36000);

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE IF NOT EXISTS `results` (
`id_result` int(10) NOT NULL,
  `num` int(10) NOT NULL,
  `count` int(10) NOT NULL,
  `id_exp` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=408 ;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`id_result`, `num`, `count`, `id_exp`) VALUES
(1, 2, 981, 1),
(2, 9, 4013, 1),
(3, 5, 4012, 1),
(4, 11, 1999, 1),
(5, 10, 3001, 1),
(6, 4, 3008, 1),
(7, 6, 4987, 1),
(8, 8, 5016, 1),
(9, 3, 1992, 1),
(10, 7, 5980, 1),
(11, 12, 1011, 1),
(12, 2, 1019, 2),
(13, 7, 5989, 2),
(14, 4, 3007, 2),
(15, 3, 1992, 2),
(16, 6, 5021, 2),
(17, 9, 3999, 2),
(18, 8, 4986, 2),
(19, 5, 3979, 2),
(20, 10, 3016, 2),
(21, 11, 2005, 2),
(22, 12, 987, 2),
(23, 2, 1002, 3),
(24, 8, 4996, 3),
(25, 3, 1999, 3),
(26, 6, 5009, 3),
(27, 9, 4003, 3),
(28, 7, 5991, 3),
(29, 11, 2004, 3),
(30, 5, 4010, 3),
(31, 10, 3001, 3),
(32, 4, 2995, 3),
(33, 12, 990, 3),
(34, 2, 1010, 4),
(35, 8, 5004, 4),
(36, 9, 3999, 4),
(37, 12, 999, 4),
(38, 6, 4983, 4),
(39, 5, 3978, 4),
(40, 7, 6029, 4),
(41, 3, 1996, 4),
(42, 10, 2992, 4),
(43, 11, 1980, 4),
(44, 4, 3030, 4),
(45, 2, 999, 5),
(46, 7, 5999, 5),
(47, 6, 4996, 5),
(48, 5, 4001, 5),
(49, 3, 2004, 5),
(50, 12, 1004, 5),
(51, 8, 4996, 5),
(52, 4, 3010, 5),
(53, 9, 3993, 5),
(54, 11, 1987, 5),
(55, 10, 3011, 5),
(56, 2, 979, 6),
(57, 9, 4026, 6),
(58, 8, 5029, 6),
(59, 10, 3000, 6),
(60, 6, 4974, 6),
(61, 7, 5984, 6),
(62, 12, 1015, 6),
(63, 5, 4017, 6),
(64, 3, 1995, 6),
(65, 4, 2982, 6),
(66, 11, 1999, 6),
(67, 2, 999, 7),
(68, 10, 2995, 7),
(69, 8, 4974, 7),
(70, 4, 3024, 7),
(71, 11, 2004, 7),
(72, 7, 5988, 7),
(73, 9, 4017, 7),
(74, 6, 4969, 7),
(75, 5, 3999, 7),
(76, 3, 2022, 7),
(77, 12, 1009, 7),
(78, 2, 994, 8),
(79, 8, 4993, 8),
(80, 6, 5012, 8),
(81, 10, 2974, 8),
(82, 4, 2999, 8),
(83, 11, 2000, 8),
(84, 7, 6026, 8),
(85, 9, 3998, 8),
(86, 5, 4003, 8),
(87, 3, 1996, 8),
(88, 12, 1005, 8),
(89, 2, 1007, 9),
(90, 6, 4993, 9),
(91, 11, 1993, 9),
(92, 8, 4981, 9),
(93, 5, 3998, 9),
(94, 7, 5985, 9),
(95, 9, 4020, 9),
(96, 10, 3005, 9),
(97, 4, 3007, 9),
(98, 3, 2021, 9),
(99, 12, 990, 9),
(100, 3, 1997, 10),
(101, 7, 6002, 10),
(102, 6, 5014, 10),
(103, 8, 4987, 10),
(104, 11, 2009, 10),
(105, 5, 4015, 10),
(106, 2, 996, 10),
(107, 10, 2998, 10),
(108, 4, 2966, 10),
(109, 9, 4006, 10),
(110, 12, 1010, 10),
(111, 2, 1000, 11),
(112, 6, 4998, 11),
(113, 9, 3990, 11),
(114, 7, 5992, 11),
(115, 8, 4998, 11),
(116, 5, 4007, 11),
(117, 11, 1984, 11),
(118, 12, 1011, 11),
(119, 10, 3003, 11),
(120, 3, 2003, 11),
(121, 4, 3014, 11),
(122, 2, 994, 12),
(123, 6, 4998, 12),
(124, 10, 3004, 12),
(125, 8, 4993, 12),
(126, 5, 3993, 12),
(127, 3, 1986, 12),
(128, 7, 6018, 12),
(129, 12, 1001, 12),
(130, 4, 3008, 12),
(131, 9, 4012, 12),
(132, 11, 1993, 12),
(133, 3, 1997, 13),
(134, 11, 1998, 13),
(135, 7, 6030, 13),
(136, 9, 4000, 13),
(137, 6, 5009, 13),
(138, 5, 4003, 13),
(139, 4, 3000, 13),
(140, 8, 4994, 13),
(141, 10, 2972, 13),
(142, 12, 1005, 13),
(143, 2, 992, 13),
(144, 2, 1008, 14),
(145, 7, 5967, 14),
(146, 5, 4012, 14),
(147, 10, 2997, 14),
(148, 9, 3981, 14),
(149, 6, 5011, 14),
(150, 8, 5007, 14),
(151, 4, 3021, 14),
(152, 3, 2007, 14),
(153, 12, 1002, 14),
(154, 11, 1987, 14),
(155, 2, 993, 15),
(156, 4, 3000, 15),
(157, 12, 1007, 15),
(158, 3, 1988, 15),
(159, 5, 4009, 15),
(160, 9, 4012, 15),
(161, 7, 6005, 15),
(162, 6, 4985, 15),
(163, 8, 5003, 15),
(164, 10, 3000, 15),
(165, 11, 1998, 15),
(166, 2, 1004, 16),
(167, 11, 1991, 16),
(168, 4, 3003, 16),
(169, 3, 2016, 16),
(170, 7, 6000, 16),
(171, 10, 3015, 16),
(172, 8, 4968, 16),
(173, 5, 3998, 16),
(174, 9, 4017, 16),
(175, 6, 4992, 16),
(176, 12, 996, 16),
(177, 2, 988, 17),
(178, 8, 4998, 17),
(179, 7, 6032, 17),
(180, 6, 5006, 17),
(181, 9, 4002, 17),
(182, 11, 2004, 17),
(183, 5, 3988, 17),
(184, 4, 2985, 17),
(185, 10, 2994, 17),
(186, 12, 1011, 17),
(187, 3, 1992, 17),
(188, 2, 986, 18),
(189, 7, 5973, 18),
(190, 3, 2002, 18),
(191, 9, 3997, 18),
(192, 4, 2991, 18),
(193, 10, 3005, 18),
(194, 12, 1007, 18),
(195, 6, 5007, 18),
(196, 11, 1995, 18),
(197, 8, 5032, 18),
(198, 5, 4005, 18),
(199, 2, 1011, 19),
(200, 9, 4010, 19),
(201, 7, 6004, 19),
(202, 8, 4988, 19),
(203, 10, 3000, 19),
(204, 5, 4004, 19),
(205, 6, 5008, 19),
(206, 4, 3003, 19),
(207, 11, 1999, 19),
(208, 12, 981, 19),
(209, 3, 1992, 19),
(210, 2, 1001, 20),
(211, 3, 2004, 20),
(212, 5, 4007, 20),
(213, 7, 5979, 20),
(214, 6, 5023, 20),
(215, 9, 3996, 20),
(216, 12, 994, 20),
(217, 8, 5019, 20),
(218, 4, 3003, 20),
(219, 10, 2985, 20),
(220, 11, 1989, 20),
(221, 2, 1002, 21),
(222, 9, 4001, 21),
(223, 7, 5981, 21),
(224, 8, 4974, 21),
(225, 6, 4999, 21),
(226, 10, 2984, 21),
(227, 4, 3032, 21),
(228, 5, 4001, 21),
(229, 3, 2015, 21),
(230, 11, 2007, 21),
(231, 12, 1004, 21),
(232, 2, 1005, 22),
(233, 12, 1002, 22),
(234, 8, 5002, 22),
(235, 11, 1976, 22),
(236, 7, 6033, 22),
(237, 10, 2996, 22),
(238, 4, 3029, 22),
(239, 5, 3970, 22),
(240, 9, 3995, 22),
(241, 6, 4999, 22),
(242, 3, 1993, 22),
(243, 2, 1000, 23),
(244, 10, 3029, 23),
(245, 7, 5980, 23),
(246, 5, 4027, 23),
(247, 4, 2978, 23),
(248, 3, 2006, 23),
(249, 12, 1005, 23),
(250, 6, 4994, 23),
(251, 9, 3977, 23),
(252, 11, 2011, 23),
(253, 8, 4993, 23),
(254, 2, 980, 24),
(255, 12, 1016, 24),
(256, 7, 5989, 24),
(257, 5, 4021, 24),
(258, 6, 4971, 24),
(259, 10, 2997, 24),
(260, 8, 5033, 24),
(261, 9, 4023, 24),
(262, 4, 2974, 24),
(263, 3, 1998, 24),
(264, 11, 1998, 24),
(265, 2, 1020, 25),
(266, 9, 4006, 25),
(267, 8, 4981, 25),
(268, 3, 1992, 25),
(269, 7, 5988, 25),
(270, 12, 987, 25),
(271, 4, 3009, 25),
(272, 11, 2005, 25),
(273, 10, 3013, 25),
(274, 5, 3981, 25),
(275, 6, 5018, 25),
(276, 2, 1007, 26),
(277, 4, 2996, 26),
(278, 7, 5985, 26),
(279, 9, 4028, 26),
(280, 6, 4998, 26),
(281, 12, 991, 26),
(282, 11, 2000, 26),
(283, 10, 2981, 26),
(284, 3, 1990, 26),
(285, 8, 5015, 26),
(286, 5, 4009, 26),
(287, 3, 2013, 27),
(288, 7, 6018, 27),
(289, 6, 4965, 27),
(290, 9, 4007, 27),
(291, 11, 1992, 27),
(292, 5, 3973, 27),
(293, 4, 2989, 27),
(294, 8, 5033, 27),
(295, 2, 988, 27),
(296, 10, 3029, 27),
(297, 12, 993, 27),
(298, 2, 992, 28),
(299, 5, 3980, 28),
(300, 8, 5012, 28),
(301, 11, 1998, 28),
(302, 9, 4010, 28),
(303, 7, 6004, 28),
(304, 6, 4981, 28),
(305, 4, 2991, 28),
(306, 3, 2010, 28),
(307, 10, 3029, 28),
(308, 12, 993, 28),
(309, 2, 999, 29),
(310, 5, 4017, 29),
(311, 8, 4986, 29),
(312, 12, 1007, 29),
(313, 9, 4007, 29),
(314, 3, 1998, 29),
(315, 4, 2986, 29),
(316, 10, 2969, 29),
(317, 11, 2016, 29),
(318, 6, 5019, 29),
(319, 7, 5996, 29),
(320, 2, 1005, 30),
(321, 8, 4969, 30),
(322, 6, 4994, 30),
(323, 7, 5973, 30),
(324, 9, 4012, 30),
(325, 3, 2015, 30),
(326, 4, 3030, 30),
(327, 10, 2987, 30),
(328, 11, 2003, 30),
(329, 5, 4001, 30),
(330, 12, 1011, 30),
(331, 2, 1014, 31),
(332, 3, 1999, 31),
(333, 9, 4002, 31),
(334, 6, 4973, 31),
(335, 7, 6013, 31),
(336, 4, 3031, 31),
(337, 8, 5004, 31),
(338, 12, 998, 31),
(339, 10, 2997, 31),
(340, 5, 3989, 31),
(341, 11, 1980, 31),
(342, 2, 994, 32),
(343, 5, 4022, 32),
(344, 8, 4990, 32),
(345, 9, 4006, 32),
(346, 7, 6005, 32),
(347, 3, 1996, 32),
(348, 6, 5014, 32),
(349, 10, 2992, 32),
(350, 4, 2966, 32),
(351, 11, 2005, 32),
(352, 12, 1010, 32),
(353, 2, 1002, 33),
(354, 5, 3993, 33),
(355, 6, 4977, 33),
(356, 10, 2994, 33),
(357, 8, 4967, 33),
(358, 7, 5999, 33),
(359, 11, 2001, 33),
(360, 9, 4011, 33),
(361, 3, 2026, 33),
(362, 4, 3021, 33),
(363, 12, 1009, 33),
(364, 2, 997, 34),
(365, 9, 3985, 34),
(366, 8, 4985, 34),
(367, 4, 3018, 34),
(368, 11, 2019, 34),
(369, 7, 5977, 34),
(370, 5, 4025, 34),
(371, 6, 5011, 34),
(372, 12, 1008, 34),
(373, 3, 2001, 34),
(374, 10, 2974, 34),
(375, 2, 1008, 35),
(376, 3, 2008, 35),
(377, 6, 4990, 35),
(378, 8, 4984, 35),
(379, 9, 4022, 35),
(380, 4, 3020, 35),
(381, 10, 2996, 35),
(382, 7, 6000, 35),
(383, 5, 3991, 35),
(384, 11, 1992, 35),
(385, 12, 989, 35),
(386, 2, 992, 36),
(387, 4, 2975, 36),
(388, 6, 5015, 36),
(389, 7, 5998, 36),
(390, 3, 1998, 36),
(391, 8, 4986, 36),
(392, 11, 2015, 36),
(393, 5, 4023, 36),
(394, 9, 3999, 36),
(395, 10, 2984, 36),
(396, 12, 1015, 36),
(397, 2, 1015, 37),
(398, 10, 2994, 37),
(399, 9, 4021, 37),
(400, 5, 3989, 37),
(401, 7, 5999, 37),
(402, 4, 3027, 37),
(403, 6, 4987, 37),
(404, 8, 4981, 37),
(405, 3, 2008, 37),
(406, 11, 1989, 37),
(407, 12, 990, 37);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `authKey` varchar(50) NOT NULL,
  `accessToken` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `authKey`, `accessToken`) VALUES
(1, 'Alex', '12345', '', ''),
(2, 'Auto', 'qwe', '', ''),
(3, 'Юра', 'юра', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `experiment`
--
ALTER TABLE `experiment`
 ADD PRIMARY KEY (`id_exp`), ADD KEY `name` (`name`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
 ADD PRIMARY KEY (`id_result`), ADD KEY `id_exp` (`id_exp`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD KEY `name` (`name`), ADD KEY `name_2` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `experiment`
--
ALTER TABLE `experiment`
MODIFY `id_exp` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
MODIFY `id_result` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=408;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `experiment`
--
ALTER TABLE `experiment`
ADD CONSTRAINT `experiment_ibfk_1` FOREIGN KEY (`name`) REFERENCES `user` (`name`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `results`
--
ALTER TABLE `results`
ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`id_exp`) REFERENCES `experiment` (`id_exp`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;