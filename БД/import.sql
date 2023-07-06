-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Мар 11 2019 г., 11:12
-- Версия сервера: 5.7.25-0ubuntu0.18.04.2
-- Версия PHP: 7.1.26-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u-world`
--

-- --------------------------------------------------------

--
-- Структура таблицы `buy`
--

CREATE TABLE `buy` (
  `id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `type` text NOT NULL,
  `data` text NOT NULL,
  `status` text NOT NULL,
  `sum` int(11) NOT NULL,
  `dateComplete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `buy`
--

INSERT INTO `buy` (`id`, `name`, `type`, `data`, `status`, `sum`, `dateComplete`) VALUES
(1, 'ItsLeoo', 'perm', 'legend', '3', 165, '2019-02-24 20:44:26'),
(2, 'ZentoFX', 'mysterybox', 'mysterybox-34', '3', 500, '2017-01-24 20:44:26'),
(3, 'ZentoFX', 'case', 'gd-10', '3', 70, '2019-02-24 10:44:26'),
(8, 'ZentoFX', 'perm', 'legend', '3', 165, '2019-02-28 21:39:26'),
(9, 'bbb', 'perm', 'premium', '3', 2, '2019-03-04 21:06:21'),
(10, 'UniversalStudio', 'perm', 'premium', '3', 2, '2019-03-05 14:11:44'),
(12, 'SuslokPo', 'perm', 'premium', '3', 1, '2019-03-07 21:02:13'),
(13, 'SuslokPo', 'perm', 'premium', '3', 1, '2019-03-07 21:18:26');

-- --------------------------------------------------------

--
-- Структура таблицы `donate`
--

CREATE TABLE `donate` (
  `id` int(11) NOT NULL,
  `group` varchar(16) NOT NULL,
  `name` varchar(32) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(16) NOT NULL,
  `commands` text,
  `image` varchar(32) NOT NULL,
  `label` varchar(16) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `donate`
--

INSERT INTO `donate` (`id`, `group`, `name`, `price`, `type`, `commands`, `image`, `label`, `description`) VALUES
(1, 'premium', 'Premium', 15, 'perm', 'pex user {name} group set premium', '', '', '<p><strong>АНАРХИЯ</strong></p><p>Возможности:</p><p>▪ /craft - открыть верстак</p><p>▪ Приватов в обычном мире: 5</p><p>▪ Приватов в других мирах: 5</p><p>▪ Анти-AFK</p><p><strong>Скайблок</strong></p><p>Возможности:</p><p>▪ /craft - открыть верстак</p><p>▪ /kit wanderer - уникальный набор</p><p>▪ Размер острова: 50</p><p>▪ Размер команды: 5</p><p>▪ Дополнительно 1 сердечко</p><p>▪ Возможность изменять тип спавнера</p><p>▪ Анти-AFK</p>'),
(2, 'elite', 'Elite', 50, 'perm', 'pex user {name} group set elite', '', '', ''),
(3, 'legend', 'Legend', 165, 'perm', 'pex user {name} group set legend', '', '', ''),
(4, 'titan', 'Titan', 400, 'perm', 'pex user {name} group set titan', '', '', ''),
(5, 'sponsor', 'Universal', 990, 'perm', 'pex user {name} group set universal', '', '', ''),
(13, 'yunik-1', 'Юник x1', 10, 'yunik', NULL, '', '', ''),
(14, 'yunik-15', 'Юник x15', 150, 'yunik', NULL, '', '', ''),
(15, 'yunik-30', 'Юник x30', 300, 'yunik', NULL, '', '', ''),
(16, 'yunik-65', 'Юник x65', 650, 'yunik', NULL, '', '', ''),
(19, 'mysterybox-1', 'Мистический сундук x1', 50, 'mysterybox', NULL, '', '', ''),
(20, 'mysterybox-5', 'Мистический сундук x5', 100, 'mysterybox', NULL, '', '', ''),
(21, 'mysterybox-12', 'Мистический сундук x12', 250, 'mysterybox', NULL, '', '', ''),
(22, 'mysterybox-34', 'Мистический сундук x34', 500, 'mysterybox', NULL, '', '', ''),
(23, 'mysterybox-56', 'Мистический сундук x56', 1000, 'mysterybox', NULL, '', '', ''),
(24, 'goods-1', 'Ключ от кейса с вещами x1', 90, 'case', NULL, '', '', ''),
(25, 'goods-5', 'Ключ от кейса с вещами x5', 70, 'case', NULL, '', '', ''),
(28, 'money-1000', 'Монетки x1,000', 35, 'money', NULL, '', '', ''),
(29, 'money-7000', 'Монетки x7,000', 145, 'money', NULL, '', '', ''),
(30, 'money-15000', 'Монетки x15,000', 290, 'money', NULL, '', '', ''),
(31, 'money-35000', 'Монетки x35,000', 550, 'money', NULL, '', '', ''),
(33, 'mysterygift-5', 'Подарочная коробка x5', 100, 'mysterygift', NULL, '', '', ''),
(34, 'mysterygift-10', 'Подарочная коробка x10', 200, 'mysterygift', NULL, '', '', ''),
(35, 'mysterygift-25', 'Подарочная коробка x25', 300, 'mysterygift', NULL, '', '', ''),
(36, 'mysterygift-50', 'Подарочная коробка x50', 400, 'mysterygift', NULL, '', '', ''),
(37, 'yunik-100', 'Юник x100', 1000, 'yunik', NULL, '', '', ''),
(38, 'money-100000', 'Монетки x100,000', 780, 'money', NULL, '', '', ''),
(39, 'goods-10', 'Ключ от кейса с вещами x10', 120, 'case', NULL, '', '', ''),
(40, 'donate-1', 'Ключ от кейса с донатом x1', 100, 'case', NULL, '', '', ''),
(41, 'donate-5', 'Ключ от кейса с донатом x5', 250, 'case', NULL, '', '', ''),
(42, 'donate-10', 'Ключ от кейса с донатом x10', 340, 'case', NULL, '', '', ''),
(43, 'gd-10', 'Ключи от всех кейсов x10', 550, 'case', 'case give {name} donate 10, case give {name} goods 10', '', '', ''),
(44, 'tituls-cat', 'Котик', 20, 'tituls', NULL, 'cat.gif', '', ''),
(45, 'tituls-ghost', 'Призрак', 20, 'tituls', NULL, 'ghost.gif', '', ''),
(46, 'tituls-lgbt', 'Я за ЛГБТ', 20, 'tituls', NULL, 'lgbt.gif', '', ''),
(47, 'tituls-na', 'Ня-ня-ня', 20, 'tituls', NULL, '', '', ''),
(48, 'unban', 'Разбан', 100, 'other', 'unban {name}', '', '', ''),
(49, 'carry', 'Перенос', 150, 'other', NULL, '', '', ''),
(50, 'recovery', 'Восстановление', 50, 'other', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `title` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `title`) VALUES
(2, 'menu', '      <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n         <div class=\"container\">\r\n            <div class=\"navbar-header\">\r\n               <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n               <span class=\"navbar-toggler-icon\"></span>\r\n               </button>\r\n               <a class=\"navbar-brand mb-0 h1\" href=\"/\">U-world.su</a>\r\n            </div>\r\n            <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\r\n               <ul class=\"navbar-nav\">\r\n                  <li class=\"nav-item\">\r\n                     <a class=\"nav-link\" href=\"/\"><i class=\"fa fa-home\" aria-hidden=\"true\"></i> Главная</a>\r\n                  </li>\r\n                  <li class=\"nav-item\">\r\n                     <a class=\"nav-link\" href=\"instructions.php\"><i class=\"fas fa-bomb\"></i> Гайды</a>\r\n                  </li>\r\n                  <li class=\"nav-item\">\r\n                     <a class=\"nav-link\" href=\"contacts.php\"><i class=\"fas fa-address-book\"></i> Контакты</a>\r\n                  </li>\r\n                  <li class=\"nav-item\">\r\n                     <a class=\"nav-link\" data-toggle=\"modal\" data-target=\".bd-example-modal-lg\" href><i class=\"fas fa-question-circle\"></i> Правила</a>\r\n                  </li>\r\n                  <li class=\"nav-item\">\r\n                     <a class=\"nav-link welcome\">IP - u-world.su</a>\r\n                  </li>\r\n               </ul>\r\n            </div>\r\n         </div>\r\n      </nav>\r\n\r\n\r\n<div class=\"modal fade bd-example-modal-lg\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myLargeModalLabel\" aria-hidden=\"true\">\r\n\r\n  <div class=\"modal-dialog modal-lg\">\r\n    <div class=\"modal-content\">\r\n\r\n      <div class=\"modal-header\">\r\n        <h5 class=\"modal-title h4\" id=\"myLargeModalLabel\"><i class=\"fas fa-question-circle\"></i> Правила проекта U-World.su</h5>\r\n        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n          <span aria-hidden=\"true\">×</span>\r\n        </button>\r\n      </div>\r\n      <div class=\"modal-body\">\r\n<div class=\"accordion\" id=\"accordionExample\">\r\n  <div class=\"card\">\r\n    <div class=\"card-header\" id=\"headingOne\">\r\n      <h5 class=\"mb-0\">\r\n        <button class=\"btn btn-link\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\">\r\n         <i class=\"fas fa-exclamation-triangle\"></i> Основные правила\r\n        </button>\r\n      </h5>\r\n    </div>\r\n\r\n    <div id=\"collapseOne\" class=\"collapse show\" aria-labelledby=\"headingOne\" data-parent=\"#accordionExample\">\r\n      <div class=\"card-body\">\r\n       <div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.1&nbsp;Запрещено передавать/продавать аккаунты, а так же играть на проданных аккаунтах. (БАН+СНЯТИЕ).<br>\r\n                <span class=\"ng-span\">Бан навсегда.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.2&nbsp;Запрещено осуществлять продажу/куплю за реальные деньги на сервере, или за его пределами.<br>\r\n                <span class=\"ng-span\">Бан навсегда.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.3&nbsp;Запрещено обманывать администрацию проекта.<br>\r\n                <span class=\"ng-span\">Бан навсегда.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.4&nbsp;Запрещено создавать любые ловушки в синей зоне гильдий возле кинга (В других местах ловушки разрешены).<br>\r\n                <span class=\"ng-span\">Бан на 1 неделю.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.4&nbsp;Запрещено создавать любые ловушки в синей зоне гильдий возле кинга (В других местах ловушки разрешены).<br>\r\n                <span class=\"ng-span\">Бан на 1 неделю.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.5 Запрещено ставить /sethome в чужом доме, без согласия владельца этого дома.<br>\r\n                <span class=\"ng-span\">Бан на 1 неделю.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.6 Запрещено использовать любые баги сервера.<br>\r\n                <span class=\"ng-span\">Бан на 1 месяц.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.7 Запрещено рекламировать чужой сервер, caйт.<br>\r\n                <span class=\"ng-span\">Бан навсегда.</span>\r\n            </p>\r\n        </div> \r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.8 Запрещен ник, нарушающий правила \"общения\".<br>\r\n                <span class=\"ng-span\">Бан на 1 неделю.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.9 Запрещены Warp-ловушки (пример: Warp находящийся над ямой, в замкнутом пространстве и т.д.).<br>\r\n                <span class=\"ng-span\">Бан на 1 неделю.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.10 Запрещено создавать клан с нецензурным названием, названием привилегии, ником схожим с персоналом.<br>\r\n                <span class=\"ng-span\">Бан на 1 неделю.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.11 Запрещено распространение любых читов/макросов/кликеров. (Как в чате так и в /msg).<br>\r\n                <span class=\"ng-span\">Бан на 1 месяц.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">1.12 Запрещено использовать читы и чит клиенты, инжекторы, прочий софт улучшающий показатели в PvP. Разрешенное ПО: (Кликеры, макросы, regedit).<br>\r\n                <span class=\"ng-span\">Бан на 1 неделю.</span>\r\n            </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n  <div class=\"card\">\r\n    <div class=\"card-header\" id=\"headingTwo\">\r\n      <h5 class=\"mb-0\">\r\n        <button class=\"btn btn-link collapsed\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\">\r\n          <i class=\"fas fa-exclamation-circle\"></i> Правила общения\r\n        </button>\r\n      </h5>\r\n    </div>\r\n    <div id=\"collapseTwo\" class=\"collapse\" aria-labelledby=\"headingTwo\" data-parent=\"#accordionExample\">\r\n      <div class=\"card-body\">\r\n        <div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">2.1 Запрещено оскорбление других игроков (в любой форме).<br>\r\n                <span class=\"ng-span\">Мут на 1 час.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">2.2 Запрещено засорять чат бессмысленными или однотипными сообщениями (флудом, в том числе пиар варпов, не более 3х сообщений за раз)+(Спам в ЛС не в счет).<br>\r\n                <span class=\"ng-span\">Мут на 2 часа.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">2.3 Запрещено: оскорблять ЧУЖИХ родных (любое ОСКОРБИТЕЛЬНОЕ упоминание, кроме случаев когда в чат цитируешь чьё-то сообщение), оскорблять сервер и все что к нему относится, оскобрлять администрацию (хелпер, модер, овнер).<br>\r\n                <span class=\"ng-span\">Бан на 1 месяц.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">2.4 Запрещено обсуждать действия администрации (исключения: группа).<br>\r\n                <span class=\"ng-span\">Мут на 2 часа.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">2.5 Запрещено попрошайничество (в любой форме).<br>\r\n                <span class=\"ng-span\">Мут на 2 часа.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">2.6 Запрещено спрашивать как сделать свой сервер или где скачать плагин и т.д.<br>\r\n                <span class=\"ng-span\">Мут на 2 часа.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">2.7 Запрещено призывы к экстремистской деятельности, выяснения межрассовых отношений, национал-социалистические лозунги и т.п..<br>\r\n                <span class=\"ng-span\">Бан на 1 месяц.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">2.8 Запрещено упоминать в чате о других проектах/серверах.<br>\r\n                <span class=\"ng-span\">Мут на 1 час.</span>\r\n            </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n  <div class=\"card\">\r\n    <div class=\"card-header\" id=\"headingThree\">\r\n      <h5 class=\"mb-0\">\r\n        <button class=\"btn btn-link collapsed\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapseThree\" aria-expanded=\"false\" aria-controls=\"collapseThree\">\r\n          <i class=\"fas fa-gem\"></i> Правила для Донатеров\r\n        </button>\r\n      </h5>\r\n    </div>\r\n    <div id=\"collapseThree\" class=\"collapse\" aria-labelledby=\"headingThree\" data-parent=\"#accordionExample\">\r\n      <div class=\"card-body\">\r\n       	<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">3.1 Запрещено снимать мут/бан с нарушителей.<br>\r\n                <span class=\"ng-span\">Бан на 1 месяц.</span>\r\n            </p>\r\n        </div>\r\n		 <div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">3.2 Запрещено кикать/банить/мутить пользователей сервера без причины.<br>\r\n                <span class=\"ng-span\">Бан на 1 месяц.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">3.3 При выдаче бана/кика/мута ОБЯЗАТЕЛЬНО иметь доказательство и предъявить его (если попросят) команде проекта.<br>\r\n                <span class=\"ng-span\">Бан на 1 месяц.</span>\r\n            </p>\r\n        </div>\r\n		<div class=\"text ng-scope expand\">\r\n            <p class=\"ng-binding\">3.4 Запрещено мешать игрокам находясь в режиме \"креатив\" или в режиме \"бога\" или в ванише (Пример: кидать снежки, яйца, мешать строить и т.п).<br>\r\n                <span class=\"ng-span\">Бан на 1 день.</span>\r\n            </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n</div>', 'Меню');

-- --------------------------------------------------------

--
-- Структура таблицы `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `promo` varchar(16) NOT NULL,
  `sale` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `promo`
--

INSERT INTO `promo` (`id`, `promo`, `sale`) VALUES
(1, 'SALE', 90);

-- --------------------------------------------------------

--
-- Структура таблицы `unitpay_payments`
--

CREATE TABLE `unitpay_payments` (
  `id` int(10) NOT NULL,
  `unitpayId` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `sum` float NOT NULL,
  `itemsCount` int(11) NOT NULL DEFAULT '1',
  `dateCreate` datetime NOT NULL,
  `dateComplete` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `unitpay_payments`
--

INSERT INTO `unitpay_payments` (`id`, `unitpayId`, `account`, `sum`, `itemsCount`, `dateCreate`, `dateComplete`, `status`) VALUES
(1, '849497481', 'ZentoFX.premium', 15, 15, '2019-02-23 23:08:01', NULL, 0),
(2, '849515411', 'ItsLeoo.premium', 15, 15, '2019-02-23 23:33:32', NULL, 0),
(3, '849521871', 'ItsLeoo.premium', 1, 1, '2019-02-23 23:43:37', '2019-02-23 23:44:44', 1),
(4, '849538561', 'ZentoFX.premium', 1, 1, '2019-02-24 00:11:13', NULL, 0),
(5, '849544541', 'ZentoFX.lite', 50, 50, '2019-02-24 00:22:59', NULL, 0),
(6, '849546811', 'ZentoFX.lite', 50, 50, '2019-02-24 00:28:09', NULL, 0),
(7, '849546911', 'ZentoFX.lite', 50, 50, '2019-02-24 00:28:22', NULL, 0),
(8, '849549281', 'ZentoFX.legend', 165, 165, '2019-02-24 00:33:39', NULL, 0),
(9, '849549301', 'ZentoFX.legend', 165, 165, '2019-02-24 00:33:44', NULL, 0),
(10, '850289741', 'ZentoFX.premium', 1, 1, '2019-02-24 19:31:20', NULL, 0),
(11, '850291081', 'ZentoFX.premium', 1, 1, '2019-02-24 19:32:33', NULL, 0),
(12, '850291631', 'ZentoFX.premium', 1, 1, '2019-02-24 19:33:07', NULL, 0),
(13, '850292371', 'ZentoFX.premium', 1, 1, '2019-02-24 19:33:56', NULL, 0),
(14, '850297831', 'ffff.premium', 1, 1, '2019-02-24 19:39:39', NULL, 0),
(15, '850298991', 'vv.premium', 1, 1, '2019-02-24 19:40:41', NULL, 0),
(16, '850303041', 'ZentoFX.premium', 1, 1, '2019-02-24 19:44:30', NULL, 0),
(17, '850303581', 'ZentoFX.yunik-1', 1, 1, '2019-02-24 19:45:12', '2019-02-24 19:45:33', 1),
(18, '850305631', 'ZentoFX.tituls-lgbt', 1, 1, '2019-02-24 19:47:25', '2019-02-24 19:47:46', 1),
(19, '850306991', 'ZentoFX.donate-10', 1, 1, '2019-02-24 19:48:55', '2019-02-24 19:49:11', 1),
(20, '850308011', 'ZentoFX.tituls-cat', 5000, 1, '2019-02-24 19:50:05', '2019-02-24 19:50:23', 1),
(21, '850358931', 'ZentoFX.premium', 1, 1, '2019-02-24 20:44:03', '2019-02-24 20:44:26', 1),
(22, '96656', 'test', 10, 10, '2019-02-25 12:48:18', NULL, 0),
(23, '36093', 'test', 10, 10, '2019-02-25 13:00:24', NULL, 0),
(24, '525', 'test', 10, 10, '2019-02-25 13:00:25', NULL, 0),
(25, '856517701', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:26', NULL, 0),
(26, '856517721', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:27', NULL, 0),
(27, '856517731', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:28', NULL, 0),
(28, '856517751', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:28', NULL, 0),
(29, '856517771', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:29', NULL, 0),
(30, '856517781', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:30', NULL, 0),
(31, '856517791', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:30', NULL, 0),
(32, '856517811', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:31', NULL, 0),
(33, '856517821', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:31', NULL, 0),
(34, '856517841', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:31', NULL, 0),
(35, '856517851', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:32', NULL, 0),
(36, '856517871', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:32', NULL, 0),
(37, '856517891', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:27:33', NULL, 0),
(38, '856518791', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:28:24', NULL, 0),
(39, '856518811', 'ZentoFX.mysterybox-5', 100, 100, '2019-03-04 17:28:25', NULL, 0),
(40, '856684391', 'ZentoFX.titan', 235, 235, '2019-03-04 20:39:34', NULL, 0),
(41, '856685361', 'ZentoFX.legend', 17, 17, '2019-03-04 20:40:46', NULL, 0),
(42, '856696691', 'ZentoFX.elite', 50, 50, '2019-03-04 20:55:52', NULL, 0),
(43, '856704111', 'bbb.premium', 1.5, 1, '2019-03-04 21:05:52', '2019-03-04 21:06:21', 1),
(44, '857053291', 'UniversalStudio.premium', 2, 2, '2019-03-05 14:10:53', '2019-03-05 14:11:44', 1),
(45, '858827411', 'ZentoFX.premium', 15, 15, '2019-03-07 18:58:10', NULL, 0),
(46, '858828311', 'ZentoFX.sponsor', 825, 825, '2019-03-07 18:58:52', NULL, 0),
(47, '98352', 'test', 10, 10, '2019-03-07 19:07:53', NULL, 0),
(48, '24221', 'test', 10, 10, '2019-03-07 19:07:59', NULL, 0),
(49, '396', 'test', 10, 10, '2019-03-07 19:08:02', '2019-03-07 19:08:18', 1),
(50, '858857491', 'ZentoFX.elite', 5, 5, '2019-03-07 19:27:05', NULL, 0),
(51, '858944611', 'SuslokPo.premium', 1.5, 1, '2019-03-07 21:00:20', NULL, 0),
(52, '858945901', 'SuslokPo.premium', 1.5, 1, '2019-03-07 21:01:39', '2019-03-07 21:02:13', 1),
(53, '858960801', 'SuslokPo.premium', 1.4, 1, '2019-03-07 21:17:56', '2019-03-07 21:18:26', 1),
(54, '38480', 'test', 10, 10, '2019-03-08 06:19:40', NULL, 0),
(55, '26329', 'test', 10, 10, '2019-03-08 06:20:01', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `yourls_log`
--

CREATE TABLE `yourls_log` (
  `click_id` int(11) NOT NULL,
  `click_time` datetime NOT NULL,
  `shorturl` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `referrer` varchar(200) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` varchar(41) NOT NULL,
  `country_code` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yourls_log`
--

INSERT INTO `yourls_log` (`click_id`, `click_time`, `shorturl`, `referrer`, `user_agent`, `ip_address`, `country_code`) VALUES
(1, '2019-02-22 10:18:58', 'ozh', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(2, '2019-02-22 10:21:57', 'test', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(3, '2019-02-22 10:29:20', 'test2', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(4, '2019-02-22 10:45:46', 'gyvdif', 'http://away.vk.com/away.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(5, '2019-02-22 10:46:09', 'ozzdqv', 'http://away.vk.com/away.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(6, '2019-02-22 10:57:37', 'reejap', 'http://away.vk.com/away.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65', '37.214.60.126', 'BY'),
(7, '2019-02-22 11:00:47', 'cqyrhl', 'http://away.vk.com/away.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65', '37.214.60.126', 'BY'),
(8, '2019-02-22 21:55:39', 'rhsuto', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(9, '2019-02-22 22:02:34', 'ptpdqo', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(10, '2019-02-22 22:06:46', 'tfbouq', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(11, '2019-02-22 22:09:38', 'hergoz', 'direct', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 YaBrowser/19.1.1.909 Yowser/2.5 Safari/537.36', '31.173.80.170', 'RU'),
(12, '2019-02-22 22:22:52', 'rjfmed', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(13, '2019-02-22 22:46:59', 'qjlfts', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(14, '2019-02-22 23:07:19', 'wsewfc', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(15, '2019-02-22 23:17:05', 'rddnmg', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(16, '2019-02-22 23:18:24', 'pcrzmz', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(17, '2019-02-23 00:10:31', 'nkbvsn', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '82.208.101.243', 'RU'),
(18, '2019-02-23 00:14:01', 'nkbvsn', 'direct', 'Mozilla/5.0 (compatible; vkShare; +http://vk.com/dev/Share)', '195.211.23.206', 'RU'),
(19, '2019-02-23 00:14:14', 'nkbvsn', 'http://away.vk.com/away.php', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '178.209.235.88', 'RU'),
(20, '2019-02-23 07:20:21', 'ufagnz', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65', '37.214.60.126', 'BY'),
(21, '2019-02-23 09:24:25', 'etoeap', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.65', '37.214.60.126', 'BY'),
(22, '2019-02-23 20:33:42', 'hjsejp', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.68', '37.214.60.126', 'BY'),
(23, '2019-02-23 20:43:49', 'jxexdi', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.68', '37.214.60.126', 'BY'),
(24, '2019-03-04 17:39:45', 'hjnbek', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '93.120.156.23', 'RU'),
(25, '2019-03-04 17:40:51', 'oiqpvw', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '93.120.156.23', 'RU'),
(26, '2019-03-04 17:55:56', 'cjxvez', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '93.120.156.23', 'RU'),
(27, '2019-03-05 11:11:01', 'eplidt', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.79', '37.214.62.74', 'BY'),
(28, '2019-03-07 15:58:14', 'towtej', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '93.120.156.23', 'RU'),
(29, '2019-03-07 15:58:56', 'jkodbb', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '93.120.156.23', 'RU');

-- --------------------------------------------------------

--
-- Структура таблицы `yourls_options`
--

CREATE TABLE `yourls_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yourls_options`
--

INSERT INTO `yourls_options` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'version', '1.7.4'),
(2, 'db_version', '482'),
(3, 'next_id', '1'),
(4, 'active_plugins', 'a:0:{}'),
(5, 'core_version_checks', 'O:8:\"stdClass\":4:{s:15:\"failed_attempts\";i:0;s:12:\"last_attempt\";i:1551713930;s:11:\"last_result\";O:8:\"stdClass\":2:{s:6:\"latest\";s:5:\"1.7.3\";s:6:\"zipurl\";s:56:\"https://api.github.com/repos/YOURLS/YOURLS/zipball/1.7.3\";}s:15:\"version_checked\";s:5:\"1.7.4\";}'),
(6, 'defer_hashing_error', '1551435475');

-- --------------------------------------------------------

--
-- Структура таблицы `yourls_url`
--

CREATE TABLE `yourls_url` (
  `keyword` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(41) NOT NULL,
  `clicks` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yourls_url`
--

INSERT INTO `yourls_url` (`keyword`, `url`, `title`, `timestamp`, `ip`, `clicks`) VALUES
('aayazx', 'https://unitpay.ru/pay/redirect/848429151-8fd4fe40fb?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-22 23:59:32', '109.173.96.129', 0),
('adhmby', 'https://unitpay.ru/pay/redirect/848406921-e5743391b0?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-22 22:24:24', '109.173.96.129', 0),
('aqvzir', 'https://unitpay.ru/pay/redirect/848429181-b956084f92?backUrl=http%3A//u-world.su', 'ZentoFX.case.100', '2019-02-22 23:59:41', '109.173.96.129', 0),
('arpytz', 'https://unitpay.ru/pay/redirect/849123681-cb36f0baac?backUrl=http%3A//u-world.su', 'ZentoFX.ultra.310', '2019-02-23 02:31:45', '109.173.96.129', 0),
('ausfmn', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.premium&sum=20&currency=RUB&signature=e865d1001dc4475d59fca6d7797e25207925393275bc235e05ff3a28468d4abb&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848420111&hideMenu=true', 'ZentoFX.premium.20', '2019-02-22 23:14:00', '109.173.96.129', 0),
('bkuknz', 'https://unitpay.ru/pay/redirect/849546811-2b21c9a3d0?backUrl=http%3A//u-world.su', 'ZentoFX.lite.50', '2019-02-24 09:28:09', '109.173.96.129', 0),
('cgudgc', 'https://unitpay.ru/pay/redirect/848431401-fb995d6283?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:10:16', '109.173.96.129', 0),
('ciyxqn', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517791&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:30', '109.173.96.129', 0),
('cjaeqj', 'https://unitpay.ru/pay/redirect/849546911-2b6446cad0?backUrl=http%3A//u-world.su', 'ZentoFX.lite.50', '2019-02-24 09:28:22', '109.173.96.129', 0),
('cjxvez', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.elite&sum=50&currency=RUB&signature=d11f89595050b3ca40d28321ce186d9f400e1978216d702037193c063d97193b&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20Elite&hideOtherMethods=true&locale=ru&paymentId=856696691&hideMenu=true', 'ZentoFX.elite.50', '2019-03-04 05:55:52', '109.173.96.129', 1),
('cqyrhl', 'https://bill.qiwi.com/order/external/form.action?shop=552441&transaction=847818101&successUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F847818101-407267fd1e&failUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F847818101-407267fd1e&iframe=true&pay_source=qw&to=79895129748', 'Xui.premium.20', '2019-02-21 23:00:38', '109.173.96.129', 1),
('czcljh', 'https://unitpay.ru/pay/redirect/848964221-ffca69c258?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:32:28', '109.173.96.129', 0),
('dxgrcn', 'https://unitpay.ru/pay/redirect/848963711-5b5f79699a?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:32:07', '109.173.96.129', 0),
('eplidt', 'https://unitpay.ru/pay/119951-3e75c/card?account=UniversalStudio.premium&sum=2&currency=RUB&signature=5a49cc679dd478e3d68faaf7535f69783f0786f54ddebfe1edeff7238269b01c&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20Premium&hideOtherMethods=true&locale=ru&paymentId=857053291&hideMenu=true', 'UniversalStudio.premium.2', '2019-03-04 23:10:53', '109.173.96.129', 1),
('esbjqs', 'https://unitpay.ru/pay/redirect/849189601-335d3b5979?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 03:24:51', '109.173.96.129', 0),
('etoeap', 'https://unitpay.ru/pay/redirect/848722621-62a9fe581e?backUrl=http%3A//u-world.su', 'ItsLeoo.lite.80', '2019-02-23 09:24:18', '109.173.96.129', 1),
('ezdibc', 'https://unitpay.ru/pay/redirect/849275471-793d5dddc6?backUrl=http%3A//u-world.su', 'ZentoFX.star.90', '2019-02-23 04:32:42', '109.173.96.129', 0),
('fgapbl', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3DZentoFX%7D.case&sum=100&currency=RUB&signature=100067e89d693a105799926a6f1968fa8ec014cf29553d8b18b7b7507048c24b&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BA%D0%B5%D0%B9%D1%81%D0%BE%D0%B2&hideOtherMethods=true&locale=ru&paymentId=848398201&hideMenu=true', 'CraftPlayer{name=ZentoFX}.case.100', '2019-02-23 09:59:33', '109.173.96.129', 0),
('fkzdbd', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.premium&sum=20&currency=RUB&signature=e865d1001dc4475d59fca6d7797e25207925393275bc235e05ff3a28468d4abb&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848426761&hideMenu=true', 'ZentoFX.premium.20', '2019-02-22 23:46:21', '109.173.96.129', 0),
('fpwmpc', 'https://unitpay.ru/pay/redirect/848960501-a8a446bbf7?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:29:47', '109.173.96.129', 0),
('fpyrjw', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.premium&sum=20&currency=RUB&signature=e865d1001dc4475d59fca6d7797e25207925393275bc235e05ff3a28468d4abb&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848406821&hideMenu=true', 'ZentoFX.premium.20', '2019-02-22 22:24:15', '109.173.96.129', 0),
('fpyvtg', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3Dmiomoor%7D.case&sum=100&currency=RUB&signature=36389a31b0e12e49d764c54bc3e568c0813a8c34a9aee4bf52cf699503ee3347&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BA%D0%B5%D0%B9%D1%81%D0%BE%D0%B2&hideOtherMethods=true&locale=ru&paymentId=848400801&hideMenu=true', 'CraftPlayer{name=miomoor}.case.100', '2019-02-22 22:06:29', '109.173.96.129', 0),
('fqskat', 'https://unitpay.ru/pay/redirect/848428421-1af87a60e3?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-22 23:55:47', '109.173.96.129', 0),
('fxknoz', 'https://unitpay.ru/pay/redirect/848995521-fdd418a4cc?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:55:34', '109.173.96.129', 0),
('gdmuth', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.lite&sum=80&currency=RUB&signature=962c5293ea45dda93e97696454b7a7caefe899197552bb8452e53742611a0365&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848403011&hideMenu=true', 'ZentoFX.lite.80', '2019-02-22 22:12:50', '109.173.96.129', 0),
('ghjxcx', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3DZentoFX%7D.premium&sum=20&currency=RUB&signature=30fa62fca91da9511ad130193b8a8e1d50fe4fc9d4d76422ebf2dc6d1cbf51a2&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848401641&hideMenu=true', 'CraftPlayer{name=ZentoFX}.premium.20', '2019-02-22 22:08:45', '109.173.96.129', 0),
('gibxrw', 'https://bill.qiwi.com/order/external/form.action?shop=552441&transaction=847824891&successUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F847824891-92f8bc1a1b&failUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F847824891-92f8bc1a1b&iframe=true&pay_source=qw&to=79875494545', 'ItsLeoo.premium.20', '2019-02-21 23:08:12', '109.173.96.129', 0),
('gyaqfe', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.premium&sum=20&currency=RUB&signature=e865d1001dc4475d59fca6d7797e25207925393275bc235e05ff3a28468d4abb&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848407281&hideMenu=true', 'ZentoFX.premium.20', '2019-02-22 22:25:50', '109.173.96.129', 0),
('gyvdif', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.premium&sum=20&currency=RUB&signature=eee486b62478e1dc5171a0d6516be2876ed1372f47218c97a49c0dbf61e57ff6&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D1%8B&hideOtherMethods=true&locale=ru&paymentId=847804531&hideMenu=true', 'ZentoFX.premium.20', '2019-02-21 22:45:44', '109.173.96.129', 1),
('haekgw', 'https://unitpay.ru/pay/redirect/848429131-787684862b?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-22 23:59:28', '109.173.96.129', 0),
('hanzjd', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.premium&sum=20&currency=RUB&signature=e865d1001dc4475d59fca6d7797e25207925393275bc235e05ff3a28468d4abb&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848429201&hideMenu=true', 'ZentoFX.premium.20', '2019-02-22 23:59:48', '109.173.96.129', 0),
('hedusu', 'https://unitpay.ru/pay/redirect/849544541-4d2a6a80dc?backUrl=http%3A//u-world.su', 'ZentoFX.lite.50', '2019-02-24 09:22:59', '109.173.96.129', 0),
('hergoz', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3Dmiomoor%7D.case&sum=100&currency=RUB&signature=36389a31b0e12e49d764c54bc3e568c0813a8c34a9aee4bf52cf699503ee3347&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BA%D0%B5%D0%B9%D1%81%D0%BE%D0%B2&hideOtherMethods=true&locale=ru&paymentId=848401651&hideMenu=true', 'CraftPlayer{name=miomoor}.case.100', '2019-02-22 22:08:45', '109.173.96.129', 1),
('hhylju', 'https://unitpay.ru/pay/redirect/848964121-9f2cebb0f0?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:32:23', '109.173.96.129', 0),
('hjnbek', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.titan&sum=235&currency=RUB&signature=f0475a4c3abae442058f4646eea7ed03bab44b8d0030f7125cf4a7f3f23249e0&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20Titan&hideOtherMethods=true&locale=ru&paymentId=856684391&hideMenu=true', 'ZentoFX.titan.235', '2019-03-04 05:39:34', '109.173.96.129', 1),
('hjsejp', 'https://unitpay.ru/pay/119951-3e75c/card?account=ItsLeoo.premium&sum=15&currency=RUB&signature=51c215ce9baace8d0e4fe1cbd0ba902aabfd4409ba5f79a3c98c0fe06ab7e1aa&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=849515411&hideMenu=true', 'ItsLeoo.premium.15', '2019-02-23 08:33:33', '109.173.96.129', 1),
('hpujfe', 'https://unitpay.ru/pay/redirect/849123411-5147f84e3a?backUrl=http%3A//u-world.su', 'ZentoFX.ultra.310', '2019-02-23 02:31:29', '109.173.96.129', 0),
('hrrawm', 'https://unitpay.ru/pay/redirect/849123801-bb41d9bb26?backUrl=http%3A//u-world.su', 'ZentoFX.ultra.310', '2019-02-23 02:31:50', '109.173.96.129', 0),
('hvrbeq', 'https://unitpay.ru/pay/redirect/848962311-2685b09e61?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:31:05', '109.173.96.129', 0),
('icujhv', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3DZentoFX%7D.premium&sum=20&currency=RUB&signature=30fa62fca91da9511ad130193b8a8e1d50fe4fc9d4d76422ebf2dc6d1cbf51a2&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848398951&hideMenu=true', 'CraftPlayer{name=ZentoFX}.premium.20', '2019-02-22 22:01:31', '109.173.96.129', 0),
('iptzzi', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517811&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:31', '109.173.96.129', 0),
('isrlmm', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517871&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:33', '109.173.96.129', 0),
('isupik', 'https://unitpay.ru/pay/119951-3e75c/card?account=ItsLeoo.lite&sum=80&currency=RUB&signature=50149222d5db31cfa87fcc2347866bfa62c6f2fac01ae60b1c734802e2336e80&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=849361031&hideMenu=true', 'ItsLeoo.lite.80', '2019-02-23 05:44:22', '109.173.96.129', 0),
('iwvrup', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517781&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:30', '109.173.96.129', 0),
('jasaem', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3Dmiomoor%7D.case&sum=100&currency=RUB&signature=36389a31b0e12e49d764c54bc3e568c0813a8c34a9aee4bf52cf699503ee3347&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BA%D0%B5%D0%B9%D1%81%D0%BE%D0%B2&hideOtherMethods=true&locale=ru&paymentId=848400691&hideMenu=true', 'CraftPlayer{name=miomoor}.case.100', '2019-02-22 22:06:06', '109.173.96.129', 0),
('jhgdhj', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517851&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:32', '109.173.96.129', 0),
('jkodbb', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.sponsor&sum=825&currency=RUB&signature=da4d67db85e1eaf892f72bb50cd53fd12dc426b6796b56e770d537229f8837a8&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20Universal&hideOtherMethods=true&locale=ru&paymentId=858828311&hideMenu=true', 'ZentoFX.sponsor.825', '2019-03-07 03:58:52', '109.173.96.129', 1),
('jsvkmw', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517731&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:28', '109.173.96.129', 0),
('jxexdi', 'https://unitpay.ru/pay/119951-3e75c/card?account=ItsLeoo.premium&sum=1&currency=RUB&signature=56cbceed8b326b9a70fcf573f9a14a6e4300b35a4260a50e80d12c63a871c8c3&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=849521871&hideMenu=true', 'ItsLeoo.premium.1', '2019-02-23 08:43:37', '109.173.96.129', 1),
('kdccqk', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517821&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:31', '109.173.96.129', 0),
('kftwqh', 'https://unitpay.ru/pay/redirect/849123741-aa6420abad?backUrl=http%3A//u-world.su', 'ZentoFX.ultra.310', '2019-02-23 02:31:47', '109.173.96.129', 0),
('kfvbfk', 'https://unitpay.ru/pay/redirect/848961041-e364265237?backUrl=http%3A//u-world.su', 'ZentoFX.lite.80', '2019-02-23 00:30:07', '109.173.96.129', 0),
('kgseal', 'https://unitpay.ru/pay/redirect/848429251-6ddc3547f9?backUrl=http%3A//u-world.su', 'ZentoFX.ultra.310', '2019-02-22 23:59:58', '109.173.96.129', 0),
('kpfgyr', 'https://unitpay.ru/pay/redirect/848960631-c87c6e4f5a?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:29:50', '109.173.96.129', 0),
('ksfrzl', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.premium&sum=15&currency=RUB&signature=c1f8e5d4a398ce8703a8769e0f614e3e116bd140fd4f45e25b138cd10268ac56&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=849497481&hideMenu=true', 'ZentoFX.premium.15', '2019-02-23 08:08:02', '109.173.96.129', 0),
('lcupsc', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.premium&sum=20&currency=RUB&signature=e865d1001dc4475d59fca6d7797e25207925393275bc235e05ff3a28468d4abb&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848406801&hideMenu=true', 'ZentoFX.premium.20', '2019-02-22 22:24:13', '109.173.96.129', 0),
('lgxuds', 'https://unitpay.ru/pay/redirect/848420691-bd2ef7cb30?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-22 23:16:21', '109.173.96.129', 0),
('lqjyiz', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517771&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:29', '109.173.96.129', 0),
('lsqwta', 'https://unitpay.ru/pay/redirect/848429871-23e7b706a2?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:03:06', '109.173.96.129', 0),
('lsxxzu', 'https://unitpay.ru/pay/redirect/849298271-9d57ec121d?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 04:51:23', '109.173.96.129', 0),
('ltbzqg', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.premium&sum=20&currency=RUB&signature=e865d1001dc4475d59fca6d7797e25207925393275bc235e05ff3a28468d4abb&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848420611&hideMenu=true', 'ZentoFX.premium.20', '2019-02-22 23:15:51', '109.173.96.129', 0),
('lwpbui', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3DZentoFX%7D.premium&sum=20&currency=RUB&signature=30fa62fca91da9511ad130193b8a8e1d50fe4fc9d4d76422ebf2dc6d1cbf51a2&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848396431&hideMenu=true', 'CraftPlayer{name=ZentoFX}.premium.20', '2019-02-23 09:55:08', '109.173.96.129', 0),
('mbabcl', 'https://bill.qiwi.com/order/external/form.action?shop=552441&transaction=848414241&successUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F848414241-6ae088ef52&failUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F848414241-6ae088ef52&iframe=true&pay_source=qw&to=79875494545', 'ZentoFX.premium.20', '2019-02-22 22:49:15', '109.173.96.129', 0),
('mbdmka', 'https://unitpay.ru/pay/redirect/848962461-25479cee6d?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:31:09', '109.173.96.129', 0),
('mbfspr', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.premium&sum=20&currency=RUB&signature=e865d1001dc4475d59fca6d7797e25207925393275bc235e05ff3a28468d4abb&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848429211&hideMenu=true', 'ZentoFX.premium.20', '2019-02-22 23:59:52', '109.173.96.129', 0),
('mgdppb', 'https://bill.qiwi.com/order/external/form.action?shop=552441&transaction=848414261&successUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F848414261-e8fd1bff37&failUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F848414261-e8fd1bff37&iframe=true&pay_source=qw&to=79875494545', 'ZentoFX.premium.20', '2019-02-22 22:49:18', '109.173.96.129', 0),
('mgtfco', 'https://bill.qiwi.com/order/external/form.action?shop=552441&transaction=847817571&successUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F847817571-0b8aa9935c&failUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F847817571-0b8aa9935c&iframe=true&pay_source=qw&to=79875494545', 'ItsLeoo.premium.20', '2019-02-21 23:00:06', '109.173.96.129', 0),
('moyjco', 'https://unitpay.ru/pay/redirect/848960831-b92f28890f?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:29:59', '109.173.96.129', 0),
('nkbvsn', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.sponsor&sum=1500&currency=RUB&signature=ecb85a7a73bf74f383994a22079e5fa734ea020aa72559a45904fbf44827cc66&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848431461&hideMenu=true', 'ZentoFX.sponsor.1500', '2019-02-23 00:10:26', '109.173.96.129', 3),
('ocmqtl', 'https://unitpay.ru/pay/redirect/848420681-4ff65d979f?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-22 23:16:18', '109.173.96.129', 0),
('oiqpvw', 'https://unitpay.ru/pay/redirect/856685361-a03c02ada6?backUrl=http%3A//u-world.su', 'ZentoFX.legend.17', '2019-03-04 05:40:46', '109.173.96.129', 1),
('oizwng', 'https://unitpay.ru/pay/redirect/849302481-8cd1003caf?backUrl=http%3A//u-world.su', 'ZentoFX.case.100', '2019-02-23 04:55:10', '109.173.96.129', 0),
('ojfdgw', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ItsLeoo.legend&sum=370&currency=RUB&signature=5a432b9af987953c1b52eb433456eadf8621aeb6d8ab77487df536d483d4710a&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848997521&hideMenu=true', 'ItsLeoo.legend.370', '2019-02-23 00:57:06', '109.173.96.129', 0),
('oxclaz', 'https://unitpay.ru/pay/redirect/849123771-a34e132370?backUrl=http%3A//u-world.su', 'ZentoFX.ultra.310', '2019-02-23 02:31:48', '109.173.96.129', 0),
('ozzdqv', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.premium&sum=20&currency=RUB&signature=eee486b62478e1dc5171a0d6516be2876ed1372f47218c97a49c0dbf61e57ff6&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D1%8B&hideOtherMethods=true&locale=ru&paymentId=847804831&hideMenu=true', 'ZentoFX.premium.20', '2019-02-21 22:46:06', '109.173.96.129', 1),
('pchljd', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517721&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:27', '109.173.96.129', 0),
('pcrzmz', 'https://bill.qiwi.com/order/external/form.action?shop=552441&transaction=848421161&successUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F848421161-731f65318b&failUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F848421161-731f65318b&iframe=true&pay_source=qw&to=79875494524', 'ZentoFX.premium.1', '2019-02-22 23:18:19', '109.173.96.129', 1),
('phucbc', 'https://unitpay.ru/pay/119951-3e75c/card?account=ZentoFX.premium&sum=20&currency=RUB&signature=e865d1001dc4475d59fca6d7797e25207925393275bc235e05ff3a28468d4abb&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848408011&hideMenu=true', 'ZentoFX.premium.20', '2019-02-22 22:28:34', '109.173.96.129', 0),
('pmxrtj', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ItsLeoo.legend&sum=370&currency=RUB&signature=5a432b9af987953c1b52eb433456eadf8621aeb6d8ab77487df536d483d4710a&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848585571&hideMenu=true', 'ItsLeoo.legend.370', '2019-02-23 07:21:54', '109.173.96.129', 0),
('pqglmv', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517701&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:26', '109.173.96.129', 0),
('pqksla', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3Dmiomoor%7D.star&sum=90&currency=RUB&signature=35706e84b243e95e7a89c6955625f775009bce430874ee9f3dd2e30f78830704&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848401271&hideMenu=true', 'CraftPlayer{name=miomoor}.star.90', '2019-02-22 22:07:46', '109.173.96.129', 0),
('ptllex', 'https://unitpay.ru/pay/redirect/848406881-85fbf9077d?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-22 22:24:19', '109.173.96.129', 0),
('ptpdqo', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3DZentoFX%7D.premium&sum=20&currency=RUB&signature=30fa62fca91da9511ad130193b8a8e1d50fe4fc9d4d76422ebf2dc6d1cbf51a2&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848399331&hideMenu=true', 'CraftPlayer{name=ZentoFX}.premium.20', '2019-02-22 22:02:25', '109.173.96.129', 1),
('pyptof', 'https://unitpay.ru/pay/119951-3e75c/card?account=ItsLeoo.lite&sum=80&currency=RUB&signature=50149222d5db31cfa87fcc2347866bfa62c6f2fac01ae60b1c734802e2336e80&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=849357381&hideMenu=true', 'ItsLeoo.lite.80', '2019-02-23 05:41:16', '109.173.96.129', 0),
('qfgikp', 'https://unitpay.ru/pay/redirect/849549281-4bd67861bb?backUrl=http%3A//u-world.su', 'ZentoFX.legend.165', '2019-02-24 09:33:39', '109.173.96.129', 0),
('qhlmft', 'https://unitpay.ru/pay/redirect/849538561-5d26aa2abd?backUrl=http%3A//u-world.su', 'ZentoFX.premium.1', '2019-02-24 09:11:13', '109.173.96.129', 0),
('qicgcv', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517841&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:32', '109.173.96.129', 0),
('qickhe', 'https://unitpay.ru/pay/receipt/848418471-c4c8eb346e', 'ZentoFX.premium.20', '2019-02-22 23:06:52', '109.173.96.129', 0),
('qjlfts', 'https://bill.qiwi.com/order/external/form.action?shop=552441&transaction=848413471&successUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F848413471-308cb6d7d0&failUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F848413471-308cb6d7d0&iframe=true&pay_source=qw&to=79875494545', 'ZentoFX.premium.20', '2019-02-22 22:46:46', '109.173.96.129', 1),
('qoxrrv', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3DZentoFX%7D.premium&sum=20&currency=RUB&signature=30fa62fca91da9511ad130193b8a8e1d50fe4fc9d4d76422ebf2dc6d1cbf51a2&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848398911&hideMenu=true', 'CraftPlayer{name=ZentoFX}.premium.20', '2019-02-22 22:01:26', '109.173.96.129', 0),
('qvatks', 'https://unitpay.ru/pay/redirect/849549301-9e8ab69f11?backUrl=http%3A//u-world.su', 'ZentoFX.legend.165', '2019-02-24 09:33:44', '109.173.96.129', 0),
('rddnmg', 'https://unitpay.ru/pay/receipt/848420821-7b12aaeadc', 'ZentoFX.premium.20', '2019-02-22 23:16:57', '109.173.96.129', 1),
('reejap', 'https://unitpay.ru/pay/119951-3e75c/card?account=ItsLeoo.premium&sum=20&currency=RUB&signature=cae5d97309d3b903d63277a28f697196dc419e5915833cc17200ddaa46c4e9a8&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D1%8B&hideOtherMethods=true&locale=ru&paymentId=847815321&hideMenu=true', 'ItsLeoo.premium.20', '2019-02-21 22:57:28', '109.173.96.129', 1),
('rhsuto', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3DZentoFX%7D.premium&sum=20&currency=RUB&signature=30fa62fca91da9511ad130193b8a8e1d50fe4fc9d4d76422ebf2dc6d1cbf51a2&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848396491&hideMenu=true', 'CraftPlayer{name=ZentoFX}.premium.20', '2019-02-23 09:55:17', '109.173.96.129', 1),
('rjfmed', 'https://unitpay.ru/pay/redirect/848406251-1840a63fca?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-22 22:22:44', '109.173.96.129', 1),
('rxmeos', 'https://unitpay.ru/pay/redirect/849123821-69bb2651ef?backUrl=http%3A//u-world.su', 'ZentoFX.ultra.310', '2019-02-23 02:31:51', '109.173.96.129', 0),
('sfdhuh', 'https://unitpay.ru/pay/redirect/849311251-ad6355e9b0?backUrl=http%3A//u-world.su', 'ZentoFX.sponsor.1500', '2019-02-23 05:02:31', '109.173.96.129', 0),
('sfyvlm', 'https://unitpay.ru/pay/redirect/848428451-0c09be9627?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-22 23:55:53', '109.173.96.129', 0),
('srijkq', 'https://unitpay.ru/pay/redirect/849229651-3f66dfb7c2?backUrl=http%3A//u-world.su', 'ZentoFX.500.50', '2019-02-23 03:56:25', '109.173.96.129', 0),
('strrdu', 'https://unitpay.ru/pay/redirect/848428501-37b680ff72?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-22 23:56:07', '109.173.96.129', 0),
('sucmai', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856518791&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:28:24', '109.173.96.129', 0),
('tbrxpe', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3DZentoFX%7D.case&sum=100&currency=RUB&signature=100067e89d693a105799926a6f1968fa8ec014cf29553d8b18b7b7507048c24b&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BA%D0%B5%D0%B9%D1%81%D0%BE%D0%B2&hideOtherMethods=true&locale=ru&paymentId=848397961&hideMenu=true', 'CraftPlayer{name=ZentoFX}.case.100', '2019-02-23 09:58:44', '109.173.96.129', 0),
('texfox', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3DZentoFX%7D.case&sum=100&currency=RUB&signature=100067e89d693a105799926a6f1968fa8ec014cf29553d8b18b7b7507048c24b&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BA%D0%B5%D0%B9%D1%81%D0%BE%D0%B2&hideOtherMethods=true&locale=ru&paymentId=848397301&hideMenu=true', 'CraftPlayer{name=ZentoFX}.case.100', '2019-02-23 09:57:00', '109.173.96.129', 0),
('tfbouq', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3DZentoFX%7D.premium&sum=20&currency=RUB&signature=30fa62fca91da9511ad130193b8a8e1d50fe4fc9d4d76422ebf2dc6d1cbf51a2&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848400911&hideMenu=true', 'CraftPlayer{name=ZentoFX}.premium.20', '2019-02-22 22:06:37', '109.173.96.129', 1),
('tfnqgk', 'https://unitpay.ru/pay/119951-3e75c/card?account=CraftPlayer%7Bname%3DZentoFX%7D.case&sum=100&currency=RUB&signature=100067e89d693a105799926a6f1968fa8ec014cf29553d8b18b7b7507048c24b&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BA%D0%B5%D0%B9%D1%81%D0%BE%D0%B2&hideOtherMethods=true&locale=ru&paymentId=848398221&hideMenu=true', 'CraftPlayer{name=ZentoFX}.case.100', '2019-02-23 09:59:35', '109.173.96.129', 0),
('tmgwxj', 'https://unitpay.ru/pay/redirect/848964821-11394615e5?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:32:53', '109.173.96.129', 0),
('towtej', 'https://unitpay.ru/pay/redirect/858827411-31f12fd62f?backUrl=http%3A//u-world.su', 'ZentoFX.premium.15', '2019-03-07 03:58:10', '109.173.96.129', 1),
('tszqnv', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856518811&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:28:25', '109.173.96.129', 0),
('ufagnz', 'https://unitpay.ru/pay/119951-3e75c/card?account=ItsLeoo.ultra&sum=310&currency=RUB&signature=daab9cd420d099a8d748f48479d93789925880f080865b7f3392515234a63adb&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=848583921&hideMenu=true', 'ItsLeoo.ultra.310', '2019-02-23 07:20:08', '109.173.96.129', 1),
('urljcs', 'https://bill.qiwi.com/order/external/form.action?shop=552441&transaction=848413461&successUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F848413461-7fe98f5225&failUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F848413461-7fe98f5225&iframe=true&pay_source=qw&to=79875494545', 'ZentoFX.premium.20', '2019-02-22 22:46:44', '109.173.96.129', 0),
('veyxkb', 'https://unitpay.ru/pay/redirect/849345831-930a221b80?backUrl=http%3A//u-world.su', 'ZentoFX.ultra.310', '2019-02-23 05:31:34', '109.173.96.129', 0),
('vqbynp', 'https://unitpay.ru/pay/119951-3e75c/card?account=ItsLeoo.lite&sum=80&currency=RUB&signature=50149222d5db31cfa87fcc2347866bfa62c6f2fac01ae60b1c734802e2336e80&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=849361051&hideMenu=true', 'ItsLeoo.lite.80', '2019-02-23 05:44:24', '109.173.96.129', 0),
('wjpcse', 'https://unitpay.ru/pay/redirect/848428381-4a65fc1040?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-22 23:55:30', '109.173.96.129', 0),
('wsewfc', 'https://bill.qiwi.com/order/external/form.action?shop=552441&transaction=848418531&successUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F848418531-38ef71670c&failUrl=https%3A%2F%2Funitpay.ru%2Fpay%2Freceipt%2F848418531-38ef71670c&iframe=true&pay_source=qw&to=79875494545', 'ZentoFX.premium.20', '2019-02-22 23:07:11', '109.173.96.129', 1),
('wvtaur', 'https://unitpay.ru/pay/redirect/848422181-c9b7296ce4?backUrl=http%3A//u-world.su', 'ZentoFX.premium.1', '2019-02-22 23:23:15', '109.173.96.129', 0),
('xeesqb', 'https://unitpay.ru/pay/redirect/848430801-8e3e5d6192?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:07:36', '109.173.96.129', 0),
('xiveob', 'https://unitpay.ru/pay/redirect/848418981-81db44d388?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-22 23:09:16', '109.173.96.129', 0),
('xzlqej', 'https://unitpay.ru/pay/receipt/848413321-35d55c259b', 'ZentoFX.premium.20', '2019-02-22 22:46:16', '109.173.96.129', 0),
('zifslk', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517751&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:28', '109.173.96.129', 0),
('znbbba', 'https://unitpay.ru/pay/redirect/848431441-3c519050f2?backUrl=http%3A//u-world.su', 'ZentoFX.premium.20', '2019-02-23 00:10:20', '109.173.96.129', 0),
('zpfqmt', 'https://unitpay.ru/pay/119951-3e75c/applepay?account=ZentoFX.mysterybox-5&sum=100&currency=RUB&signature=ad7d72b290b589a67e294ca7f5d01b852fb17a3b718ecb69688bc73117469309&desc=%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B0%20%D0%BC%D0%BE%D0%BD%D0%B5%D1%82&hideOtherMethods=true&locale=ru&paymentId=856517891&hideMenu=true', 'ZentoFX.mysterybox-5.100', '2019-03-04 02:27:33', '109.173.96.129', 0),
('zytxii', 'https://unitpay.ru/pay/redirect/848429951-4fa653abd0?backUrl=http%3A//u-world.su', 'ZentoFX.ultra.310', '2019-02-23 00:03:22', '109.173.96.129', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `unitpay_payments`
--
ALTER TABLE `unitpay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `yourls_log`
--
ALTER TABLE `yourls_log`
  ADD PRIMARY KEY (`click_id`),
  ADD KEY `shorturl` (`shorturl`);

--
-- Индексы таблицы `yourls_options`
--
ALTER TABLE `yourls_options`
  ADD PRIMARY KEY (`option_id`,`option_name`),
  ADD KEY `option_name` (`option_name`);

--
-- Индексы таблицы `yourls_url`
--
ALTER TABLE `yourls_url`
  ADD PRIMARY KEY (`keyword`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `ip` (`ip`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `buy`
--
ALTER TABLE `buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `donate`
--
ALTER TABLE `donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `unitpay_payments`
--
ALTER TABLE `unitpay_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблицы `yourls_log`
--
ALTER TABLE `yourls_log`
  MODIFY `click_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `yourls_options`
--
ALTER TABLE `yourls_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
