-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2023 a las 18:19:10
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contabilidad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `DETALLE` varchar(50) NOT NULL,
  `RAZON` varchar(100) NOT NULL,
  `CODIGO` int(11) NOT NULL,
  `VALORD` int(11) NOT NULL DEFAULT 0,
  `VALORH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`DETALLE`, `RAZON`, `CODIGO`, `VALORD`, `VALORH`) VALUES
('gabriela', 'Pasivo', 2, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gabriela`
--

CREATE TABLE `gabriela` (
  `ID` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `VALOR` float NOT NULL,
  `TIPO` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gabriela`
--

INSERT INTO `gabriela` (`ID`, `FECHA`, `VALOR`, `TIPO`) VALUES
(1, '2023-10-16', 3, 'haber'),
(2, '2023-10-17', 1, 'haber'),
(3, '2023-10-10', 44, 'haber'),
(4, '2023-10-10', 44, 'haber'),
(5, '2023-10-10', 44, 'haber'),
(6, '2023-10-10', 44, 'haber'),
(7, '2023-10-10', 44, 'haber'),
(8, '2023-10-10', 44, 'haber'),
(9, '2023-10-10', 44, 'haber'),
(10, '2023-10-10', 44, 'haber');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ganancias_y_perdidas`
--

CREATE TABLE `ganancias_y_perdidas` (
  `ID` int(30) NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) NOT NULL,
  `CUENTA` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resumen_cuentas`
--

CREATE TABLE `resumen_cuentas` (
  `ID` int(30) NOT NULL,
  `CUENTA` varchar(50) NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `resumen_cuentas`
--

INSERT INTO `resumen_cuentas` (`ID`, `CUENTA`, `VALOR`, `TIPO`) VALUES
(1, 'gabriela', 4, '0'),
(2, 'gabriela', 4, '0'),
(3, 'katherinehhh', 7, '0'),
(4, 'katherinehhh', 7, '0'),
(5, 'katherinehhh', 7, '0'),
(6, 'hola6', 3, '0'),
(7, 'gabriela', 3, '0'),
(8, 'gabriela', 1, '0'),
(9, 'gabriela', 44, '0'),
(10, 'gabriela', 44, '0'),
(11, 'gabriela', 44, '0'),
(12, 'gabriela', 44, '0'),
(13, 'gabriela', 44, '0'),
(14, 'gabriela', 44, '0'),
(15, 'gabriela', 44, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `utilidad_del_ejercicio`
--

CREATE TABLE `utilidad_del_ejercicio` (
  `ID` int(30) NOT NULL,
  `FECHA` date NOT NULL,
  `VALOR` double NOT NULL,
  `TIPO` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`CODIGO`);

--
-- Indices de la tabla `gabriela`
--
ALTER TABLE `gabriela`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `ganancias_y_perdidas`
--
ALTER TABLE `ganancias_y_perdidas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `resumen_cuentas`
--
ALTER TABLE `resumen_cuentas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `utilidad_del_ejercicio`
--
ALTER TABLE `utilidad_del_ejercicio`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gabriela`
--
ALTER TABLE `gabriela`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ganancias_y_perdidas`
--
ALTER TABLE `ganancias_y_perdidas`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resumen_cuentas`
--
ALTER TABLE `resumen_cuentas`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `utilidad_del_ejercicio`
--
ALTER TABLE `utilidad_del_ejercicio`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
