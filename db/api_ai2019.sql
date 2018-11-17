-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2018 a las 23:25:06
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_ai2019`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alfa2_code` varchar(255) NOT NULL,
  `alfa3_code` varchar(255) NOT NULL,
  `numeric_code` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`, `alfa2_code`, `alfa3_code`, `numeric_code`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 4),
(2, 'Åland Islands', 'AX', 'ALA', 127),
(3, 'Albania', 'AL', 'ALB', 8),
(4, 'Algeria', 'DZ', 'DZA', 12),
(5, 'American Samoa', 'AS', 'ASM', 16),
(6, 'Andorra', 'AD', 'AND', 20),
(7, 'Angola', 'AO', 'AGO', 24),
(8, 'Anguilla', 'AI', 'AIA', 127),
(9, 'Antarctica', 'AQ', 'ATA', 10),
(10, 'Antigua and Barbuda', 'AG', 'ATG', 28),
(11, 'Argentina', 'AR', 'ARG', 32),
(12, 'Armenia', 'AM', 'ARM', 51),
(13, 'Aruba', 'AW', 'ABW', 127),
(14, 'Australia', 'AU', 'AUS', 36),
(15, 'Austria', 'AT', 'AUT', 40),
(16, 'Azerbaijan', 'AZ', 'AZE', 31),
(17, 'Bahamas', 'BS', 'BHS', 44),
(18, 'Bahrain', 'BH', 'BHR', 48),
(19, 'Bangladesh', 'BD', 'BGD', 50),
(20, 'Barbados', 'BB', 'BRB', 52),
(21, 'Belarus', 'BY', 'BLR', 112),
(22, 'Belgium', 'BE', 'BEL', 56),
(23, 'Belize', 'BZ', 'BLZ', 84),
(24, 'Benin', 'BJ', 'BEN', 127),
(25, 'Bermuda', 'BM', 'BMU', 60),
(26, 'Bhutan', 'BT', 'BTN', 64),
(27, 'Bolivia (Plurinational State of)', 'BO', 'BOL', 68),
(28, 'Bonaire', ' Sint Eustatius and Saba', 'BQ', 0),
(29, 'Bosnia and Herzegovina', 'BA', 'BIH', 70),
(30, 'Botswana', 'BW', 'BWA', 72),
(31, 'Bouvet Island', 'BV', 'BVT', 74),
(32, 'Brazil', 'BR', 'BRA', 76),
(33, 'British Indian Ocean Territory', 'IO', 'IOT', 86),
(34, 'Brunei Darussalam', 'BN', 'BRN', 96),
(35, 'Bulgaria', 'BG', 'BGR', 100),
(36, 'Burkina Faso', 'BF', 'BFA', 127),
(37, 'Burundi', 'BI', 'BDI', 108),
(38, 'Cabo Verde', 'CV', 'CPV', 127),
(39, 'Cambodia', 'KH', 'KHM', 116),
(40, 'Cameroon', 'CM', 'CMR', 120),
(41, 'Canada', 'CA', 'CAN', 124),
(42, 'Cayman Islands', 'KY', 'CYM', 127),
(43, 'Central African Republic', 'CF', 'CAF', 127),
(44, 'Chad', 'TD', 'TCD', 127),
(45, 'Chile', 'CL', 'CHL', 127),
(46, 'China', 'CN', 'CHN', 127),
(47, 'Christmas Island', 'CX', 'CXR', 127),
(48, 'Cocos (Keeling) Islands', 'CC', 'CCK', 127),
(49, 'Colombia', 'CO', 'COL', 127),
(50, 'Comoros', 'KM', 'COM', 127),
(51, 'Congo', 'CG', 'COG', 127),
(52, 'Congo (Democratic Republic of the)', 'CD', 'COD', 127),
(53, 'Cook Islands', 'CK', 'COK', 127),
(54, 'Costa Rica', 'CR', 'CRI', 127),
(55, 'Côte d\'Ivoire', 'CI', 'CIV', 127),
(56, 'Croatia', 'HR', 'HRV', 127),
(57, 'Cuba', 'CU', 'CUB', 127),
(58, 'Curaçao', 'CW', 'CUW', 127),
(59, 'Cyprus', 'CY', 'CYP', 127),
(60, 'Czechia', 'CZ', 'CZE', 127),
(61, 'Denmark', 'DK', 'DNK', 127),
(62, 'Djibouti', 'DJ', 'DJI', 127),
(63, 'Dominica', 'DM', 'DMA', 127),
(64, 'Dominican Republic', 'DO', 'DOM', 127),
(65, 'Ecuador', 'EC', 'ECU', 127),
(66, 'Egypt', 'EG', 'EGY', 127),
(67, 'El Salvador', 'SV', 'SLV', 127),
(68, 'Equatorial Guinea', 'GQ', 'GNQ', 127),
(69, 'Eritrea', 'ER', 'ERI', 127),
(70, 'Estonia', 'EE', 'EST', 127),
(71, 'Eswatini', 'SZ', 'SWZ', 127),
(72, 'Ethiopia', 'ET', 'ETH', 127),
(73, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 127),
(74, 'Faroe Islands', 'FO', 'FRO', 127),
(75, 'Fiji', 'FJ', 'FJI', 127),
(76, 'Finland', 'FI', 'FIN', 127),
(77, 'France', 'FR', 'FRA', 127),
(78, 'French Guiana', 'GF', 'GUF', 127),
(79, 'French Polynesia', 'PF', 'PYF', 127),
(80, 'French Southern Territories', 'TF', 'ATF', 127),
(81, 'Gabon', 'GA', 'GAB', 127),
(82, 'Gambia', 'GM', 'GMB', 127),
(83, 'Georgia', 'GE', 'GEO', 127),
(84, 'Germany', 'DE', 'DEU', 127),
(85, 'Ghana', 'GH', 'GHA', 127),
(86, 'Gibraltar', 'GI', 'GIB', 127),
(87, 'Greece', 'GR', 'GRC', 127),
(88, 'Greenland', 'GL', 'GRL', 127),
(89, 'Grenada', 'GD', 'GRD', 127),
(90, 'Guadeloupe', 'GP', 'GLP', 127),
(91, 'Guam', 'GU', 'GUM', 127),
(92, 'Guatemala', 'GT', 'GTM', 127),
(93, 'Guernsey', 'GG', 'GGY', 127),
(94, 'Guinea', 'GN', 'GIN', 127),
(95, 'Guinea-Bissau', 'GW', 'GNB', 127),
(96, 'Guyana', 'GY', 'GUY', 127),
(97, 'Haiti', 'HT', 'HTI', 127),
(98, 'Heard Island and McDonald Islands', 'HM', 'HMD', 127),
(99, 'Holy See', 'VA', 'VAT', 127),
(100, 'Honduras', 'HN', 'HND', 127),
(101, 'Hong Kong', 'HK', 'HKG', 127),
(102, 'Hungary', 'HU', 'HUN', 127),
(103, 'Iceland', 'IS', 'ISL', 127),
(104, 'India', 'IN', 'IND', 127),
(105, 'Indonesia', 'ID', 'IDN', 127),
(106, 'Iran (Islamic Republic of)', 'IR', 'IRN', 127),
(107, 'Iraq', 'IQ', 'IRQ', 127),
(108, 'Ireland', 'IE', 'IRL', 127),
(109, 'Isle of Man', 'IM', 'IMN', 127),
(110, 'Israel', 'IL', 'ISR', 127),
(111, 'Italy', 'IT', 'ITA', 127),
(112, 'Jamaica', 'JM', 'JAM', 127),
(113, 'Japan', 'JP', 'JPN', 127),
(114, 'Jersey', 'JE', 'JEY', 127),
(115, 'Jordan', 'JO', 'JOR', 127),
(116, 'Kazakhstan', 'KZ', 'KAZ', 127),
(117, 'Kenya', 'KE', 'KEN', 127),
(118, 'Kiribati', 'KI', 'KIR', 127),
(119, 'Korea (Democratic People\'s Republic of)', 'KP', 'PRK', 127),
(120, 'Korea (Republic of)', 'KR', 'KOR', 127),
(121, 'Kuwait', 'KW', 'KWT', 127),
(122, 'Kyrgyzstan', 'KG', 'KGZ', 127),
(123, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 127),
(124, 'Latvia', 'LV', 'LVA', 127),
(125, 'Lebanon', 'LB', 'LBN', 127),
(126, 'Lesotho', 'LS', 'LSO', 127),
(127, 'Liberia', 'LR', 'LBR', 127),
(128, 'Libya', 'LY', 'LBY', 127),
(129, 'Liechtenstein', 'LI', 'LIE', 127),
(130, 'Lithuania', 'LT', 'LTU', 127),
(131, 'Luxembourg', 'LU', 'LUX', 127),
(132, 'Macao', 'MO', 'MAC', 127),
(133, 'Macedonia (the former Yugoslav Republic of)', 'MK', 'MKD', 127),
(134, 'Madagascar', 'MG', 'MDG', 127),
(135, 'Malawi', 'MW', 'MWI', 127),
(136, 'Malaysia', 'MY', 'MYS', 127),
(137, 'Maldives', 'MV', 'MDV', 127),
(138, 'Mali', 'ML', 'MLI', 127),
(139, 'Malta', 'MT', 'MLT', 127),
(140, 'Marshall Islands', 'MH', 'MHL', 127),
(141, 'Martinique', 'MQ', 'MTQ', 127),
(142, 'Mauritania', 'MR', 'MRT', 127),
(143, 'Mauritius', 'MU', 'MUS', 127),
(144, 'Mayotte', 'YT', 'MYT', 127),
(145, 'Mexico', 'MX', 'MEX', 127),
(146, 'Micronesia (Federated States of)', 'FM', 'FSM', 127),
(147, 'Moldova (Republic of)', 'MD', 'MDA', 127),
(148, 'Monaco', 'MC', 'MCO', 127),
(149, 'Mongolia', 'MN', 'MNG', 127),
(150, 'Montenegro', 'ME', 'MNE', 127),
(151, 'Montserrat', 'MS', 'MSR', 127),
(152, 'Morocco', 'MA', 'MAR', 127),
(153, 'Mozambique', 'MZ', 'MOZ', 127),
(154, 'Myanmar', 'MM', 'MMR', 104),
(155, 'Namibia', 'NA', 'NAM', 127),
(156, 'Nauru', 'NR', 'NRU', 127),
(157, 'Nepal', 'NP', 'NPL', 127),
(158, 'Netherlands', 'NL', 'NLD', 127),
(159, 'New Caledonia', 'NC', 'NCL', 127),
(160, 'New Zealand', 'NZ', 'NZL', 127),
(161, 'Nicaragua', 'NI', 'NIC', 127),
(162, 'Niger', 'NE', 'NER', 127),
(163, 'Nigeria', 'NG', 'NGA', 127),
(164, 'Niue', 'NU', 'NIU', 127),
(165, 'Norfolk Island', 'NF', 'NFK', 127),
(166, 'Northern Mariana Islands', 'MP', 'MNP', 127),
(167, 'Norway', 'NO', 'NOR', 127),
(168, 'Oman', 'OM', 'OMN', 127),
(169, 'Pakistan', 'PK', 'PAK', 127),
(170, 'Palau', 'PW', 'PLW', 127),
(171, 'Palestine', ' State of', 'PS', 0),
(172, 'Panama', 'PA', 'PAN', 127),
(173, 'Papua New Guinea', 'PG', 'PNG', 127),
(174, 'Paraguay', 'PY', 'PRY', 127),
(175, 'Peru', 'PE', 'PER', 127),
(176, 'Philippines', 'PH', 'PHL', 127),
(177, 'Pitcairn', 'PN', 'PCN', 127),
(178, 'Poland', 'PL', 'POL', 127),
(179, 'Portugal', 'PT', 'PRT', 127),
(180, 'Puerto Rico', 'PR', 'PRI', 127),
(181, 'Qatar', 'QA', 'QAT', 127),
(182, 'Réunion', 'RE', 'REU', 127),
(183, 'Romania', 'RO', 'ROU', 127),
(184, 'Russian Federation', 'RU', 'RUS', 127),
(185, 'Rwanda', 'RW', 'RWA', 127),
(186, 'Saint Barthélemy', 'BL', 'BLM', 127),
(187, 'Saint Helena', ' Ascension and Tristan da Cunha', 'SH', 0),
(188, 'Saint Kitts and Nevis', 'KN', 'KNA', 127),
(189, 'Saint Lucia', 'LC', 'LCA', 127),
(190, 'Saint Martin (French part)', 'MF', 'MAF', 127),
(191, 'Saint Pierre and Miquelon', 'PM', 'SPM', 127),
(192, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 127),
(193, 'Samoa', 'WS', 'WSM', 127),
(194, 'San Marino', 'SM', 'SMR', 127),
(195, 'Sao Tome and Principe', 'ST', 'STP', 127),
(196, 'Saudi Arabia', 'SA', 'SAU', 127),
(197, 'Senegal', 'SN', 'SEN', 127),
(198, 'Serbia', 'RS', 'SRB', 127),
(199, 'Seychelles', 'SC', 'SYC', 127),
(200, 'Sierra Leone', 'SL', 'SLE', 127),
(201, 'Singapore', 'SG', 'SGP', 127),
(202, 'Sint Maarten (Dutch part)', 'SX', 'SXM', 127),
(203, 'Slovakia', 'SK', 'SVK', 127),
(204, 'Slovenia', 'SI', 'SVN', 127),
(205, 'Solomon Islands', 'SB', 'SLB', 90),
(206, 'Somalia', 'SO', 'SOM', 127),
(207, 'South Africa', 'ZA', 'ZAF', 127),
(208, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 127),
(209, 'South Sudan', 'SS', 'SSD', 127),
(210, 'Spain', 'ES', 'ESP', 127),
(211, 'Sri Lanka', 'LK', 'LKA', 127),
(212, 'Sudan', 'SD', 'SDN', 127),
(213, 'Suriname', 'SR', 'SUR', 127),
(214, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 127),
(215, 'Sweden', 'SE', 'SWE', 127),
(216, 'Switzerland', 'CH', 'CHE', 127),
(217, 'Syrian Arab Republic', 'SY', 'SYR', 127),
(218, 'Taiwan', ' Province of China', 'TW', 0),
(219, 'Tajikistan', 'TJ', 'TJK', 127),
(220, 'Tanzania', ' United Republic of', 'TZ', 0),
(221, 'Thailand', 'TH', 'THA', 127),
(222, 'Timor-Leste', 'TL', 'TLS', 127),
(223, 'Togo', 'TG', 'TGO', 127),
(224, 'Tokelau', 'TK', 'TKL', 127),
(225, 'Tonga', 'TO', 'TON', 127),
(226, 'Trinidad and Tobago', 'TT', 'TTO', 127),
(227, 'Tunisia', 'TN', 'TUN', 127),
(228, 'Turkey', 'TR', 'TUR', 127),
(229, 'Turkmenistan', 'TM', 'TKM', 127),
(230, 'Turks and Caicos Islands', 'TC', 'TCA', 127),
(231, 'Tuvalu', 'TV', 'TUV', 127),
(232, 'Uganda', 'UG', 'UGA', 127),
(233, 'Ukraine', 'UA', 'UKR', 127),
(234, 'United Arab Emirates', 'AE', 'ARE', 127),
(235, 'United Kingdom of Great Britain and Northern Ireland', 'GB', 'GBR', 127),
(236, 'United States of America', 'US', 'USA', 127),
(237, 'United States Minor Outlying Islands', 'UM', 'UMI', 127),
(238, 'Uruguay', 'UY', 'URY', 127),
(239, 'Uzbekistan', 'UZ', 'UZB', 127),
(240, 'Vanuatu', 'VU', 'VUT', 127),
(241, 'Venezuela (Bolivarian Republic of)', 'VE', 'VEN', 127),
(242, 'Viet Nam', 'VN', 'VNM', 127),
(243, 'Virgin Islands (British)', 'VG', 'VGB', 92),
(244, 'Virgin Islands (U.S.)', 'VI', 'VIR', 127),
(245, 'Wallis and Futuna', 'WF', 'WLF', 127),
(246, 'Western Sahara', 'EH', 'ESH', 127),
(247, 'Yemen', 'YE', 'YEM', 127),
(248, 'Zambia', 'ZM', 'ZMB', 127),
(249, 'Zimbabwe', 'ZW', 'ZWE', 127);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delegates`
--

CREATE TABLE `delegates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `is_available` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `delegates`
--

INSERT INTO `delegates` (`id`, `name`, `country_id`, `is_available`) VALUES
(1, 'Jhon Dee', 236, 1),
(2, 'Anie Soff', 13, 1),
(3, 'Carlos Mendez', 175, 1),
(4, 'Iker casillas', 210, 1),
(5, 'Me tido', 22, 1),
(6, 'Get Back', 27, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `delegates`
--
ALTER TABLE `delegates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT de la tabla `delegates`
--
ALTER TABLE `delegates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
