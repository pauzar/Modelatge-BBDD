-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-02-2020 a las 13:35:44
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Modelatge-BBDD`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `1_Vueling_1`
--

CREATE TABLE `1_Vueling_1` (
  `id_avio` int(6) NOT NULL,
  `model` varchar(10) NOT NULL,
  `num_persones` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `1_Vueling_1`
--

INSERT INTO `1_Vueling_1` (`id_avio`, `model`, `num_persones`) VALUES
(1, 'B-HFGR5', 250),
(2, 'R-TGHTR', 350);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `1_Vueling_2`
--

CREATE TABLE `1_Vueling_2` (
  `id_seient` varchar(3) NOT NULL,
  `id_avio` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `1_Vueling_2`
--

INSERT INTO `1_Vueling_2` (`id_seient`, `id_avio`) VALUES
('1A', 1),
('1B', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2_botiga_1`
--

CREATE TABLE `2_botiga_1` (
  `id_cuadro` int(5) NOT NULL,
  `preu` int(10) NOT NULL,
  `Autor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `2_botiga_1`
--

INSERT INTO `2_botiga_1` (`id_cuadro`, `preu`, `Autor`) VALUES
(1, 50, 'anonimo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2_botiga_2`
--

CREATE TABLE `2_botiga_2` (
  `id_comprador` int(10) NOT NULL,
  `id_cuadro` int(5) NOT NULL,
  `ideom` varchar(10) NOT NULL,
  `dni` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `2_botiga_2`
--

INSERT INTO `2_botiga_2` (`id_comprador`, `id_cuadro`, `ideom`, `dni`) VALUES
(1, 1, 'jejeje', '234567');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `3_youtube_1`
--

CREATE TABLE `3_youtube_1` (
  `id_usuario` bigint(20) NOT NULL,
  `id_video` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `3_youtube_1`
--

INSERT INTO `3_youtube_1` (`id_usuario`, `id_video`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `3_youtube_2`
--

CREATE TABLE `3_youtube_2` (
  `id_usuario` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contraseña` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `3_youtube_2`
--

INSERT INTO `3_youtube_2` (`id_usuario`, `email`, `contraseña`, `nombre`) VALUES
(1, 'frtrtg@sdsfsdcom', '343243242', 'ernesto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `3_youtube_3`
--

CREATE TABLE `3_youtube_3` (
  `id_video` bigint(20) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `3_youtube_3`
--

INSERT INTO `3_youtube_3` (`id_video`, `titulo`, `descripcion`, `url`) VALUES
(1, 'erweredsc', 'ffsdfsdfs', 'dsfsdfsdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `4_llibres_1`
--

CREATE TABLE `4_llibres_1` (
  `id_llibres` int(8) NOT NULL,
  `unitats` int(8) NOT NULL,
  `preu` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `4_llibres_1`
--

INSERT INTO `4_llibres_1` (`id_llibres`, `unitats`, `preu`) VALUES
(1, 400, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `4_llibres_2`
--

CREATE TABLE `4_llibres_2` (
  `id_autor` int(8) NOT NULL,
  `direccio` text NOT NULL,
  `llibres_escrits` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `4_llibres_2`
--

INSERT INTO `4_llibres_2` (`id_autor`, `direccio`, `llibres_escrits`) VALUES
(1, 'blalalala', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `4_llibres_3`
--

CREATE TABLE `4_llibres_3` (
  `id_usari` int(8) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contrasenya` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `4_llibres_3`
--

INSERT INTO `4_llibres_3` (`id_usari`, `email`, `contrasenya`) VALUES
(1, 'fdjsdlfj@ksdlakds.com', 'lasdjasidjas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `4_llibres_4`
--

CREATE TABLE `4_llibres_4` (
  `id_usuari` int(8) NOT NULL,
  `id_llibre` int(8) NOT NULL,
  `id_factura` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `4_llibres_4`
--

INSERT INTO `4_llibres_4` (`id_usuari`, `id_llibre`, `id_factura`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `5_xarxa_1`
--

CREATE TABLE `5_xarxa_1` (
  `id_usuari` int(8) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contrasenya` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `5_xarxa_2`
--

CREATE TABLE `5_xarxa_2` (
  `id_usuari1` int(8) NOT NULL,
  `id_usuari2` int(8) NOT NULL,
  `rao_amistad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `5_xarxa_3`
--

CREATE TABLE `5_xarxa_3` (
  `id_usuari` int(8) NOT NULL,
  `id_foto` int(8) NOT NULL,
  `lloc` varchar(30) NOT NULL,
  `foto_url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `6_optica_1`
--

CREATE TABLE `6_optica_1` (
  `id_prov` int(8) NOT NULL,
  `nom_prov` varchar(30) NOT NULL,
  `id_ullera` int(8) NOT NULL,
  `id_marca` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `6_optica_2`
--

CREATE TABLE `6_optica_2` (
  `id_ulleres` int(8) NOT NULL,
  `id_marca` int(8) NOT NULL,
  `graduació` varchar(30) NOT NULL,
  `tipus_mont` varchar(15) NOT NULL,
  `color_mont` varchar(15) NOT NULL,
  `color_vid` varchar(15) NOT NULL,
  `preu` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `6_optica_3`
--

CREATE TABLE `6_optica_3` (
  `id_client` int(8) NOT NULL,
  `nom_client` varchar(30) NOT NULL,
  `a_codi_postal` varchar(15) NOT NULL,
  `telefon` varchar(15) NOT NULL,
  `correu` varchar(30) NOT NULL,
  `data_registre` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_client_reco` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `6_optica_4`
--

CREATE TABLE `6_optica_4` (
  `id_empleat` int(8) NOT NULL,
  `id_ullera` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `1_Vueling_1`
--
ALTER TABLE `1_Vueling_1`
  ADD PRIMARY KEY (`id_avio`),
  ADD UNIQUE KEY `model` (`model`);

--
-- Indices de la tabla `1_Vueling_2`
--
ALTER TABLE `1_Vueling_2`
  ADD PRIMARY KEY (`id_avio`);

--
-- Indices de la tabla `2_botiga_1`
--
ALTER TABLE `2_botiga_1`
  ADD PRIMARY KEY (`id_cuadro`);

--
-- Indices de la tabla `2_botiga_2`
--
ALTER TABLE `2_botiga_2`
  ADD PRIMARY KEY (`id_comprador`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `id_cuadro` (`id_cuadro`);

--
-- Indices de la tabla `3_youtube_1`
--
ALTER TABLE `3_youtube_1`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_video` (`id_video`);

--
-- Indices de la tabla `3_youtube_2`
--
ALTER TABLE `3_youtube_2`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `3_youtube_3`
--
ALTER TABLE `3_youtube_3`
  ADD PRIMARY KEY (`id_video`);

--
-- Indices de la tabla `4_llibres_1`
--
ALTER TABLE `4_llibres_1`
  ADD PRIMARY KEY (`id_llibres`);

--
-- Indices de la tabla `4_llibres_2`
--
ALTER TABLE `4_llibres_2`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `4_llibres_3`
--
ALTER TABLE `4_llibres_3`
  ADD PRIMARY KEY (`id_usari`),
  ADD KEY `id_usari` (`id_usari`);

--
-- Indices de la tabla `4_llibres_4`
--
ALTER TABLE `4_llibres_4`
  ADD PRIMARY KEY (`id_usuari`),
  ADD KEY `id_llibre` (`id_llibre`);

--
-- Indices de la tabla `5_xarxa_1`
--
ALTER TABLE `5_xarxa_1`
  ADD PRIMARY KEY (`id_usuari`);

--
-- Indices de la tabla `5_xarxa_2`
--
ALTER TABLE `5_xarxa_2`
  ADD PRIMARY KEY (`id_usuari1`),
  ADD KEY `id_usuari2` (`id_usuari2`);

--
-- Indices de la tabla `5_xarxa_3`
--
ALTER TABLE `5_xarxa_3`
  ADD PRIMARY KEY (`id_usuari`);

--
-- Indices de la tabla `6_optica_1`
--
ALTER TABLE `6_optica_1`
  ADD PRIMARY KEY (`id_prov`),
  ADD KEY `id_ullera` (`id_ullera`);

--
-- Indices de la tabla `6_optica_2`
--
ALTER TABLE `6_optica_2`
  ADD PRIMARY KEY (`id_ulleres`);

--
-- Indices de la tabla `6_optica_4`
--
ALTER TABLE `6_optica_4`
  ADD PRIMARY KEY (`id_ullera`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `1_Vueling_1`
--
ALTER TABLE `1_Vueling_1`
  MODIFY `id_avio` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `2_botiga_2`
--
ALTER TABLE `2_botiga_2`
  MODIFY `id_comprador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `3_youtube_1`
--
ALTER TABLE `3_youtube_1`
  MODIFY `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `3_youtube_2`
--
ALTER TABLE `3_youtube_2`
  MODIFY `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `3_youtube_3`
--
ALTER TABLE `3_youtube_3`
  MODIFY `id_video` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `1_Vueling_2`
--
ALTER TABLE `1_Vueling_2`
  ADD CONSTRAINT `1_vueling_2_ibfk_1` FOREIGN KEY (`id_avio`) REFERENCES `1_Vueling_1` (`id_avio`);

--
-- Filtros para la tabla `2_botiga_2`
--
ALTER TABLE `2_botiga_2`
  ADD CONSTRAINT `2_botiga_2_ibfk_1` FOREIGN KEY (`id_cuadro`) REFERENCES `2_botiga_1` (`id_cuadro`);

--
-- Filtros para la tabla `3_youtube_1`
--
ALTER TABLE `3_youtube_1`
  ADD CONSTRAINT `3_youtube_1_ibfk_1` FOREIGN KEY (`id_video`) REFERENCES `3_youtube_3` (`id_video`);

--
-- Filtros para la tabla `3_youtube_2`
--
ALTER TABLE `3_youtube_2`
  ADD CONSTRAINT `3_youtube_2_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `3_youtube_1` (`id_usuario`);

--
-- Filtros para la tabla `4_llibres_3`
--
ALTER TABLE `4_llibres_3`
  ADD CONSTRAINT `4_llibres_3_ibfk_1` FOREIGN KEY (`id_usari`) REFERENCES `4_llibres_4` (`id_usuari`);

--
-- Filtros para la tabla `4_llibres_4`
--
ALTER TABLE `4_llibres_4`
  ADD CONSTRAINT `4_llibres_4_ibfk_1` FOREIGN KEY (`id_llibre`) REFERENCES `4_llibres_1` (`id_llibres`);

--
-- Filtros para la tabla `5_xarxa_1`
--
ALTER TABLE `5_xarxa_1`
  ADD CONSTRAINT `5_xarxa_1_ibfk_1` FOREIGN KEY (`id_usuari`) REFERENCES `5_xarxa_2` (`id_usuari1`);

--
-- Filtros para la tabla `5_xarxa_3`
--
ALTER TABLE `5_xarxa_3`
  ADD CONSTRAINT `5_xarxa_3_ibfk_1` FOREIGN KEY (`id_usuari`) REFERENCES `5_xarxa_2` (`id_usuari1`);

--
-- Filtros para la tabla `6_optica_2`
--
ALTER TABLE `6_optica_2`
  ADD CONSTRAINT `6_optica_2_ibfk_1` FOREIGN KEY (`id_ulleres`) REFERENCES `6_optica_1` (`id_ullera`);

--
-- Filtros para la tabla `6_optica_4`
--
ALTER TABLE `6_optica_4`
  ADD CONSTRAINT `6_optica_4_ibfk_1` FOREIGN KEY (`id_ullera`) REFERENCES `6_optica_1` (`id_ullera`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
