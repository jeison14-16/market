-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-06-2019 a las 07:24:24
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `market`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `item` bigint(20) UNSIGNED NOT NULL,
  `codprod` varchar(8) COLLATE utf8_bin NOT NULL,
  `nomprod` varchar(60) COLLATE utf8_bin NOT NULL,
  `cantprod` smallint(6) DEFAULT '0',
  `pcosto` double DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`item`, `codprod`, `nomprod`, `cantprod`, `pcosto`, `imagen`) VALUES
(8, '10230015', 'VARILLA CORRUGADA 11 MM X 6 M DIACO', 50, 12920, ''),
(9, '10230016', 'CHIPA 1/4 DIACO', 200, 2750, ''),
(10, '10230017', 'TEJA PVC ADRI N 8 MARFIL 2.44 M', 20, 27727, ''),
(11, '10230018', 'TEJA PVC ADRI N 10 MARFIL 3.05 M', 20, 34748, ''),
(12, '10230019', 'TEJA PVC ADRI N 12 MARFIL 3.65 M', 20, 41650, ''),
(13, '10230020', 'TEJA AJONIT AJOVER N 10 CRISTAL 3.05 M', 20, 49266, ''),
(14, '10230021', 'TEJA AJONIT AJOVER N 8 CRISTAL 2.44 M', 20, 39508, ''),
(15, '10230022', 'CEMENTO GRIS X 50 KG TEQUENDAMA', 100, 22200, ''),
(16, '10230023', 'CHIPA 3/8 DIACO', 200, 2750, ''),
(19, '10230026', 'TEJA TECHOLIT N 8 ETERNIT 2.44 M', 20, 17850, ''),
(21, '10230028', 'TEJA RURALITA TRAPEZOIDAL ROJA N 10', 9, 39700, ''),
(22, '10230029', 'TEJA MARCOLITA TIPO ZINC N 12 GERFOR 3.66 M', 12, 38630, ''),
(23, '10230030', 'TEJA MARCOLITA TIPO ZINC N 10 GERFOR 3.06 M', 10, 33902, ''),
(24, '10230031', 'TEJA MARCOLITA TIPO ZINC N 8 GERFOR 2.44 M', 9, 25827, ''),
(25, '10230032', 'ALAMBRE CENTELSA N 14 X 100 M', 6, 73000, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cedula` int(10) NOT NULL,
  `firstname` varchar(30) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(30) COLLATE utf8_bin NOT NULL,
  `gender` varchar(1) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `photo` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `cedula`, `firstname`, `lastname`, `gender`, `email`, `password`, `photo`) VALUES
(6, 0, 'Peter', 'McDonald', '', 'peter@gmail.com', '$2y$10$HiZIR8WgxNdF617V2eve5uN4C.xnwbfJQrGX7u/c9d1', NULL),
(7, 0, 'John', 'Martinez', '', 'john@gmail.com', '$2y$10$S1ggaP9sFaD35Dl17ngEIO2s5eIk/Tbr5Vkz3blBzcq', 'images/img_default.png'),
(8, 0, 'Kelly', 'Sofia', '', 'kelly@gmail.com', '$2y$10$Avu4GfGY50v05pO0KI2HEO/fx9lWSi0wrNiUGgN0.rs', 'images/img_default.png'),
(9, 0, 'Mario', 'Urbano', '', 'mario@gmail.com', '$2y$10$dLgScJ0TRDZgI3tJd0XKsOKCPQp39qaiKLezXKkOwtG', 'images/boy.png'),
(10, 0, 'Juliana', 'Eraso', '', 'juliana@hotmail.com', '$2y$10$AhbgNvMj1ZUiQYSnegc/TuAPKFFG2uywVqsgapGp40n', 'images/boy.png'),
(11, 0, 'Sofia', 'Lasso', '', 'sofia@gmail.com', '$2y$10$oRdNTVaX.K9LR6ON91Sqj.AxuefYzJrkoduRV6Bn5ds', 'images/girl.png'),
(12, 0, 'Mariana', 'Korbe', '', 'mariana@yahoo.es', '$2y$10$5Q1ObjUEc5aziXySqmFfmuw9fnRWxTtn9H34OYvt.yM', 'images/img_default.png'),
(13, 1085317328, 'rosa', 'granja', '', 'rosa@gmail.com', '$2y$10$GG/uYeQUiphyEMPW5PSJEuEtuRzTCRkbMyKjq55mIkT', 'images/boy.png'),
(14, 123456789, 'catalina', 'riascos', '', 'cata@gmail.com', '$2y$10$Hn2fExCwX.UjFbskA58plOxciWcMkBWT5t5kAhLUqBe', 'images/girl.png'),
(15, 1, 'consuelo', 'riascos', '', 'cccoonn@gmail.com', '$2y$10$ExVSAnp7RSoTdUg59pYM6e4eGPJjEIgRWDRkr1XUMw0', 'images/girl.png'),
(16, 222, 'esteban', 'criollo', '', 'este@gmail.com', '$2y$10$NVTrjJSwyO44qDt5vdhZ0Oo9JxKDHGTovOmxz63TesZ', 'images/boy.png'),
(17, 333, 'brandon', 'granja', '', 'bran@gmail.com', '$2y$10$3FaHWEfNlh82dLer1Y2M9u0AdH8pOPxmXM1zrpyWQ8h', 'images/boy.png'),
(18, 4, 'mayerly', 'yandar', '', 'maye@gmail.com', '$2y$10$YQhhmBGvtl1LH4VaRjRofO4FNytdp9c.qyCbC.sVHhB', 'images/girl.png'),
(19, 5, 'carlos', 'torres', '', 'carlos@gmail.com', '$2y$10$R2B/hYQXuwBHLza0da5z/uYpG6cimBqY1q90v5OyCsU', 'images/boy.png'),
(20, 10, 'andrea', 'riascos', '', 'andrea@gmail.com', '$2y$10$rB/3UI/hK3eGGVnlFID5ROz3odSlRzPFVKNGLyz3DUa', 'images/girl.png'),
(21, 11, 'andres', 'solarte', '', 'andressol@gmail.com', '$2y$10$gkOI/.JF/cw.LRFAp.QuluEKSNcbKscWjiFauJcqec3', 'images/boy.png'),
(22, 12, 'elisero', 'criollo', '', 'eli@gmail.com', '$2y$10$WDtVWPc7OV4E8rOXmcjG6.45V9uOH5EFxrzYRCKDgZL', 'photo_url_db'),
(23, 13, 'elisero', 'criollo', '', 'eli1@gmail.com', '$2y$10$jzoYxtQOydkSXi/qX82xFupdHAQGWu6R76lwadrHLmQ', 'photo_url_db');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`item`),
  ADD UNIQUE KEY `codprod` (`codprod`),
  ADD UNIQUE KEY `nomprod` (`nomprod`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `item` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
