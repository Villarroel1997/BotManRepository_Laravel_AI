-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2018 a las 05:11:27
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3
-- Puedes buscar mas información en "PildorasInformaticas" -> Página web de la base de datos
--

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Codigo_Cliente` varchar(4) NOT NULL DEFAULT '',
  `Empresa` varchar(25) DEFAULT NULL,
  `Direccion` varchar(19) DEFAULT NULL,
  `Poblacion` varchar(9) DEFAULT NULL,
  `Telefono` int(9) DEFAULT NULL,
  `Responsable` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Codigo_Cliente`, `Empresa`, `Direccion`, `Poblacion`, `Telefono`, `Responsable`) VALUES
('CT01', 'BELTRÁN E HIJOS', 'LAS FUENTES 78', 'MADRID', 914456435, 'ANGEL MARTÍNEZ'),
('CT02', 'LA MODERNA', 'LA PALOMA 123', 'OVIEDO', 985323434, 'JUAN GARCÍA'),
('CT03', 'EL ESPAÑOLITO', 'MOTORES 34', 'BARCELONA', 934565343, 'ANA FERNÁNDEZ'),
('CT04', 'EXPORTASA', 'VALLECAS 34', 'MADRID', 913452378, 'ELVIRA GÓMEZ'),
('CT06', 'CONFECCIONES AMPARO', 'LOS MOROS 23', 'GIJÓN', 985754332, 'LUÍS ÁLVAREZ'),
('CT07', 'LA CASA DEL JUGUETE', 'AMÉRICA 45', 'MADRID', 912649987, 'ELÍAS PÉREZ'),
('CT08', 'JUGUETERÍA SUÁREZ', 'PARIS 123', 'BARCELONA', 933457866, 'JUAN GARCÍA'),
('CT09', 'ALMACÉN POPULAR', 'LAS FUENTES 124', 'BILBAO', 942347127, 'JOSÉ ÁLVAREZ'),
('CT10', 'FERETERÍA EL CLAVO', 'PASEO DE ÁLAMOS 78', 'MADRID', 914354866, 'MANUEL MENÉNDEZ'),
('CT11', 'JUGUETES MARTÍNEZ', 'VIA LAYETANA 245', 'BARCELONA', 936628554, 'FRANCISCO CUEVAS'),
('CT12', 'FERNÁNDEZ SL', 'PASEO DEL MAR 45', 'SANTANDER', 942049586, 'ELISA COLLADO'),
('CT13', 'CONFECCIONES ARTÍMEZ', 'GENERAL PERÓN 45', 'A CORUÑA', 981345239, 'ESTEBAN PASCUAL'),
('CT14', 'DEPORTES GARCÍA', 'GUZMÁN EL BUENO 45', 'MADRID', 913299475, 'ANA JIMÉNEZ'),
('CT15', 'EXCLUSIVAS FERNÁNDEZ', 'LLOBREGAT 250', 'BARCELONA', 939558365, 'LUISA FERNÁNDEZ'),
('CT16', 'DEPORTES MORÁN', 'AUTONOMÍA 45', 'LUGO', 982986944, 'JOSÉ MANZANO'),
('CT17', 'BAZAR FRANCISCO', 'CARMEN 45', 'ZAMORA', 980495288, 'CARLOS BELTRÁN'),
('CT18', 'JUGUETES LA SONRISA', 'LA BAÑEZA 67', 'LEÓN', 987945368, 'FAUSTINO PÉREZ'),
('CT19', 'CONFECCIONES GALÁN', 'FUENCARRAL 78', 'MADRID', 913859234, 'JUAN GARCÍA'),
('CT20', 'LA CURTIDORA', 'OLIVARES 3', 'MÁLAGA', 953756259, 'MARÍA GÓMEZ'),
('CT21', 'LÍNEA JOVEN', 'SIERPES 78', 'SEVILLA', 953452567, 'ASUNCIÓN SALADO'),
('CT22', 'BAZAR EL BARAT', 'DIAGONAL 56', 'BARCELONA', 936692866, 'ELISA DAPENA'),
('CT23', 'EL PALACIO DE LA MODA', 'ORTEGA Y GASSET 129', 'MADRID', 927785235, 'LAURA CARRASCO'),
('CT24', 'SÁEZ Y CÍA', 'INFANTA MERCEDS 23', 'SEVILLA', 954869234, 'MANUEL GUERRA'),
('CT25', 'DEPORTES EL MADRILEÑO', 'CASTILLA 345', 'ZARAGOZA', 976388934, 'CARLOS GONZÁLEZ'),
('CT26', 'FERRETERÍA LA ESCOBA', 'ORENSE 7', 'MADRID', 918459346, 'JOSÉ GARCÍA'),
('CT27', 'JUGUETES EL BARATO', 'VÍA AUGUSTA 245', 'BARCELONA', 933486984, 'ELVIRA IGLESIAS'),
('CT28', 'CONFECCIONES HERMINIA', 'CORRIDA 345', 'GIJÓN', 985597315, 'ABEL GONZÁLEZ'),
('CT30', 'BAZAR EL ARGENTINO', 'ATOCHA 55', 'MADRID', 912495973, 'ADRIÁN ÁLVAREZ'),
('CT31', 'LA TIENDA ELEGANTE', 'EL COMENDADOR 67', 'ZARAGOZA', 975694035, 'JOSÉ PASCUAL'),
('CT32', 'DEPORTES NAUTICOS GARCÍA', 'JUAN FERNÁNDEZ 89', 'ÁVILA', 920268648, 'JUAN CONRADO'),
('CT33', 'CONFECCIONES RUIZ', 'LLOBREGAT 345', 'BARCELONA', 934587615, 'CARLOS SANZ'),
('CT34', 'BAZAR LA FARAONA', 'CASTILLA Y LEÓN 34', 'MADRID', 915483627, 'ANGEL SANTAMARÍA'),
('CT35', 'FERRETERÍA EL MARTILLO', 'CASTELLANOS 205', 'SALAMANCA', 923548965, 'JOAQUÍN FERNANDEZ'),
('CT36', 'JUGUETES EDUCATIVOS SANZ', 'ORENSE 89', 'MADRID', 916872354, 'PEDRO IGLESIAS'),
('CT37', 'ALMACENES FERNANDEZ', 'ANTÓN 67', 'TERUEL', 978564025, 'MARIA ARDANZA'),
('CT38', 'CONFECCIONES MÓNICA', 'MOTORES 67', 'BARCELONA', 935681245, 'PEDRO SERRANO'),
('CT39', 'FERRETERÍA LIMA', 'VALLECAS 45', 'MADRID', 913532785, 'LUIS GARCÍA'),
('CT40', 'DEPORTES EL BRASILEÑO', 'ABEL MARTÍNEZ 67', 'SALAMANCA', 921548762, 'CARLOS GÓMEZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Numero_Pedido` int(4) NOT NULL DEFAULT '0',
  `Codigo_Cliente` varchar(4) DEFAULT NULL,
  `Fecha_Pedido` varchar(10) DEFAULT NULL,
  `Forma_Pago` varchar(8) DEFAULT NULL,
  `Descuento` varchar(4) DEFAULT NULL,
  `Enviado` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`Numero_Pedido`, `Codigo_Cliente`, `Fecha_Pedido`, `Forma_Pago`, `Descuento`, `Enviado`) VALUES
(1, 'CT01', '11/03/2000', 'CONTADO', '0,02', 'VERDADERO'),
(3, 'CT23', '18/03/2000', 'APLAZADO', '0,06', 'FALSO'),
(5, 'CT25', '31/03/2000', 'CONTADO', '0,09', 'FALSO'),
(7, 'CT12', '12/04/2000', 'CONTADO', '0,07', 'FALSO'),
(8, 'CT01', '15/04/2000', 'TARJETA', '0,02', 'VERDADERO'),
(9, 'CT21', '21/04/2000', 'CONTADO', '0,04', 'FALSO'),
(11, 'CT04', '01/05/2001', 'CONTADO', '0,08', 'VERDADERO'),
(12, 'CT06', '19/05/2001', 'CONTADO', '0,09', 'VERDADERO'),
(13, 'CT13', '30/04/2000', 'APLAZADO', '0,03', 'FALSO'),
(16, 'CT25', '11/05/2001', 'CONTADO', '0,12', 'FALSO'),
(19, 'CT10', '22/05/2002', 'CONTADO', '0,07', 'VERDADERO'),
(21, 'CT16', '28/05/2001', 'CONTADO', '0,03', 'FALSO'),
(22, 'CT07', '31/05/2000', 'TARJETA', '0,05', 'VERDADERO'),
(25, 'CT18', '02/06/2000', 'CONTADO', '0,06', 'FALSO'),
(26, 'CT09', '04/06/2001', 'APLAZADO', '0,07', 'VERDADERO'),
(27, 'CT34', '06/06/2000', 'CONTADO', '0,04', 'FALSO'),
(28, 'CT28', '08/06/2000', 'APLAZADO', '0,08', 'FALSO'),
(29, 'CT30', '02/04/2001', 'TARJETA', '0,06', 'FALSO'),
(30, 'CT02', '15/08/2000', 'CONTADO', '0,06', 'VERDADERO'),
(31, 'CT30', '08/06/2000', 'TARJETA', '0,05', 'VERDADERO'),
(32, 'CT14', '20/06/2001', 'APLAZADO', '0,06', 'FALSO'),
(34, 'CT26', '23/06/2002', 'TARJETA', '0,05', 'FALSO'),
(35, 'CT26', '30/06/2001', 'CONTADO', '0,06', 'FALSO'),
(37, 'CT24', '02/07/2001', 'TARJETA', '0,03', 'VERDADERO'),
(39, 'CT20', '08/07/2001', 'TARJETA', '0,06', 'VERDADERO'),
(40, 'CT04', '12/07/2002', 'CONTADO', '0,12', 'FALSO'),
(42, 'CT34', '15/07/2002', 'APLAZADO', '0,07', 'VERDADERO'),
(43, 'CT09', '18/07/2001', 'CONTADO', '0,07', 'FALSO'),
(44, 'CT34', '20/07/2002', 'APLAZADO', '0,04', 'FALSO'),
(45, 'CT30', '22/07/2002', 'TARJETA', '0,07', 'FALSO'),
(46, 'CT31', '25/07/2002', 'CONTADO', '0,06', 'FALSO'),
(47, 'CT34', '31/07/2000', 'APLAZADO', '0,08', 'FALSO'),
(48, 'CT18', '30/08/2002', 'CONTADO', '0,03', 'FALSO'),
(49, 'CT28', '02/09/2002', 'CONTADO', '0,03', 'FALSO'),
(50, 'CT09', '05/09/2002', 'APLAZADO', '0,08', 'FALSO'),
(51, 'CT09', '05/09/2002', 'CONTADO', '0,05', 'VERDADERO'),
(63, 'CT28', '10/09/2000', 'CONTADO', '0,09', 'FALSO'),
(72, 'CT01', '18/08/2002', 'CONTADO', '0,05', 'VERDADERO'),
(73, 'CT01', '02/08/2001', 'CONTADO', '0,07', 'FALSO'),
(74, 'CT01', '17/09/2002', 'APLAZADO', '0,08', 'FALSO'),
(75, 'CT01', '30/09/2002', 'TARJETA', '0,12', 'FALSO'),
(76, 'CT01', '19/10/2002', 'CONTADO', '0,04', 'VERDADERO'),
(77, 'CT01', '28/10/2000', 'CONTADO', '0,05', 'FALSO'),
(79, 'CT34', '12/12/2000', 'CONTADO', '0,05', 'FALSO'),
(85, 'CT04', '23/12/2002', 'TARJETA', '0,04', 'FALSO'),
(86, 'CT09', '24/12/2001', 'APLAZADO', '0,03', 'FALSO'),
(98, 'CT01', '27/12/2001', 'CONTADO', '0,08', 'VERDADERO'),
(102, 'CT06', '12/01/2001', 'CONTADO', '0,07', 'VERDADERO'),
(103, 'CT02', '24/01/2001', 'CONTADO', '0,04', 'FALSO'),
(105, 'CT30', '01/01/2001', 'APLAZADO', '0,09', 'FALSO'),
(5005, 'CT30', '10/08/2002', 'TARJETA', '0,00', 'VERDADERO'),
(5050, 'CT30', '27/03/2002', 'TARJETA', '0,00', 'VERDADERO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Codigo_Articulo` varchar(4) NOT NULL DEFAULT '',
  `Seccion` varchar(11) DEFAULT NULL,
  `Nombre_Articulo` varchar(19) DEFAULT NULL,
  `Precio` varchar(10) DEFAULT NULL,
  `Fecha` varchar(10) DEFAULT NULL,
  `Importado` varchar(9) DEFAULT NULL,
  `Pais_Origen` varchar(9) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Codigo_Articulo`, `Seccion`, `Nombre_Articulo`, `Precio`, `Fecha`, `Importado`, `Pais_Origen`, `stock`) VALUES
('AR01', 'FERRETERÍA', 'DESTORNILLADOR', '6,63', '22/10/2000', 'FALSO', 'ESPAÑA', 12),
('AR02', 'CONFECCIÓN', 'TRAJE CABALLERO', '284,58', '11/03/2002', 'VERDADERO', 'ITALIA', 24),
('AR03', 'JUGUETERÍA', 'COCHE TELEDIRIGIDO', '159,45', '26/05/2002', 'VERDADERO', 'MARRUECOS', 23),
('AR04', 'DEPORTES', 'RAQUETA TENIS', '93,47', '20/03/2000', 'VERDADERO', 'USA', 20),
('AR06', 'DEPORTES', 'MANCUERNAS', '60,00', '13/09/2000', 'VERDADERO', 'USA', 12),
('AR07', 'CONFECCIÓN', 'SERRUCHO', '30,20', '23/03/2001', 'VERDADERO', 'FRANCIA', 2),
('AR08', 'JUGUETERÍA', 'CORREPASILLOS', '103,34', '11/04/2000', 'VERDADERO', 'JAPÓN', 10),
('AR09', 'CONFECCIÓN', 'PANTALÓN SEÑORA', '174,23', '10/01/2000', 'VERDADERO', 'MARRUECOS', 2),
('AR10', 'JUGUETERÍA', 'CONSOLA VIDEO', '442,54', '24/09/2002', 'VERDADERO', 'USA', 10),
('AR11', 'CERÁMICA', 'TUBOS', '168,43', '04/02/2000', 'VERDADERO', 'CHINA', 9),
('AR12', 'FERRETERÍA', 'LLAVE INGLESA', '24,40', '23/05/2001', 'VERDADERO', 'USA', 42),
('AR13', 'CONFECCIÓN', 'CAMISA CABALLERO', '67,13', '11/08/2002', 'FALSO', 'ESPAÑA', 12),
('AR14', 'JUGUETERÍA', 'TREN ELÉCTRICO', '1.505,38', '03/07/2001', 'VERDADERO', 'JAPÓN', 24),
('AR15', 'CERÁMICA', 'PLATO DECORATIVO', '54,09', '07/06/2000', 'VERDADERO', 'CHINA', 32),
('AR16', 'FERRETERÍA', 'ALICATES', '6,74', '17/04/2000', 'VERDADERO', 'ITALIA', 7),
('AR17', 'JUGUETERÍA', 'MUÑECA ANDADORA', '105,06', '04/01/2001', 'FALSO', 'ESPAÑA', 12),
('AR18', 'DEPORTES', 'PISTOLA OLÍMPICA', '46,73', '02/02/2001', 'VERDADERO', 'SUECIA', 32),
('AR19', 'CONFECCIÓN', 'BLUSA SRA.', '101,06', '18/03/2000', 'VERDADERO', 'CHINA', 97),
('AR20', 'CERÁMICA', 'JUEGO DE TE', '43,27', '15/01/2001', 'VERDADERO', 'CHINA', 46),
('AR21', 'CERÁMICA', 'CENICERO', '19,75', '02/07/2001', 'VERDADERO', 'JAPÓN', 74),
('AR22', 'FERRETERÍA', 'MARTILLO', '11,40', '04/09/2001', 'FALSO', 'ESPAÑA', 34),
('AR23', 'CONFECCIÓN', 'CAZADORA PIEL', '522,69', '10/07/2001', 'VERDADERO', 'ITALIA', 25),
('AR24', 'DEPORTES', 'BALÓN RUGBY', '111,64', '11/11/2000', 'VERDADERO', 'USA', 1),
('AR25', 'DEPORTES', 'BALÓN BALONCESTO', '75,27', '25/06/2001', 'VERDADERO', 'JAPÓN', 51),
('AR26', 'JUGUETERÍA', 'FUERTE DE SOLDADOS', '143,70', '25/11/2000', 'VERDADERO', 'JAPÓN', 23),
('AR27', 'CONFECCIÓN', 'ABRIGO CABALLERO', '500.000,00', '05/04/2002', 'VERDADERO', 'ITALIA', 2),
('AR28', 'DEPORTES', 'BALÓN FÚTBOL', '43,91', '04/07/2002', 'FALSO', 'ESPAÑA', 6),
('AR29', 'CONFECCIÓN', 'ABRIGO SRA', '360,07', '03/05/2001', 'VERDADERO', 'MARRUECOS', 7),
('AR30', 'FERRETERÍA', 'DESTORNILLADOR', '9,06', '20/02/2002', 'VERDADERO', 'FRANCIA', 9),
('AR31', 'JUGUETERÍA', 'PISTOLA CON SONIDOS', '57,25', '15/04/2001', 'FALSO', 'ESPAÑA', 10),
('AR32', 'DEPORTES', 'CRONÓMETRO', '439,18', '03/01/2002', 'VERDADERO', 'USA', 14),
('AR33', 'CERÁMICA', 'MACETA', '29,04', '23/02/2000', 'FALSO', 'ESPAÑA', 25),
('AR34', 'OFICINA', 'PIE DE LÁMPARA', '39,76', '27/05/2001', 'VERDADERO', 'TURQUÍA', 26),
('AR35', 'FERRETERÍA', 'LIMA GRANDE', '22,07', '10/08/2002', 'FALSO', 'ESPAÑA', 43),
('AR36', 'FERRETERÍA', 'JUEGO DE BROCAS', '15,10', '04/07/2002', 'VERDADERO', 'TAIWÁN', 15),
('AR37', 'CONFECCIÓN', 'CINTURÓN DE PIEL', '4,33', '12/05/2002', 'FALSO', 'ESPAÑA', 52),
('AR38', 'DEPORTES', 'CAÑA DE PESCA', '270,00', '14/02/2000', 'VERDADERO', 'USA', 16),
('AR39', 'CERÁMICA', 'JARRA CHINA', '127,77', '02/09/2002', 'VERDADERO', 'CHINA', 17),
('AR40', 'DEPORTES', 'BOTA ALPINISMO', '144,00', '05/05/2002', 'FALSO', 'ESPAÑA', 27),
('AR41', 'DEPORTES', 'PALAS DE PING PONG', '21,60', '02/02/2002', 'FALSO', 'ESPAÑA', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_pedidos`
--

CREATE TABLE `productos_pedidos` (
  `Numero_Pedido` int(2) NOT NULL DEFAULT '0',
  `Codigo_Articulo` varchar(4) NOT NULL DEFAULT '',
  `Unidades` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos_pedidos`
--

INSERT INTO `productos_pedidos` (`Numero_Pedido`, `Codigo_Articulo`, `Unidades`) VALUES
(1, 'AR01', 11),
(3, 'AR02', 20),
(8, 'AR02', 6),
(1, 'AR04', 10),
(5, 'AR04', 16),
(7, 'AR06', 16),
(8, 'AR06', 5),
(9, 'AR06', 14),
(8, 'AR07', 6),
(11, 'AR08', 1),
(12, 'AR08', 12),
(13, 'AR08', 8),
(8, 'AR10', 2),
(16, 'AR10', 17),
(8, 'AR12', 30),
(19, 'AR13', 4),
(1, 'AR15', 4),
(8, 'AR15', 15),
(21, 'AR15', 11),
(22, 'AR17', 6),
(8, 'AR18', 20),
(8, 'AR19', 18),
(25, 'AR19', 12),
(26, 'AR19', 12),
(27, 'AR21', 11),
(28, 'AR21', 22),
(1, 'AR22', 18),
(3, 'AR22', 3),
(29, 'AR22', 12),
(34, 'AR22', 7),
(35, 'AR22', 9),
(44, 'AR22', 22),
(30, 'AR23', 33),
(31, 'AR24', 31),
(8, 'AR25', 5),
(32, 'AR25', 11),
(22, 'AR26', 4),
(34, 'AR27', 3),
(35, 'AR27', 12),
(37, 'AR27', 11),
(22, 'AR28', 21),
(39, 'AR29', 22),
(40, 'AR30', 1),
(42, 'AR31', 21),
(8, 'AR32', 15),
(43, 'AR32', 3),
(8, 'AR33', 18),
(8, 'AR34', 5),
(8, 'AR35', 24),
(45, 'AR36', 21),
(46, 'AR37', 8),
(47, 'AR38', 12),
(48, 'AR38', 13),
(49, 'AR39', 13),
(50, 'AR39', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Codigo_Cliente`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`Numero_Pedido`),
  ADD KEY `Codigo_Cliente` (`Codigo_Cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Codigo_Articulo`);

--
-- Indices de la tabla `productos_pedidos`
--
ALTER TABLE `productos_pedidos`
  ADD PRIMARY KEY (`Codigo_Articulo`,`Numero_Pedido`),
  ADD KEY `Numero_Pedido` (`Numero_Pedido`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`Codigo_Cliente`) REFERENCES `clientes` (`Codigo_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos_pedidos`
--
ALTER TABLE `productos_pedidos`
  ADD CONSTRAINT `productos_pedidos_ibfk_1` FOREIGN KEY (`Numero_Pedido`) REFERENCES `pedidos` (`Numero_Pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productos_pedidos_ibfk_2` FOREIGN KEY (`Codigo_Articulo`) REFERENCES `productos` (`Codigo_Articulo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
