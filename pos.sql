-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-01-2023 a las 01:08:29
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Belleza Mujer', '2023-01-22 21:59:24'),
(2, 'Belleza Hombre', '2023-01-22 21:59:33'),
(3, 'Ventas de productos de belleza', '2023-01-22 21:59:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `compras`, `ultima_compra`, `fecha`) VALUES
(3, 'Juan Villegas', 'juan@hotmail.com', '(+569) 2341-2345', 3, '2023-01-22 21:00:21', '2023-01-23 00:00:21'),
(4, 'Pedro Pérez', 'pedro@gmail.com', '(399) 876-5432', 2, '2023-01-22 21:04:47', '2023-01-23 00:04:47'),
(5, 'Miguel Murillo', 'miguel@hotmail.com', '(254) 545-3446', 1, '2023-01-22 20:32:03', '2023-01-22 23:32:03'),
(6, 'Margarita Londoño', 'margarita@hotmail.com', '(344) 345-6678', 4, '2023-01-22 21:03:37', '2023-01-23 00:03:37'),
(7, 'Julian Ramirez', 'julian@hotmail.com', '(675) 674-5453', 3, '2023-01-22 20:45:01', '2023-01-22 23:45:01'),
(8, 'Stella Jaramillo', 'stella@gmail.com', '(435) 346-3463', 6, '2023-01-22 20:33:28', '2023-01-22 23:33:28'),
(9, 'Eduardo López', 'eduardo@gmail.com', '(534) 634-6565', 2, '2023-01-22 20:36:28', '2023-01-22 23:36:28'),
(10, 'Ximena Restrepo', 'ximena@gmail.com', '(543) 463-4634', 3, '2023-01-22 21:02:00', '2023-01-23 00:02:00'),
(11, 'David Guzman', 'david@hotmail.com', '(354) 574-5634', 1, '2023-01-22 20:50:43', '2023-01-22 23:50:43'),
(12, 'Gonzalo Pérez', 'gonzalo@yahoo.com', '(235) 346-3464', 3, '2023-01-22 20:16:11', '2023-01-22 23:16:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '1001', 'Corte de Pelo Mujer', 'vistas/img/productos/1001/916.jpg', 998, 4000, 4000, 2, '2023-01-22 23:49:47'),
(2, 2, '1002', 'Corte de Pelo Hombre', 'vistas/img/productos/1002/585.jpg', 994, 4000, 4000, 6, '2023-01-23 00:04:47'),
(3, 3, '1003', 'Tintura de pelo Normal', 'vistas/img/productos/1003/667.png', 19, 4100, 5740, 1, '2023-01-22 23:49:47'),
(4, 3, '1004', 'Lapiz Labial', 'vistas/img/productos/1004/929.jpg', 3, 3990, 5586, 0, '2023-01-22 22:56:40'),
(6, 1, '1005', 'Coloracion Capilar', 'vistas/img/productos/1005/762.jpg', 998, 15000, 15000, 2, '2023-01-23 00:03:37'),
(7, 2, '1006', 'Diseño de Barba', 'vistas/img/productos/1006/857.jpg', 994, 2500, 2500, 6, '2023-01-23 00:00:21'),
(8, 3, '1007', 'Crema anti arrugas', 'vistas/img/productos/1007/334.jpg', 12, 8910, 12474, 3, '2023-01-22 23:45:01'),
(9, 1, '1008', 'Peinado de Novias', 'vistas/img/productos/1008/191.jpg', 999, 35000, 35000, 1, '2023-01-22 23:29:08'),
(10, 3, '1009', 'Sombra de ojos', 'vistas/img/productos/1009/149.jpg', 17, 9500, 13300, 1, '2023-01-22 23:20:52'),
(11, 1, '1010', 'Alisado con keratina', 'vistas/img/productos/1010/433.jpg', 996, 25000, 25000, 4, '2023-01-23 00:02:00'),
(12, 3, '1011', 'Shampoo sin Sal', 'vistas/img/productos/1011/908.jpg', 14, 5690, 8535, 0, '2023-01-22 23:23:53'),
(13, 3, '1012', 'Bloqueador solar', 'vistas/img/productos/1012/673.jpg', 6, 3990, 5586, 2, '2023-01-22 23:36:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `nombre_prov` text COLLATE utf8_spanish_ci NOT NULL,
  `email_prov` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `pag_web` text COLLATE utf8_spanish_ci NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre_prov`, `email_prov`, `telefono`, `pag_web`, `comentario`, `fecha`) VALUES
(1, 'Pichara', 'pichara@gmail.com', '(569) 1111-1111', 'pichara.com', 'ir presencial', '2022-10-02 04:04:39'),
(2, 'juan pres', 'juanito@gmail.com', '(568) 8888-8888', 'juanito.com', 'llamar por telefono', '2022-10-02 04:23:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2023-01-22 16:27:13', '2023-01-22 21:27:13'),
(60, 'Lucila Gomez', 'Lucygomez', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'Administrador', 'vistas/img/usuarios/Lucygomez/753.png', 1, '2023-01-22 16:56:44', '2023-01-22 21:56:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(1, 10001, 12, 60, '[{\"id\":\"2\",\"descripcion\":\"Corte de Pelo Hombre\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"4000\",\"total\":\"4000\"}]', 0, 4000, 4000, 'Efectivo', '2022-12-22 23:14:08'),
(2, 10002, 12, 60, '[{\"id\":\"7\",\"descripcion\":\"Diseño de Barba\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"2500\",\"total\":\"2500\"},{\"id\":\"2\",\"descripcion\":\"Corte de Pelo Hombre\",\"cantidad\":\"1\",\"stock\":\"998\",\"precio\":\"4000\",\"total\":\"4000\"}]', 0, 6500, 6500, 'Efectivo', '2022-12-24 23:16:11'),
(3, 10002, 7, 60, '[{\"id\":\"7\",\"descripcion\":\"Diseño de Barba\",\"cantidad\":\"1\",\"stock\":\"998\",\"precio\":\"2500\",\"total\":\"2500\"}]', 0, 2500, 2500, 'Efectivo', '2022-11-22 23:18:48'),
(4, 10002, 10, 60, '[{\"id\":\"11\",\"descripcion\":\"Alisado con keratina\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"25000\",\"total\":\"25000\"},{\"id\":\"10\",\"descripcion\":\"Sombra de ojos\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"13300\",\"total\":\"13300\"}]', 0, 38300, 38300, 'TD-582585', '2023-01-05 23:20:52'),
(5, 10002, 8, 60, '[{\"id\":\"13\",\"descripcion\":\"Bloqueador solar\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"5586\",\"total\":\"5586\"},{\"id\":\"8\",\"descripcion\":\"Crema anti arrugas\",\"cantidad\":\"2\",\"stock\":\"13\",\"precio\":\"12474\",\"total\":\"24948\"},{\"id\":\"9\",\"descripcion\":\"Peinado de Novias\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"35000\",\"total\":\"35000\"}]', 0, 65534, 65534, 'TC-586774', '2022-11-02 23:29:08'),
(6, 10002, 5, 60, '[{\"id\":\"2\",\"descripcion\":\"Corte de Pelo Hombre\",\"cantidad\":\"1\",\"stock\":\"997\",\"precio\":\"4000\",\"total\":\"4000\"}]', 0, 4000, 4000, 'Efectivo', '2022-11-01 23:32:03'),
(7, 10002, 8, 60, '[{\"id\":\"1\",\"descripcion\":\"Corte de Pelo Mujer\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"4000\",\"total\":\"4000\"},{\"id\":\"11\",\"descripcion\":\"Alisado con keratina\",\"cantidad\":\"1\",\"stock\":\"998\",\"precio\":\"25000\",\"total\":\"25000\"}]', 0, 29000, 29000, 'TD-787568', '2022-12-08 23:33:28'),
(8, 10002, 9, 60, '[{\"id\":\"2\",\"descripcion\":\"Corte de Pelo Hombre\",\"cantidad\":\"1\",\"stock\":\"996\",\"precio\":\"4000\",\"total\":\"4000\"},{\"id\":\"13\",\"descripcion\":\"Bloqueador solar\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"5586\",\"total\":\"5586\"}]', 0, 9586, 9586, 'Efectivo', '2022-10-22 23:36:28'),
(9, 10002, 7, 60, '[{\"id\":\"11\",\"descripcion\":\"Alisado con keratina\",\"cantidad\":\"1\",\"stock\":\"997\",\"precio\":\"25000\",\"total\":\"25000\"},{\"id\":\"8\",\"descripcion\":\"Crema anti arrugas\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"12474\",\"total\":\"12474\"}]', 0, 37474, 37474, 'TD-69671', '2022-10-05 23:45:01'),
(10, 10002, 6, 60, '[{\"id\":\"1\",\"descripcion\":\"Corte de Pelo Mujer\",\"cantidad\":\"1\",\"stock\":\"998\",\"precio\":\"4000\",\"total\":\"4000\"},{\"id\":\"6\",\"descripcion\":\"Coloracion Capilar\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"15000\",\"total\":\"15000\"},{\"id\":\"3\",\"descripcion\":\"Tintura de pelo Normal\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"5740\",\"total\":\"5740\"}]', 1237, 24740, 25977, 'TC-5657741', '2023-01-22 23:49:47'),
(11, 10002, 11, 60, '[{\"id\":\"7\",\"descripcion\":\"Diseño de Barba\",\"cantidad\":\"1\",\"stock\":\"997\",\"precio\":\"2500\",\"total\":\"2500\"}]', 0, 2500, 2500, 'Efectivo', '2022-12-06 23:50:43'),
(12, 10002, 4, 60, '[{\"id\":\"7\",\"descripcion\":\"Diseño de Barba\",\"cantidad\":\"1\",\"stock\":\"996\",\"precio\":\"2500\",\"total\":\"2500\"}]', 0, 2500, 2500, 'Efectivo', '2022-11-02 23:52:15'),
(13, 10002, 3, 60, '[{\"id\":\"7\",\"descripcion\":\"Diseño de Barba\",\"cantidad\":\"1\",\"stock\":\"995\",\"precio\":\"2500\",\"total\":\"2500\"}]', 0, 2500, 2500, 'Efectivo', '2022-10-05 23:58:08'),
(14, 10002, 3, 60, '[{\"id\":\"2\",\"descripcion\":\"Corte de Pelo Hombre\",\"cantidad\":\"1\",\"stock\":\"995\",\"precio\":\"4000\",\"total\":\"4000\"},{\"id\":\"7\",\"descripcion\":\"Diseño de Barba\",\"cantidad\":\"1\",\"stock\":\"994\",\"precio\":\"2500\",\"total\":\"2500\"}]', 0, 6500, 6500, 'Efectivo', '2022-12-16 00:00:21'),
(15, 10002, 10, 60, '[{\"id\":\"11\",\"descripcion\":\"Alisado con keratina\",\"cantidad\":\"1\",\"stock\":\"996\",\"precio\":\"25000\",\"total\":\"25000\"}]', 2500, 25000, 27500, 'TD-8886564', '2022-10-19 00:02:00'),
(16, 10002, 6, 60, '[{\"id\":\"6\",\"descripcion\":\"Coloracion Capilar\",\"cantidad\":\"1\",\"stock\":\"998\",\"precio\":\"15000\",\"total\":\"15000\"}]', 0, 15000, 15000, 'Efectivo', '2023-01-23 00:03:37'),
(17, 10002, 4, 60, '[{\"id\":\"2\",\"descripcion\":\"Corte de Pelo Hombre\",\"cantidad\":\"1\",\"stock\":\"994\",\"precio\":\"4000\",\"total\":\"4000\"}]', 0, 4000, 4000, 'Efectivo', '2023-01-23 00:04:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
