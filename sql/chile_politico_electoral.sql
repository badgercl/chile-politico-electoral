/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chile_politico_electoral`
--

-- --------------------------------------------------------

--
-- Table structure for table `circunscripcion`
--

CREATE TABLE IF NOT EXISTS `circunscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `circunscripcion`
--

INSERT INTO `circunscripcion` (`id`, `nombre`) VALUES
(1, '1ª Circunscripción Tarapacá'),
(2, '2ª Circunscripción Antofagasta'),
(3, '3ª Circunscripción Atacama'),
(4, '4ª Circunscripción Coquimbo'),
(5, '5ª Circunscripción Quinta Cordillera'),
(6, '6ª Circunscripción Quinta Cost'),
(7, '7ª Circunscripción Santiago Poniente'),
(8, '8ª Circunscripción Santiago Oriente'),
(9, '9ª Circunscripción O''Higgins'),
(10, '10ª Circunscripción Maule Norte'),
(11, '11ª Circunscripción Maule Sur'),
(12, '12ª Circunscripción Biobío Costa'),
(13, '13ª Circunscripción Biobío Cordillera'),
(14, '14ª Circunscripción Araucanía Norte'),
(15, '15ª Circunscripción Araucanía Sur'),
(16, '16ª Circunscripción Los Ríos'),
(17, '17ª Circunscripción Los Lagos'),
(18, '18ª Circunscripción Aisén'),
(19, '19ª Circunscripción Magallanes');

-- --------------------------------------------------------

--
-- Table structure for table `circunscripcion_region`
--

CREATE TABLE IF NOT EXISTS `circunscripcion_region` (
  `id_region` int(11) NOT NULL,
  `id_circunscripcion` int(11) NOT NULL,
  PRIMARY KEY (`id_circunscripcion`,`id_region`),
  KEY `fk_region_circunscripcion_region_idx` (`id_region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `circunscripcion_region`
--

INSERT INTO `circunscripcion_region` (`id_region`, `id_circunscripcion`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(5, 6),
(6, 9),
(7, 10),
(7, 11),
(8, 12),
(8, 13),
(9, 14),
(9, 15),
(10, 17),
(11, 18),
(12, 19),
(13, 7),
(13, 8),
(14, 16),
(15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comuna`
--

CREATE TABLE IF NOT EXISTS `comuna` (
  `id` int(11) NOT NULL,
  `id_provincia` int(11) NOT NULL,
  `id_distrito` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_provincia_comuna_idx` (`id_provincia`),
  KEY `fk_comuna_distrito_idx` (`id_distrito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comuna`
--

INSERT INTO `comuna` (`id`, `id_provincia`, `id_distrito`, `nombre`) VALUES
(1101, 11, 2, 'Iquique'),
(1107, 11, 2, 'Alto Hospicio'),
(1401, 14, 2, 'Pozo Almonte'),
(1402, 14, 2, 'Camiña'),
(1403, 14, 2, 'Colchane'),
(1404, 14, 2, 'Huara'),
(1405, 14, 2, 'Pica'),
(2101, 21, 4, 'Antofagasta'),
(2102, 21, 4, 'Mejillones'),
(2103, 21, 4, 'Sierra Gorda'),
(2104, 21, 4, 'Taltal'),
(2201, 22, 3, 'Calama'),
(2202, 22, 3, 'Ollagüe'),
(2203, 22, 3, 'San Pedro de Atacama'),
(2301, 23, 3, 'Tocopilla'),
(2302, 23, 3, 'María Elena'),
(3101, 31, 5, 'Copiapó'),
(3102, 31, 6, 'Caldera'),
(3103, 31, 6, 'Tierra Amarilla'),
(3201, 32, 5, 'Chañaral'),
(3202, 32, 5, 'Diego de Almagro'),
(3301, 33, 6, 'Vallenar'),
(3302, 33, 6, 'Alto del Carmen'),
(3303, 33, 6, 'Freirina'),
(3304, 33, 6, 'Huasco'),
(4101, 41, 7, 'La Serena'),
(4102, 41, 8, 'Coquimbo'),
(4103, 41, 7, 'Andacollo'),
(4104, 41, 7, 'La Higuera'),
(4105, 41, 7, 'Paiguano'),
(4106, 41, 7, 'Vicuña'),
(4201, 42, 9, 'Illapel'),
(4202, 42, 9, 'Canela'),
(4203, 42, 9, 'Los Vilos'),
(4204, 42, 9, 'Salamanca'),
(4301, 43, 8, 'Ovalle'),
(4302, 43, 9, 'Combarbalá'),
(4303, 43, 9, 'Monte Patria'),
(4304, 43, 9, 'Punitaqui'),
(4305, 43, 8, 'Río Hurtado'),
(5101, 51, 13, 'Valparaíso'),
(5102, 51, 15, 'Casablanca'),
(5103, 51, 14, 'Concón'),
(5104, 51, 13, 'Juan Fernández'),
(5105, 51, 10, 'Puchuncaví'),
(5107, 51, 10, 'Quintero'),
(5109, 51, 14, 'Viña del Mar'),
(5201, 52, 13, 'Isla de Pascua'),
(5301, 53, 11, 'Los Andes'),
(5302, 53, 11, 'Calle Larga'),
(5303, 53, 11, 'Rinconada'),
(5304, 53, 11, 'San Esteban'),
(5401, 54, 10, 'La Ligua'),
(5402, 54, 10, 'Cabildo'),
(5403, 54, 10, 'Papudo'),
(5404, 54, 10, 'Petorca'),
(5405, 54, 10, 'Zapallar'),
(5501, 55, 10, 'Quillota'),
(5502, 55, 10, 'Calera'),
(5503, 55, 10, 'Hijuelas'),
(5504, 55, 10, 'La Cruz'),
(5506, 55, 10, 'Nogales'),
(5601, 56, 15, 'San Antonio'),
(5602, 56, 15, 'Algarrobo'),
(5603, 56, 15, 'Cartagena'),
(5604, 56, 15, 'El Quisco'),
(5605, 56, 15, 'El Tabo'),
(5606, 56, 15, 'Santo Domingo'),
(5701, 57, 11, 'San Felipe'),
(5702, 57, 11, 'Catemu'),
(5703, 57, 11, 'Llaillay'),
(5704, 57, 11, 'Panquehue'),
(5705, 57, 11, 'Putaendo'),
(5706, 57, 11, 'Santa María'),
(5801, 58, 12, 'Quilpué'),
(5802, 58, 12, 'Limache'),
(5803, 58, 12, 'Olmué'),
(5804, 58, 12, 'Villa Alemana'),
(6101, 61, 32, 'Rancagua'),
(6102, 61, 33, 'Codegua'),
(6103, 61, 33, 'Coinco'),
(6104, 61, 33, 'Coltauco'),
(6105, 61, 33, 'Doñihue'),
(6106, 61, 33, 'Graneros'),
(6107, 61, 34, 'Las Cabras'),
(6108, 61, 33, 'Machalí'),
(6109, 61, 33, 'Malloa'),
(6110, 61, 33, 'Mostazal'),
(6111, 61, 33, 'Olivar'),
(6112, 61, 34, 'Peumo'),
(6113, 61, 34, 'Pichidegua'),
(6114, 61, 33, 'Quinta de Tilcoco'),
(6115, 61, 33, 'Rengo'),
(6116, 61, 33, 'Requínoa'),
(6117, 61, 34, 'San Vicente'),
(6201, 62, 35, 'Pichilemu'),
(6202, 62, 35, 'La Estrella'),
(6203, 62, 35, 'Litueche'),
(6204, 62, 35, 'Marchihue'),
(6205, 62, 35, 'Navidad'),
(6206, 62, 35, 'Paredones'),
(6301, 63, 34, 'San Fernando'),
(6302, 63, 35, 'Chépica'),
(6303, 63, 34, 'Chimbarongo'),
(6304, 63, 35, 'Lolol'),
(6305, 63, 35, 'Nancagua'),
(6306, 63, 35, 'Palmilla'),
(6307, 63, 35, 'Peralillo'),
(6308, 63, 35, 'Placilla'),
(6309, 63, 35, 'Pumanque'),
(6310, 63, 35, 'Santa Cruz'),
(7101, 71, 37, 'Talca'),
(7102, 71, 38, 'Constitución'),
(7103, 71, 38, 'Curepto'),
(7104, 71, 38, 'Empedrado'),
(7105, 71, 38, 'Maule'),
(7106, 71, 38, 'Pelarco'),
(7107, 71, 38, 'Pencahue'),
(7108, 71, 38, 'Río Claro'),
(7109, 71, 38, 'San Clemente'),
(7110, 71, 38, 'San Rafael'),
(7201, 72, 40, 'Cauquenes'),
(7202, 72, 40, 'Chanco'),
(7203, 72, 40, 'Pelluhue'),
(7301, 73, 36, 'Curicó'),
(7302, 73, 36, 'Hualañé'),
(7303, 73, 36, 'Licantén'),
(7304, 73, 36, 'Molina'),
(7305, 73, 36, 'Rauco'),
(7306, 73, 36, 'Romeral'),
(7307, 73, 36, 'Sagrada Familia'),
(7308, 73, 36, 'Teno'),
(7309, 73, 36, 'Vichuquén'),
(7401, 74, 39, 'Linares'),
(7402, 74, 39, 'Colbún'),
(7403, 74, 40, 'Longaví'),
(7404, 74, 40, 'Parral'),
(7405, 74, 40, 'Retiro'),
(7406, 74, 39, 'San Javier'),
(7407, 74, 39, 'Villa Alegre'),
(7408, 74, 39, 'Yerbas Buenas'),
(8101, 81, 44, 'Concepción'),
(8102, 81, 45, 'Coronel'),
(8103, 81, 44, 'Chiguayante'),
(8104, 81, 45, 'Florida'),
(8105, 81, 45, 'Hualqui'),
(8106, 81, 46, 'Lota'),
(8107, 81, 45, 'Penco'),
(8108, 81, 44, 'San Pedro de la Paz'),
(8109, 81, 45, 'Santa Juana'),
(8110, 81, 43, 'Talcahuano'),
(8111, 81, 45, 'Tomé'),
(8112, 81, 43, 'Hualpén'),
(8201, 82, 46, 'Lebu'),
(8202, 82, 46, 'Arauco'),
(8203, 82, 46, 'Cañete'),
(8204, 82, 46, 'Contulmo'),
(8205, 82, 46, 'Curanilahue'),
(8206, 82, 46, 'Los Álamos'),
(8207, 82, 46, 'Tirúa'),
(8301, 83, 47, 'Los Ángeles'),
(8302, 83, 47, 'Antuco'),
(8303, 83, 42, 'Cabrero'),
(8304, 83, 47, 'Laja'),
(8305, 83, 47, 'Mulchén'),
(8306, 83, 47, 'Nacimiento'),
(8307, 83, 47, 'Negrete'),
(8308, 83, 47, 'Quilaco'),
(8309, 83, 47, 'Quilleco'),
(8310, 83, 47, 'San Rosendo'),
(8311, 83, 47, 'Santa Bárbara'),
(8312, 83, 47, 'Tucapel'),
(8313, 83, 42, 'Yumbel'),
(8314, 83, 47, 'Alto Biobío'),
(8401, 84, 41, 'Chillán'),
(8402, 84, 42, 'Bulnes'),
(8403, 84, 42, 'Cobquecura'),
(8404, 84, 42, 'Coelemu'),
(8405, 84, 41, 'Coihueco'),
(8406, 84, 41, 'Chillán Viejo'),
(8407, 84, 41, 'El Carmen'),
(8408, 84, 42, 'Ninhue'),
(8409, 84, 42, 'Ñiquén'),
(8410, 84, 41, 'Pemuco'),
(8411, 84, 41, 'Pinto'),
(8412, 84, 42, 'Portezuelo'),
(8413, 84, 42, 'Quillón'),
(8414, 84, 42, 'Quirihue'),
(8415, 84, 42, 'Ránquil'),
(8416, 84, 42, 'San Carlos'),
(8417, 84, 42, 'San Fabián'),
(8418, 84, 41, 'San Ignacio'),
(8419, 84, 42, 'San Nicolás'),
(8420, 84, 42, 'Treguaco'),
(8421, 84, 41, 'Yungay'),
(9101, 91, 50, 'Temuco'),
(9102, 91, 51, 'Carahue'),
(9103, 91, 52, 'Cunco'),
(9104, 91, 52, 'Curarrehue'),
(9105, 91, 51, 'Freire'),
(9106, 91, 49, 'Galvarino'),
(9107, 91, 52, 'Gorbea'),
(9108, 91, 49, 'Lautaro'),
(9109, 91, 52, 'Loncoche'),
(9110, 91, 49, 'Melipeuco'),
(9111, 91, 51, 'Nueva Imperial'),
(9112, 91, 50, 'Padre las Casas'),
(9113, 91, 49, 'Perquenco'),
(9114, 91, 51, 'Pitrufquén'),
(9115, 91, 52, 'Pucón'),
(9116, 91, 51, 'Saavedra'),
(9117, 91, 51, 'Teodoro Schmidt'),
(9118, 91, 52, 'Toltén'),
(9119, 91, 49, 'Vilcún'),
(9120, 91, 52, 'Villarrica'),
(9121, 91, 51, 'Cholchol'),
(9201, 92, 48, 'Angol'),
(9202, 92, 48, 'Collipulli'),
(9203, 92, 49, 'Curacautín'),
(9204, 92, 48, 'Ercilla'),
(9205, 92, 49, 'Lonquimay'),
(9206, 92, 48, 'Los Sauces'),
(9207, 92, 48, 'Lumaco'),
(9208, 92, 48, 'Purén'),
(9209, 92, 48, 'Renaico'),
(9210, 92, 48, 'Traiguén'),
(9211, 92, 49, 'Victoria'),
(10101, 101, 57, 'Puerto Montt'),
(10102, 101, 57, 'Calbuco'),
(10103, 101, 57, 'Cochamó'),
(10104, 101, 56, 'Fresia'),
(10105, 101, 56, 'Frutillar'),
(10106, 101, 56, 'Los Muermos'),
(10107, 101, 56, 'Llanquihue'),
(10108, 101, 57, 'Maullín'),
(10109, 101, 56, 'Puerto Varas'),
(10201, 102, 58, 'Castro'),
(10202, 102, 58, 'Ancud'),
(10203, 102, 58, 'Chonchi'),
(10204, 102, 58, 'Curaco de Vélez'),
(10205, 102, 58, 'Dalcahue'),
(10206, 102, 58, 'Puqueldón'),
(10207, 102, 58, 'Queilén'),
(10208, 102, 58, 'Quellón'),
(10209, 102, 58, 'Quemchi'),
(10210, 102, 58, 'Quinchao'),
(10301, 103, 55, 'Osorno'),
(10302, 103, 56, 'Puerto Octay'),
(10303, 103, 56, 'Purranque'),
(10304, 103, 56, 'Puyehue'),
(10305, 103, 56, 'Río Negro'),
(10306, 103, 55, 'San Juan de la Costa'),
(10307, 103, 55, 'San Pablo'),
(10401, 104, 58, 'Chaitén'),
(10402, 104, 58, 'Futaleufú'),
(10403, 104, 58, 'Hualaihué'),
(10404, 104, 58, 'Palena'),
(11101, 111, 59, 'Coihaique'),
(11102, 111, 59, 'Lago Verde'),
(11201, 112, 59, 'Aisén'),
(11202, 112, 59, 'Cisnes'),
(11203, 112, 59, 'Guaitecas'),
(11301, 113, 59, 'Cochrane'),
(11302, 113, 59, 'O’Higgins'),
(11303, 113, 59, 'Tortel'),
(11401, 114, 59, 'Chile Chico'),
(11402, 114, 59, 'Río Ibáñez'),
(12101, 121, 60, 'Punta Arenas'),
(12102, 121, 60, 'Laguna Blanca'),
(12103, 121, 60, 'Río Verde'),
(12104, 121, 60, 'San Gregorio'),
(12201, 122, 60, 'Cabo de Hornos (Ex Navarino)'),
(12202, 122, 60, 'Antártica'),
(12301, 123, 60, 'Porvenir'),
(12302, 123, 60, 'Primavera'),
(12303, 123, 60, 'Timaukel'),
(12401, 124, 60, 'Natales'),
(12402, 124, 60, 'Torres del Paine'),
(13101, 131, 22, 'Santiago'),
(13102, 131, 20, 'Cerrillos'),
(13103, 131, 18, 'Cerro Navia'),
(13104, 131, 17, 'Conchalí'),
(13105, 131, 27, 'El Bosque'),
(13106, 131, 20, 'Estación Central'),
(13107, 131, 17, 'Huechuraba'),
(13108, 131, 19, 'Independencia'),
(13109, 131, 27, 'La Cisterna'),
(13110, 131, 26, 'La Florida'),
(13111, 131, 25, 'La Granja'),
(13112, 131, 29, 'La Pintana'),
(13113, 131, 24, 'La Reina'),
(13114, 131, 23, 'Las Condes'),
(13115, 131, 23, 'Lo Barnechea'),
(13116, 131, 28, 'Lo Espejo'),
(13117, 131, 18, 'Lo Prado'),
(13118, 131, 25, 'Macul'),
(13119, 131, 20, 'Maipú'),
(13120, 131, 21, 'Ñuñoa'),
(13121, 131, 28, 'Pedro Aguirre Cerda'),
(13122, 131, 24, 'Peñalolén'),
(13123, 131, 21, 'Providencia'),
(13124, 131, 16, 'Pudahuel'),
(13125, 131, 16, 'Quilicura'),
(13126, 131, 18, 'Quinta Normal'),
(13127, 131, 19, 'Recoleta'),
(13128, 131, 17, 'Renca'),
(13129, 131, 25, 'San Joaquín'),
(13130, 131, 28, 'San Miguel'),
(13131, 131, 27, 'San Ramón'),
(13132, 131, 23, 'Vitacura'),
(13201, 132, 29, 'Puente Alto'),
(13202, 132, 29, 'Pirque'),
(13203, 132, 29, 'San José de Maipo'),
(13301, 133, 16, 'Colina'),
(13302, 133, 16, 'Lampa'),
(13303, 133, 16, 'Tiltil'),
(13401, 134, 30, 'San Bernardo'),
(13402, 134, 30, 'Buin'),
(13403, 134, 30, 'Calera de Tango'),
(13404, 134, 30, 'Paine'),
(13501, 135, 31, 'Melipilla'),
(13502, 135, 31, 'Alhué'),
(13503, 135, 31, 'Curacaví'),
(13504, 135, 31, 'María Pinto'),
(13505, 135, 31, 'San Pedro'),
(13601, 136, 31, 'Talagante'),
(13602, 136, 31, 'El Monte'),
(13603, 136, 31, 'Isla de Maipo'),
(13604, 136, 31, 'Padre Hurtado'),
(13605, 136, 31, 'Peñaflor'),
(14101, 141, 53, 'Valdivia'),
(14102, 141, 53, 'Corral'),
(14103, 141, 53, 'Lanco'),
(14104, 141, 54, 'Los Lagos'),
(14105, 141, 53, 'Máfil'),
(14106, 141, 53, 'Mariquina'),
(14107, 141, 54, 'Paillaco'),
(14108, 141, 54, 'Panguipulli'),
(14201, 142, 54, 'La Unión'),
(14202, 142, 54, 'Futrono'),
(14203, 142, 54, 'Lago Ranco'),
(14204, 142, 54, 'Río Bueno'),
(15101, 151, 1, 'Arica'),
(15102, 151, 1, 'Camarones'),
(15201, 152, 1, 'Putre'),
(15202, 152, 1, 'General Lagos');

-- --------------------------------------------------------

--
-- Table structure for table `distrito`
--

CREATE TABLE IF NOT EXISTS `distrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_circunscripcion` int(11) NOT NULL,
  `num_distrito` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_circunscripcion_distrito_idx` (`id_circunscripcion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `distrito`
--

INSERT INTO `distrito` (`id`, `id_circunscripcion`, `num_distrito`, `nombre`) VALUES
(1, 1, 1, 'Distrito 1'),
(2, 1, 2, 'Distrito 2'),
(3, 2, 3, 'Distrito 3'),
(4, 2, 4, 'Distrito 4'),
(5, 3, 5, 'Distrito 5'),
(6, 3, 6, 'Distrito 6'),
(7, 4, 7, 'Distrito 7'),
(8, 4, 8, 'Distrito 8'),
(9, 4, 9, 'Distrito 9'),
(10, 5, 10, 'Distrito 10'),
(11, 5, 11, 'Distrito 11'),
(12, 5, 12, 'Distrito 12'),
(13, 6, 13, 'Distrito 13'),
(14, 6, 14, 'Distrito 14'),
(15, 6, 15, 'Distrito 15'),
(16, 7, 16, 'Distrito 16'),
(17, 7, 17, 'Distrito 17'),
(18, 7, 18, 'Distrito 18'),
(19, 7, 19, 'Distrito 19'),
(20, 7, 20, 'Distrito 20'),
(21, 7, 22, 'Distrito 22'),
(22, 7, 30, 'Distrito 30'),
(23, 7, 31, 'Distrito 31'),
(24, 8, 21, 'Distrito 21'),
(25, 8, 23, 'Distrito 23'),
(26, 8, 24, 'Distrito 24'),
(27, 8, 25, 'Distrito 25'),
(28, 8, 26, 'Distrito 26'),
(29, 8, 27, 'Distrito 27'),
(30, 8, 28, 'Distrito 28'),
(31, 8, 29, 'Distrito 29'),
(32, 9, 32, 'Distrito 32'),
(33, 9, 33, 'Distrito 33'),
(34, 9, 34, 'Distrito 34'),
(35, 9, 35, 'Distrito 35'),
(36, 10, 36, 'Distrito 36'),
(37, 10, 37, 'Distrito 37'),
(38, 10, 38, 'Distrito 38'),
(39, 11, 39, 'Distrito 39'),
(40, 11, 40, 'Distrito 40'),
(41, 12, 42, 'Distrito 42'),
(42, 12, 43, 'Distrito 43'),
(43, 12, 44, 'Distrito 44'),
(44, 12, 45, 'Distrito 45'),
(45, 13, 41, 'Distrito 41'),
(46, 13, 46, 'Distrito 46'),
(47, 13, 47, 'Distrito 47'),
(48, 14, 48, 'Distrito 48'),
(49, 14, 49, 'Distrito 49'),
(50, 15, 50, 'Distrito 50'),
(51, 15, 51, 'Distrito 51'),
(52, 15, 52, 'Distrito 52'),
(53, 16, 53, 'Distrito 53'),
(54, 16, 54, 'Distrito 54'),
(55, 17, 55, 'Distrito 55'),
(56, 17, 56, 'Distrito 56'),
(57, 17, 57, 'Distrito 57'),
(58, 17, 58, 'Distrito 58'),
(59, 18, 59, 'Distrito 59'),
(60, 19, 60, 'Distrito 60');

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE IF NOT EXISTS `provincia` (
  `id` int(11) NOT NULL,
  `id_region` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_region_provincia_idx` (`id_region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provincia`
--

INSERT INTO `provincia` (`id`, `id_region`, `nombre`) VALUES
(11, 1, 'Iquique'),
(14, 1, 'Tamarugal'),
(21, 2, 'Antofagasta'),
(22, 2, 'El Loa'),
(23, 2, 'Tocopilla'),
(31, 3, 'Copiapó'),
(32, 3, 'Chañaral'),
(33, 3, 'Huasco'),
(41, 4, 'Elqui'),
(42, 4, 'Choapa'),
(43, 4, 'Limarí'),
(51, 5, 'Valparaíso'),
(52, 5, 'Isla de Pascua'),
(53, 5, 'Los Andes'),
(54, 5, 'Petorca'),
(55, 5, 'Quillota'),
(56, 5, 'San Antonio'),
(57, 5, 'San Felipe de Aconcagua'),
(58, 5, 'Marga Marga'),
(61, 6, 'Cachapoal'),
(62, 6, 'Cardenal Caro'),
(63, 6, 'Colchagua'),
(71, 7, 'Talca'),
(72, 7, 'Cauquenes'),
(73, 7, 'Curicó'),
(74, 7, 'Linares'),
(81, 8, 'Concepción'),
(82, 8, 'Arauco'),
(83, 8, 'Biobío'),
(84, 8, 'Ñuble'),
(91, 9, 'Cautín'),
(92, 9, 'Malleco'),
(101, 10, 'Llanquihue'),
(102, 10, 'Chiloé'),
(103, 10, 'Osorno'),
(104, 10, 'Palena'),
(111, 11, 'Coihaique'),
(112, 11, 'Aisén'),
(113, 11, 'Capitán Prat'),
(114, 11, 'General Carrera'),
(121, 12, 'Magallanes'),
(122, 12, 'Antártica Chilena'),
(123, 12, 'Tierra del Fuego'),
(124, 12, 'Última Esperanza'),
(131, 13, 'Santiago'),
(132, 13, 'Cordillera'),
(133, 13, 'Chacabuco'),
(134, 13, 'Maipo'),
(135, 13, 'Melipilla'),
(136, 13, 'Talagante'),
(141, 14, 'Valdivia'),
(142, 14, 'Ranco'),
(151, 15, 'Arica'),
(152, 15, 'Parinacota');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `id` int(11) NOT NULL COMMENT '	',
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `nombre`) VALUES
(1, 'Región de Tarapacá'),
(2, 'Región de Antofagasta'),
(3, 'Región de Atacama'),
(4, 'Región de Coquimbo'),
(5, 'Valparaíso'),
(6, 'Región del Libertador Gral. Bernardo O’Higgins'),
(7, 'Región del Maule'),
(8, 'Región del Biobío'),
(9, 'Región de la Araucanía'),
(10, 'Región de Los Lagos'),
(11, 'Región Aisén del Gral. Carlos Ibáñez del Campo'),
(12, 'Región de Magallanes y de la Antártica Chilena'),
(13, 'Región Metropolitana de Santiago'),
(14, 'Región de Los Ríos'),
(15, 'Región de Arica y Parinacota');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `circunscripcion_region`
--
ALTER TABLE `circunscripcion_region`
  ADD CONSTRAINT `fk_circunscripcion_circunscripcion_region` FOREIGN KEY (`id_circunscripcion`) REFERENCES `circunscripcion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_region_circunscripcion_region` FOREIGN KEY (`id_region`) REFERENCES `region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `comuna`
--
ALTER TABLE `comuna`
  ADD CONSTRAINT `fk_provincia_comuna` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comuna_distrito` FOREIGN KEY (`id_distrito`) REFERENCES `distrito` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `distrito`
--
ALTER TABLE `distrito`
  ADD CONSTRAINT `fk_circunscripcion_distrito` FOREIGN KEY (`id_circunscripcion`) REFERENCES `circunscripcion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `pk_region_provincia` FOREIGN KEY (`id_region`) REFERENCES `region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
