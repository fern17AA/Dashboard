-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2021 a las 02:33:45
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `grafica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `#` int(10) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `D1` varchar(255) NOT NULL,
  `D2` varchar(255) NOT NULL,
  `D3` varchar(255) NOT NULL,
  `D4` varchar(255) NOT NULL,
  `D5` varchar(255) NOT NULL,
  `D6` varchar(255) NOT NULL,
  `D7` varchar(255) NOT NULL,
  `D8` varchar(255) NOT NULL,
  `D9` varchar(255) NOT NULL,
  `D10` varchar(255) NOT NULL,
  `D11` varchar(255) NOT NULL,
  `D12` varchar(255) NOT NULL,
  `D13` varchar(255) NOT NULL,
  `D14` varchar(255) NOT NULL,
  `D15` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`#`, `Nombre`, `D1`, `D2`, `D3`, `D4`, `D5`, `D6`, `D7`, `D8`, `D9`, `D10`, `D11`, `D12`, `D13`, `D14`, `D15`) VALUES
(1, 'Primeros Datos', '100', '200', '300', '400', '500', '200', '200', '200', '600', '400', '800', '100', '400', '916', '440'),
(2, 'Segundos Datos', '400', '300', '100', '200', '300', '122', '500', '500', '500', '900', '900', '200', '501', '400', '741'),
(3, 'Terceros datos', '100', '200', '300', '360', '400', '500', '100', '200', '300', '400', '200', '100', '203', '400', '550');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`#`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `#` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
