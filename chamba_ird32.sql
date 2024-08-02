-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 23-07-2024 a las 15:37:18
-- Versión del servidor: 5.7.39
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chamba_ird32`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
`id_contrato` int(11) NOT NULL,
`contrato` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contratos`
--

INSERT INTO `contratos` (`id_contrato`, `contrato`) VALUES
(1, 'Freelance'),
(2, 'Definido'),
(3, 'Planta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edades`
--

CREATE TABLE `edades` (
`id_edad` int(11) NOT NULL,
`edad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `edades`
--

INSERT INTO `edades` (`id_edad`, `edad`) VALUES
(1, '18-25 años'),
(2, '26-35 años'),
(3, '36-45 años'),
(4, '46-55 años'),
(5, 'Más de 55 años');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
`id_empresa` int(11) NOT NULL,
`nombre` varchar(100) DEFAULT NULL,
`telefono` varchar(10) DEFAULT NULL,
`email` varchar(50) DEFAULT NULL,
`contrasena` varchar(50) NOT NULL,
`logo` varchar(500) DEFAULT NULL,
`id_giro_empresarial` int(11) DEFAULT NULL,
`id_ubicacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_civiles`
--

CREATE TABLE `estados_civiles` (
`id_estado_civil` int(11) NOT NULL,
`estado_civil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estados_civiles`
--

INSERT INTO `estados_civiles` (`id_estado_civil`, `estado_civil`) VALUES
(1, 'Soltero(a)'),
(2, 'Casado(a)'),
(3, 'Divorciado(a)'),
(4, 'Viudo(a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencias`
--

CREATE TABLE `experiencias` (
`id_experiencia` int(11) NOT NULL,
`experiencia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `experiencias`
--

INSERT INTO `experiencias` (`id_experiencia`, `experiencia`) VALUES
(1, 'Sin experiencia'),
(2, '1-2 años'),
(3, '3-5 años'),
(4, '6-10 años'),
(5, 'Más de 10 años');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `general`
--

CREATE TABLE `general` (
`id_general` int(11) NOT NULL,
`id_solicitante` int(11) DEFAULT NULL,
`id_empresa` int(11) DEFAULT NULL,
`titulo` varchar(100) DEFAULT NULL,
`intereses` varchar(500) DEFAULT NULL,
`habilidades` varchar(500) DEFAULT NULL,
`id_grado_estudio` int(11) DEFAULT NULL,
`id_experiencia` int(11) DEFAULT NULL,
`id_modalidad` int(11) DEFAULT NULL,
`id_edad` int(11) DEFAULT NULL,
`id_jornada_laboral` int(11) DEFAULT NULL,
`id_salario` int(11) DEFAULT NULL,
`prestaciones` varchar(500) DEFAULT NULL,
`id_idioma` int(11) DEFAULT NULL,
`id_contrato` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `giro_empresarial`
--

CREATE TABLE `giro_empresarial` (
`id_giro_empresarial` int(11) NOT NULL,
`nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `giro_empresarial`
--

INSERT INTO `giro_empresarial` (`id_giro_empresarial`, `nombre`) VALUES
(1, 'Alimentación y Bebidas'),
(2, 'Comercio'),
(3, 'Salud y Belleza'),
(4, 'Servicios Profesionales'),
(5, 'Tecnología y Comunicación'),
(6, 'Educación'),
(7, 'Turismo y Hospitalidad'),
(8, 'Manufactura'),
(9, 'Construcción e Inmobiliario'),
(10, 'Financiero'),
(11, 'Logística y Transporte'),
(12, 'Entretenimiento y Cultura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado_estudios`
--

CREATE TABLE `grado_estudios` (
`id_grado_estudio` int(11) NOT NULL,
`grado_estudio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grado_estudios`
--

INSERT INTO `grado_estudios` (`id_grado_estudio`, `grado_estudio`) VALUES
(1, 'Secundaria'),
(2, 'Preparatoria'),
(3, 'Técnico Superior Universitario'),
(4, 'Licenciatura'),
(5, 'Maestría'),
(6, 'Doctorado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE `habilidades` (
`id_habilidad` int(11) NOT NULL,
`habilidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `habilidades`
--

INSERT INTO `habilidades` (`id_habilidad`, `habilidad`) VALUES
(1, 'Programación'),
(2, 'Análisis de Datos'),
(3, 'Gestión de Proyectos'),
(4, 'Comunicación'),
(5, 'Diseño Gráfico'),
(6, 'Marketing Digital'),
(7, 'Idiomas'),
(8, 'Resolución de Problemas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas`
--

CREATE TABLE `idiomas` (
`id_idioma` int(11) NOT NULL,
`idioma` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `idiomas`
--

INSERT INTO `idiomas` (`id_idioma`, `idioma`) VALUES
(1, 'Español'),
(2, 'Inglés'),
(3, 'Francés'),
(4, 'Alemán'),
(5, 'Chino'),
(6, 'Japonés'),
(7, 'Italiano'),
(8, 'Portugués');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intereses`
--

CREATE TABLE `intereses` (
`id_interes` int(11) NOT NULL,
`interes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `intereses`
--

INSERT INTO `intereses` (`id_interes`, `interes`) VALUES
(1, 'Tecnología'),
(2, 'Finanzas'),
(3, 'Educación'),
(4, 'Arte'),
(5, 'Ciencias'),
(6, 'Deportes'),
(7, 'Salud'),
(8, 'Medio Ambiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas_laborales`
--

CREATE TABLE `jornadas_laborales` (
`id_jornada_laboral` int(11) NOT NULL,
`jornada_laboral` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jornadas_laborales`
--

INSERT INTO `jornadas_laborales` (`id_jornada_laboral`, `jornada_laboral`) VALUES
(1, 'Completo'),
(2, 'Medio tiempo'),
(3, 'Por horas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidades`
--

CREATE TABLE `modalidades` (
`id_modalidad` int(11) NOT NULL,
`modalidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modalidades`
--

INSERT INTO `modalidades` (`id_modalidad`, `modalidad`) VALUES
(1, 'Presencial'),
(2, 'Distancia'),
(3, 'Híbrido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidades`
--

CREATE TABLE `nacionalidades` (
`id_nacionalidad` int(11) NOT NULL,
`nacionalidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nacionalidades`
--

INSERT INTO `nacionalidades` (`id_nacionalidad`, `nacionalidad`) VALUES
(1, 'Mexicana'),
(2, 'Extranjera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestaciones`
--

CREATE TABLE `prestaciones` (
`id_prestacion` int(11) NOT NULL,
`prestacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prestaciones`
--

INSERT INTO `prestaciones` (`id_prestacion`, `prestacion`) VALUES
(1, 'Seguro médico'),
(2, 'Aguinaldo'),
(3, 'Vacaciones'),
(4, 'Fondo de ahorro'),
(5, 'Vales de despensa'),
(6, 'Capacitación'),
(7, 'Bonos de desempeño');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salarios`
--

CREATE TABLE `salarios` (
`id_salario` int(11) NOT NULL,
`salario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `salarios`
--

INSERT INTO `salarios` (`id_salario`, `salario`) VALUES
(1, '$5,000 - $10,000 MXN'),
(2, '$10,001 - $20,000 MXN'),
(3, '$20,001 - $30,000 MXN'),
(4, 'Más de $30,000 MXN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitantes`
--

CREATE TABLE `solicitantes` (
`id_solicitante` int(11) NOT NULL,
`nombre` varchar(50) NOT NULL,
`ap_paterno` varchar(50) NOT NULL,
`ap_materno` varchar(50) DEFAULT NULL,
`fecha_nacimiento` date NOT NULL,
`CURP` varchar(50) NOT NULL,
`telefono` varchar(10) NOT NULL,
`correo` varchar(50) NOT NULL,
`contrasena` varchar(50) NOT NULL,
`genero` enum('Masculino','Femenino') NOT NULL,
`datos_medicos` varchar(500) DEFAULT NULL,
`id_nacionalidad` int(11) DEFAULT NULL,
`id_estado_civil` int(11) DEFAULT NULL,
`id_tipo_sangre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subgiro_empresarial`
--

CREATE TABLE `subgiro_empresarial` (
`id_subgiro` int(11) NOT NULL,
`id_giro_empresarial` int(11) NOT NULL,
`nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subgiro_empresarial`
--

INSERT INTO `subgiro_empresarial` (`id_subgiro`, `id_giro_empresarial`, `nombre`) VALUES
(1, 1, 'Restaurantes'),
(2, 1, 'Cafeterías'),
(3, 1, 'Bares'),
(4, 1, 'Panaderías'),
(5, 1, 'Comida rápida'),
(6, 2, 'Tiendas de ropa y calzado'),
(7, 2, 'Supermercados'),
(8, 2, 'Tiendas de conveniencia'),
(9, 2, 'Ferreterías'),
(10, 2, 'Papelerías'),
(11, 3, 'Farmacias'),
(12, 3, 'Clínicas y consultorios médicos'),
(13, 3, 'Estéticas y salones de belleza'),
(14, 3, 'Spas'),
(15, 3, 'Gimnasios'),
(16, 4, 'Consultorías'),
(17, 4, 'Bufetes de abogados'),
(18, 4, 'Estudios contables'),
(19, 4, 'Agencias de publicidad y marketing'),
(20, 4, 'Despachos de arquitectura'),
(21, 5, 'Desarrollo de software'),
(22, 5, 'Soporte técnico'),
(23, 5, 'Diseño web'),
(24, 5, 'Agencias de medios'),
(25, 5, 'Televisión y radio'),
(26, 6, 'Guarderías'),
(27, 6, 'Colegios y escuelas privadas'),
(28, 6, 'Academias de idiomas'),
(29, 6, 'Centros de capacitación'),
(30, 6, 'Escuelas de música y arte'),
(31, 7, 'Hoteles'),
(32, 7, 'Agencias de viajes'),
(33, 7, 'Operadores turísticos'),
(34, 7, 'Parques temáticos'),
(35, 7, 'Servicios de transporte turístico'),
(36, 8, 'Textil'),
(37, 8, 'Alimentos y bebidas'),
(38, 8, 'Productos químicos'),
(39, 8, 'Electrónica'),
(40, 8, 'Automotriz'),
(41, 9, 'Constructoras'),
(42, 9, 'Inmobiliarias'),
(43, 9, 'Empresas de mantenimiento'),
(44, 9, 'Decoración de interiores'),
(45, 9, 'Proyectos de urbanización'),
(46, 10, 'Bancos'),
(47, 10, 'Casas de cambio'),
(48, 10, 'Aseguradoras'),
(49, 10, 'Consultorías financieras'),
(50, 10, 'Empresas de inversión'),
(51, 11, 'Empresas de mensajería'),
(52, 11, 'Transporte de carga'),
(53, 11, 'Servicios de mudanza'),
(54, 11, 'Logística y distribución'),
(55, 11, 'Transporte público y privado'),
(56, 12, 'Cinemas'),
(57, 12, 'Teatros'),
(58, 12, 'Galerías de arte'),
(59, 12, 'Centros culturales'),
(60, 12, 'Empresas de eventos y espectáculos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_sangre`
--

CREATE TABLE `tipos_sangre` (
`id_tipo_sangre` int(11) NOT NULL,
`tipo_sangre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipos_sangre`
--

INSERT INTO `tipos_sangre` (`id_tipo_sangre`, `tipo_sangre`) VALUES
(1, 'O+'),
(2, 'O-'),
(3, 'A+'),
(4, 'A-'),
(5, 'B+'),
(6, 'B-'),
(7, 'AB+'),
(8, 'AB-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicaciones`
--

CREATE TABLE `ubicaciones` (
`id_ubicacion` int(11) NOT NULL,
`ciudad` varchar(50) DEFAULT NULL,
`sm` varchar(25) DEFAULT NULL,
`mzn` varchar(25) DEFAULT NULL,
`lote` varchar(10) DEFAULT NULL,
`num_interior` varchar(10) DEFAULT NULL,
`num_exterior` varchar(10) DEFAULT NULL,
`calle` varchar(100) DEFAULT NULL,
`postal` varchar(5) DEFAULT NULL,
`referencia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contratos`
--
ALTER TABLE `contratos`
ADD PRIMARY KEY (`id_contrato`);

--
-- Indices de la tabla `edades`
--
ALTER TABLE `edades`
ADD PRIMARY KEY (`id_edad`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
ADD PRIMARY KEY (`id_empresa`),
ADD KEY `id_giro_empresarial` (`id_giro_empresarial`),
ADD KEY `id_ubicacion` (`id_ubicacion`);

--
-- Indices de la tabla `estados_civiles`
--
ALTER TABLE `estados_civiles`
ADD PRIMARY KEY (`id_estado_civil`);

--
-- Indices de la tabla `experiencias`
--
ALTER TABLE `experiencias`
ADD PRIMARY KEY (`id_experiencia`);

--
-- Indices de la tabla `general`
--
ALTER TABLE `general`
ADD PRIMARY KEY (`id_general`),
ADD KEY `id_solicitante` (`id_solicitante`),
ADD KEY `id_empresa` (`id_empresa`),
ADD KEY `id_grado_estudio` (`id_grado_estudio`),
ADD KEY `id_experiencia` (`id_experiencia`),
ADD KEY `id_modalidad` (`id_modalidad`),
ADD KEY `id_edad` (`id_edad`),
ADD KEY `id_jornada_laboral` (`id_jornada_laboral`),
ADD KEY `id_salario` (`id_salario`),
ADD KEY `id_idioma` (`id_idioma`),
ADD KEY `id_contrato` (`id_contrato`);

--
-- Indices de la tabla `giro_empresarial`
--
ALTER TABLE `giro_empresarial`
ADD PRIMARY KEY (`id_giro_empresarial`);

--
-- Indices de la tabla `grado_estudios`
--
ALTER TABLE `grado_estudios`
ADD PRIMARY KEY (`id_grado_estudio`);

--
-- Indices de la tabla `habilidades`
--
ALTER TABLE `habilidades`
ADD PRIMARY KEY (`id_habilidad`);

--
-- Indices de la tabla `idiomas`
--
ALTER TABLE `idiomas`
ADD PRIMARY KEY (`id_idioma`);

--
-- Indices de la tabla `intereses`
--
ALTER TABLE `intereses`
ADD PRIMARY KEY (`id_interes`);

--
-- Indices de la tabla `jornadas_laborales`
--
ALTER TABLE `jornadas_laborales`
ADD PRIMARY KEY (`id_jornada_laboral`);

--
-- Indices de la tabla `modalidades`
--
ALTER TABLE `modalidades`
ADD PRIMARY KEY (`id_modalidad`);

--
-- Indices de la tabla `nacionalidades`
--
ALTER TABLE `nacionalidades`
ADD PRIMARY KEY (`id_nacionalidad`);

--
-- Indices de la tabla `prestaciones`
--
ALTER TABLE `prestaciones`
ADD PRIMARY KEY (`id_prestacion`);

--
-- Indices de la tabla `salarios`
--
ALTER TABLE `salarios`
ADD PRIMARY KEY (`id_salario`);

--
-- Indices de la tabla `solicitantes`
--
ALTER TABLE `solicitantes`
ADD PRIMARY KEY (`id_solicitante`),
ADD UNIQUE KEY `CURP` (`CURP`),
ADD UNIQUE KEY `correo` (`correo`),
ADD KEY `id_nacionalidad` (`id_nacionalidad`),
ADD KEY `id_estado_civil` (`id_estado_civil`),
ADD KEY `id_tipo_sangre` (`id_tipo_sangre`);

--
-- Indices de la tabla `subgiro_empresarial`
--
ALTER TABLE `subgiro_empresarial`
ADD PRIMARY KEY (`id_subgiro`),
ADD KEY `id_giro_empresarial` (`id_giro_empresarial`);

--
-- Indices de la tabla `tipos_sangre`
--
ALTER TABLE `tipos_sangre`
ADD PRIMARY KEY (`id_tipo_sangre`);

--
-- Indices de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
ADD PRIMARY KEY (`id_ubicacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contratos`
--
ALTER TABLE `contratos`
MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `edades`
--
ALTER TABLE `edades`
MODIFY `id_edad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estados_civiles`
--
ALTER TABLE `estados_civiles`
MODIFY `id_estado_civil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `experiencias`
--
ALTER TABLE `experiencias`
MODIFY `id_experiencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `general`
--
ALTER TABLE `general`
MODIFY `id_general` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `giro_empresarial`
--
ALTER TABLE `giro_empresarial`
MODIFY `id_giro_empresarial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `grado_estudios`
--
ALTER TABLE `grado_estudios`
MODIFY `id_grado_estudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `habilidades`
--
ALTER TABLE `habilidades`
MODIFY `id_habilidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `idiomas`
--
ALTER TABLE `idiomas`
MODIFY `id_idioma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `intereses`
--
ALTER TABLE `intereses`
MODIFY `id_interes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `jornadas_laborales`
--
ALTER TABLE `jornadas_laborales`
MODIFY `id_jornada_laboral` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `modalidades`
--
ALTER TABLE `modalidades`
MODIFY `id_modalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `nacionalidades`
--
ALTER TABLE `nacionalidades`
MODIFY `id_nacionalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `prestaciones`
--
ALTER TABLE `prestaciones`
MODIFY `id_prestacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `salarios`
--
ALTER TABLE `salarios`
MODIFY `id_salario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `solicitantes`
--
ALTER TABLE `solicitantes`
MODIFY `id_solicitante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subgiro_empresarial`
--
ALTER TABLE `subgiro_empresarial`
MODIFY `id_subgiro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `tipos_sangre`
--
ALTER TABLE `tipos_sangre`
MODIFY `id_tipo_sangre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
MODIFY `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
ADD CONSTRAINT `empresas_ibfk_1` FOREIGN KEY (`id_giro_empresarial`) REFERENCES `giro_empresarial` (`id_giro_empresarial`),
ADD CONSTRAINT `empresas_ibfk_2` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicaciones` (`id_ubicacion`);

--
-- Filtros para la tabla `general`
--
ALTER TABLE `general`
ADD CONSTRAINT `general_ibfk_1` FOREIGN KEY (`id_solicitante`) REFERENCES `solicitantes` (`id_solicitante`),
ADD CONSTRAINT `general_ibfk_10` FOREIGN KEY (`id_contrato`) REFERENCES `contratos` (`id_contrato`),
ADD CONSTRAINT `general_ibfk_2` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id_empresa`),
ADD CONSTRAINT `general_ibfk_3` FOREIGN KEY (`id_grado_estudio`) REFERENCES `grado_estudios` (`id_grado_estudio`),
ADD CONSTRAINT `general_ibfk_4` FOREIGN KEY (`id_experiencia`) REFERENCES `experiencias` (`id_experiencia`),
ADD CONSTRAINT `general_ibfk_5` FOREIGN KEY (`id_modalidad`) REFERENCES `modalidades` (`id_modalidad`),
ADD CONSTRAINT `general_ibfk_6` FOREIGN KEY (`id_edad`) REFERENCES `edades` (`id_edad`),
ADD CONSTRAINT `general_ibfk_7` FOREIGN KEY (`id_jornada_laboral`) REFERENCES `jornadas_laborales` (`id_jornada_laboral`),
ADD CONSTRAINT `general_ibfk_8` FOREIGN KEY (`id_salario`) REFERENCES `salarios` (`id_salario`),
ADD CONSTRAINT `general_ibfk_9` FOREIGN KEY (`id_idioma`) REFERENCES `idiomas` (`id_idioma`);

--
-- Filtros para la tabla `solicitantes`
--
ALTER TABLE `solicitantes`
ADD CONSTRAINT `solicitantes_ibfk_1` FOREIGN KEY (`id_nacionalidad`) REFERENCES `nacionalidades` (`id_nacionalidad`),
ADD CONSTRAINT `solicitantes_ibfk_2` FOREIGN KEY (`id_estado_civil`) REFERENCES `estados_civiles` (`id_estado_civil`),
ADD CONSTRAINT `solicitantes_ibfk_3` FOREIGN KEY (`id_tipo_sangre`) REFERENCES `tipos_sangre` (`id_tipo_sangre`);

--
-- Filtros para la tabla `subgiro_empresarial`
--
ALTER TABLE `subgiro_empresarial`
ADD CONSTRAINT `subgiro_empresarial_ibfk_1` FOREIGN KEY (`id_giro_empresarial`) REFERENCES `giro_empresarial` (`id_giro_empresarial`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;