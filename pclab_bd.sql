-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2020 a las 05:13:36
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pclab_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(20) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `id_g` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `id_g`) VALUES
(1, 'julio', 'aaaa', '1240.97', 1),
(2, 'bbb', 'cccc', '10.50', 2),
(3, 'fgfg', 'sdsdsdsdsdd', '12.99', 2),
(4, 'gfgdgfggrgger', 'ilioliiolo', '44.80', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_almacenamiento`
--

CREATE TABLE `tbl_almacenamiento` (
  `id` int(10) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `fabricante` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `capacidad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `cache` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `factor` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `interfaz` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `detalles` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `disponible` int(10) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `id_almacenamiento_g` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_almacenamiento`
--

INSERT INTO `tbl_almacenamiento` (`id`, `nombre`, `fabricante`, `capacidad`, `tipo`, `cache`, `factor`, `interfaz`, `detalles`, `disponible`, `precio`, `id_almacenamiento_g`) VALUES
(1, 'Seagate Barracuda Compute', 'Seagate', '', '', '', '', '', '', 0, '54.99', 1),
(2, 'Samsung 970 Evo', 'Samsung', '', '', '', '', '', '', 0, '129.99', 2),
(3, 'Samsung 970 Evo', 'Samsung', '', '', '', '', '', '', 0, '59.00', 2),
(4, 'Western Digital Caviar Blue', 'Western', '', '', '', '', '', '', 0, '39.99', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_caja`
--

CREATE TABLE `tbl_caja` (
  `id` int(10) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `fabricante` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `factor_de_forma` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `panel_lateral` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `detalles` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `disponible` int(10) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `id_caja_g` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_caja`
--

INSERT INTO `tbl_caja` (`id`, `nombre`, `fabricante`, `factor_de_forma`, `panel_lateral`, `tipo`, `color`, `detalles`, `disponible`, `precio`, `id_caja_g`) VALUES
(1, 'NZXT H510', '', '', '', '', '', '', 0, '69.98', 1),
(2, 'Phanteks Eclipse P300A Mesh', '', '', '', '', '', '', 0, '49.99', 1),
(3, 'Corsair 4000D Airflow', '', '', '', '', '', '', 0, '79.99', 1),
(4, 'Lian Li PC-O11 Dynamic', '', '', '', '', '', '', 0, '149.99', 1),
(5, 'Phanteks Eclipse P400A Digital', '', '', '', '', '', '', 0, '88.95', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cpu`
--

CREATE TABLE `tbl_cpu` (
  `id` int(10) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `fabricante` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `zocalo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nucleos` int(5) NOT NULL,
  `frecuencia` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `frecuencia_turbo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `tdp` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `detalles` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `disponible` int(10) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `id_cpu_g` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_cpu`
--

INSERT INTO `tbl_cpu` (`id`, `nombre`, `fabricante`, `zocalo`, `nucleos`, `frecuencia`, `frecuencia_turbo`, `tdp`, `detalles`, `disponible`, `precio`, `id_cpu_g`) VALUES
(1, 'AMD Ryzen 5 3600 3.6 GHz 6-Core Processor', 'AMD', 'AM4', 6, '3.6 GHZ', '4.2 GHZ', '65W', 'ninguno', 5, '185.99', 1),
(2, 'AMD Ryzen 7 3700X', 'AMD', 'AM4', 8, '3.6 GHZ', '4.4 GHZ', '65W', 'detalles luego', 22, '324.98', 1),
(3, 'AMD Ryzen 5 5600X', 'AMD', 'AM4', 6, '3.7 GHZ', '4.6 GHZ', '65W', 'luego', 24, '299.00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cpu_cooler`
--

CREATE TABLE `tbl_cpu_cooler` (
  `id` int(10) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `fabricante` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `rpm` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nivel_ruido` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `tamaño` int(5) NOT NULL,
  `detalles` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `disponible` int(10) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `id_cpu_cooler_g` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_cpu_cooler`
--

INSERT INTO `tbl_cpu_cooler` (`id`, `nombre`, `fabricante`, `rpm`, `nivel_ruido`, `color`, `tamaño`, `detalles`, `disponible`, `precio`, `id_cpu_cooler_g`) VALUES
(1, 'Cooler Master Hyper 212 EVO', '', '', '', '', 0, '', 0, '34.99', 1),
(2, 'Corsair H100i RGB PLATINUM', '', '', '', '', 0, '', 0, '159.99', 1),
(3, 'Cooler Master Hyper 212 RGB Black Edition', '', '', '', '', 0, '', 0, '41.99', 1),
(4, 'NZXT Kraken X53', '', '', '', '', 0, '', 0, '129.99', 1),
(5, 'Thermaltake UX100', '', '', '', '', 0, '', 0, '19.98', 1),
(6, 'ARCTIC Freezer 34 eSports DUO', '', '', '', '', 0, '', 0, '59.99', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_psu`
--

CREATE TABLE `tbl_psu` (
  `id` int(10) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `fabricante` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `factor_de_forma` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `certificacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `potencia` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `modular` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `detalles` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `disponible` int(10) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `id_psu_g` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_psu`
--

INSERT INTO `tbl_psu` (`id`, `nombre`, `fabricante`, `factor_de_forma`, `certificacion`, `potencia`, `modular`, `color`, `detalles`, `disponible`, `precio`, `id_psu_g`) VALUES
(1, 'Corsair RM (2019)', 'Corsair', 'ATX', '80+ Gold', '750w', 'full', 'Negro', 'despues', 69, '209.00', 1),
(2, 'Corsair RM (2019)', 'Corsair', 'ATX', '80+ Gold', '850 W', 'Full', 'Black', 'luego', 41, '134.99', 1),
(3, 'EVGA BQ', 'EVGA', 'ATX', '80+ Bronze', '600 W', 'Semi', 'negro', 'luego', 2, '74.98', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ram`
--

CREATE TABLE `tbl_ram` (
  `id` int(10) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `fabricante` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `kit` int(5) NOT NULL,
  `color` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `latencia` int(5) NOT NULL,
  `cas` int(5) NOT NULL,
  `tamaño_memoria` int(5) NOT NULL,
  `frecuencia` int(10) NOT NULL,
  `detalles` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `disponible` int(10) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `id_ram_g` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_ram`
--

INSERT INTO `tbl_ram` (`id`, `nombre`, `fabricante`, `kit`, `color`, `latencia`, `cas`, `tamaño_memoria`, `frecuencia`, `detalles`, `disponible`, `precio`, `id_ram_g`) VALUES
(1, 'Corsair Vengeance LPX 16 GB', 'Corsair', 2, 'Negro', 10, 16, 8, 3200, 'bbbbb', 45, '70.99', 1),
(2, 'Corsair Vengeance RGB Pro 16 GB', 'Corsair', 2, 'Negro', 10, 16, 8, 3200, 'ja ninguno', 66, '85.99', 1),
(3, 'Corsair Vengeance RGB Pro 32 GB', 'Corsair', 2, 'negro', 10, 16, 16, 3200, 'ningunooo', 12, '142.99', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tarjeta_madre`
--

CREATE TABLE `tbl_tarjeta_madre` (
  `id` int(10) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `fabricante` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `zocalo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `factor_de_forma` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `ram_max` int(5) NOT NULL,
  `ram_tipo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `ram_ranuras` int(5) NOT NULL,
  `color` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `detalles` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `disponible` int(10) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `id_cpu_g` int(10) NOT NULL,
  `id_ram_g` int(10) NOT NULL,
  `id_psu_g` int(10) NOT NULL,
  `id_almacenamiento_g` int(10) NOT NULL,
  `id_tarjeta_video_g` int(10) NOT NULL,
  `id_cpu_cooler_g` int(10) NOT NULL,
  `id_caja_g` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_tarjeta_madre`
--

INSERT INTO `tbl_tarjeta_madre` (`id`, `nombre`, `fabricante`, `zocalo`, `factor_de_forma`, `ram_max`, `ram_tipo`, `ram_ranuras`, `color`, `detalles`, `disponible`, `precio`, `id_cpu_g`, `id_ram_g`, `id_psu_g`, `id_almacenamiento_g`, `id_tarjeta_video_g`, `id_cpu_cooler_g`, `id_caja_g`) VALUES
(1, 'MSI B450 TOMAHAWK MAX', 'MSI', 'AM4', 'ATX', 64, 'DDR4', 4, 'Negro', 'despues le pongo los detalles ;)', 10, '114.99', 1, 1, 1, 1, 1, 1, 1),
(2, 'Asus TUF GAMING X570-PLUS (WI-FI)', 'Asus', 'AM4', 'ATX', 128, 'DDR4', 4, 'dorado', 'despues le pongo los detalles ;)', 60, '189.00', 2, 2, 2, 2, 2, 2, 2),
(3, 'Gigabyte B450M DS3H', 'Gigabyte', 'AM4', 'Micro ATX', 64, 'DDR4', 4, 'Plateado', 'despues le pongo los detalles ;)', 74, '104.50', 3, 3, 3, 3, 3, 3, 3),
(4, 'Asus ROG STRIX B450-F GAMING', 'Asus', 'AM4', 'ATX', 64, 'DDR4', 4, 'negro', 'despues le pongo los detalles ;)', 13, '129.99', 4, 4, 4, 4, 4, 4, 4),
(5, 'MSI MAG B550 TOMAHAWK', 'MSI', 'AM4', 'ATX', 128, 'DDR4', 4, 'Negro', 'sfferghggdfgrgrggrggrrgrgr', 54, '179.99', 5, 1, 5, 1, 5, 5, 5),
(6, 'ASRock B450M PRO4', 'ASRock', 'AM4', 'Micro ATX', 64, 'DDR4', 4, 'plateado', 'dfgdfsdffsefefvvvvvvccvcvcvcvcv', 33, '94.99', 6, 6, 6, 6, 6, 6, 6),
(7, 'Asus ROG STRIX B550-F GAMING (WI-FI)', 'Asus', 'AM4', 'ATX', 128, 'DDR4', 4, 'negro', 'asswdwddwdwdaddadadd', 99, '209.99', 7, 7, 7, 7, 7, 7, 7),
(8, 'MSI B550-A PRO', 'MSI', 'AM4', 'ATX', 128, 'DDR4', 4, 'negro', 'bnnbbbnbnnbbnnnbbnbn', 44, '139.99', 8, 8, 8, 8, 8, 8, 8),
(9, 'Gigabyte B550M DS3H', 'Gigabyte', 'AM4', 'Micro ATX', 128, 'DDR4', 4, 'dorado', 'dsdsccccccssss', 25, '94.00', 9, 9, 9, 9, 9, 9, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tarjeta_video`
--

CREATE TABLE `tbl_tarjeta_video` (
  `id` int(10) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `fabricante` int(250) NOT NULL,
  `chipset` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `memoria` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `frecuencia` int(10) NOT NULL,
  `frecuencia_turbo` int(10) NOT NULL,
  `tamaño` int(5) NOT NULL,
  `color` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `detalles` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `disponible` int(10) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `id_tarjeta_video_g` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_tarjeta_video`
--

INSERT INTO `tbl_tarjeta_video` (`id`, `nombre`, `fabricante`, `chipset`, `memoria`, `frecuencia`, `frecuencia_turbo`, `tamaño`, `color`, `detalles`, `disponible`, `precio`, `id_tarjeta_video_g`) VALUES
(1, 'MSI VENTUS XS OC - GeForce GTX 1660 SUPER', 0, '', '', 0, 0, 0, '', '', 0, '300.74', 1),
(2, 'MSI GAMING X - GeForce GTX 1660 Ti', 0, '', '', 0, 0, 0, '', '', 0, '499.98', 1),
(3, 'MSI GTX 1050 Ti 4GT OC', 0, '', '', 0, 0, 0, '', '', 0, '159.94', 1),
(4, 'PNY UPRISING - GeForce RTX 3070', 0, '', '', 0, 0, 0, '', '', 0, '549.94', 1),
(5, 'MSI GAMING X - Radeon RX 5700 XT', 0, '', '', 0, 0, 0, '', '', 0, '506.94', 1),
(6, 'Asus DUAL EVO OC - GeForce RTX 2060', 0, '', '', 0, 0, 0, '', '', 0, '382.94', 1),
(7, 'MSI ARMOR OC - Radeon RX 580', 0, '', '', 0, 0, 0, '', '', 0, '209.99', 1),
(8, 'EVGA FTW3 ULTRA GAMING - GeForce RTX 3090', 0, '', '', 0, 0, 0, '', '', 0, '2649.99', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_almacenamiento`
--
ALTER TABLE `tbl_almacenamiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_caja`
--
ALTER TABLE `tbl_caja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_cpu`
--
ALTER TABLE `tbl_cpu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_cpu_cooler`
--
ALTER TABLE `tbl_cpu_cooler`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_psu`
--
ALTER TABLE `tbl_psu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_ram`
--
ALTER TABLE `tbl_ram`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_tarjeta_madre`
--
ALTER TABLE `tbl_tarjeta_madre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_tarjeta_video`
--
ALTER TABLE `tbl_tarjeta_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_almacenamiento`
--
ALTER TABLE `tbl_almacenamiento`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_caja`
--
ALTER TABLE `tbl_caja`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_cpu`
--
ALTER TABLE `tbl_cpu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_cpu_cooler`
--
ALTER TABLE `tbl_cpu_cooler`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_psu`
--
ALTER TABLE `tbl_psu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_ram`
--
ALTER TABLE `tbl_ram`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_tarjeta_madre`
--
ALTER TABLE `tbl_tarjeta_madre`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_tarjeta_video`
--
ALTER TABLE `tbl_tarjeta_video`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
