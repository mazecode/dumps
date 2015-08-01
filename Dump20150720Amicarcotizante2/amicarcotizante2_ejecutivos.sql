-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: amicarcotizante2
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ejecutivos`
--

DROP TABLE IF EXISTS `ejecutivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejecutivos` (
  `idEjecutivo` int(11) NOT NULL AUTO_INCREMENT,
  `rutEjecutivo` varchar(12) DEFAULT NULL,
  `nombreEjecutivo` varchar(100) DEFAULT NULL,
  `correoEjecutivo` varchar(45) DEFAULT NULL,
  `locales_idLocal1` int(11) NOT NULL,
  `fechaIngreso` timestamp NULL DEFAULT NULL,
  `fechaModificacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEjecutivo`),
  KEY `fk_ejecutivos_locales1_idx` (`locales_idLocal1`),
  CONSTRAINT `fk_ejecutivos_locales1` FOREIGN KEY (`locales_idLocal1`) REFERENCES `locales` (`idLocal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1776 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejecutivos`
--

LOCK TABLES `ejecutivos` WRITE;
/*!40000 ALTER TABLE `ejecutivos` DISABLE KEYS */;
INSERT INTO `ejecutivos` VALUES (1607,'89148693','HENRIQUEZ BUGUEÑO CHRISTIAN','christian.henriquez@amicar.cl',1899,'2015-04-23 05:37:29',NULL),(1608,'97855315','ROJAS QUINTEROS CLAUDIO','claudio.rojas@amicar.cl',1900,'2015-04-23 05:39:36',NULL),(1609,'98992693','GUTIERREZ MARDONES ELADIO','Eladio.gutierrez@amicar.cl',1901,'2015-04-23 05:39:39',NULL),(1610,'100397390','DOMINGUEZ MORIS CAROLINA','carolina.dominguez@amicar.cl',1902,'2015-04-23 05:39:41',NULL),(1611,'101282775','CONTRERAS AEDO GUILLERMO','guillermo.contreras@amicar.cl',1903,'2015-04-23 05:39:43',NULL),(1612,'103575621','LAPORTA RODRIGO','rodrigo.laporta@amicar.cl',1904,'2015-04-23 05:39:45',NULL),(1613,'103990874','BASTÍAS ARANCIBIA IVOR','ivor.bastias@amicar.cl',1905,'2015-04-23 05:39:47',NULL),(1614,'104015506','SEPULVEDA LOPEZ CESAR','cesar.sepulveda@amicar.cl',1906,'2015-04-23 05:40:09',NULL),(1615,'105287739','HORMAZABAL PADILLA CARLOS ESTEBAN','carlos.hormazabal@amicar.cl',1907,'2015-04-23 05:40:11',NULL),(1616,'106014817','ALGUERNO MUÑOZ CLAUDIA P.','claudia.alguerno@amicar.cl',1908,'2015-04-23 05:40:12',NULL),(1617,'106472777','SILVA PEÑA YASNA','yasna.silva@amicar.cl',1909,'2015-04-23 05:40:23',NULL),(1618,'107690859','TOLEDO GONZALEZ CARLOS','carlos.toledo@amicar.cl',1910,'2015-04-23 05:40:23',NULL),(1619,'115491512','ALEGRÍA MEDINA CLAUDIA','claudia.alegria@amicar.cl',1911,'2015-04-23 05:40:24',NULL),(1620,'116354632','DOMINGUEZ GOMEZ MIGUEL','miguel.dominguez@amicar.cl',1912,'2015-04-23 05:40:24',NULL),(1621,'118813049','VENTURELLI GONZALEZ CARLOS','carlos.venturelli@amicar.cl',1913,'2015-04-23 05:40:24',NULL),(1622,'119763223','SILVA PEREZ OSVALDO','osvaldo.silva@amicar.cl',1914,'2015-04-23 05:40:24',NULL),(1623,'120131184','ACEVEDO GUTIERREZ EDILMA','edilma.acevedo@amicar.cl',1915,'2015-04-23 05:40:24',NULL),(1624,'120223666','ABARCA LATORRE GLADYS','gladys.abarca@amicar.cl',1916,'2015-04-23 05:40:24',NULL),(1625,'121811359','VARELA MONTERO EDUARDO','eduardo.varela@amicar.cl',1917,'2015-04-23 05:40:24',NULL),(1626,'123366565','HUAIQUIMILLA CALFIL LUIS','luis.huaiquimilla@amicar.cl',1918,'2015-04-23 05:40:24',NULL),(1627,'123640330','ALVAREZ ARAVENA GONZALO CLAUDIO','gonzalo.alvarez@amicar.cl',1919,'2015-04-23 05:40:24',NULL),(1628,'124699770','GUTIERREZ ARMIJO CRISTIAN ALBERTO','cristian.gutierrez@amicar.cl',1919,'2015-04-23 05:40:24',NULL),(1629,'124944139','HERRERA VILLARROEL JORGE','jorge.herrera@amicar,cl',1920,'2015-04-23 05:40:24',NULL),(1630,'125151663','MERINO FUENTES JORGE','jmerino@vegaartus.cl',1921,'2015-04-23 05:40:24',NULL),(1631,'125205461','INOSTROZA OCAMPO PAULA','paula.inostroza@amicar.cl',1922,'2015-04-23 05:40:24',NULL),(1632,'125892450','TEJOS LETELIER ANA MARIA','ana.tejos@amicar.cl',1923,'2015-04-23 05:40:24',NULL),(1633,'126510659','RIQUELME RIQUELME ALEJANDRO','alejandro.riquelme@amicar.cl',1924,'2015-04-23 05:40:24',NULL),(1634,'127034117','MUÑOZ NEIRA MACARENA','macarena.munoz@amicar.cl',1925,'2015-04-23 05:40:24',NULL),(1635,'128773096','BRAVO CANCEC EDUARDO','eduardo.bravo@amicar.cl',1926,'2015-04-23 05:40:24',NULL),(1636,'129533579','LOPEZ SALAS MYRIAM BENECIA','myriam.lopez@amicar.cl',1902,'2015-04-23 05:40:24',NULL),(1637,'130261469','ACUÑA BARROS PEDRO','pedro.acuña@amicar.cl',1906,'2015-04-23 05:40:24',NULL),(1638,'131867735','SAN MARTIN CASTRO ALEJANDRA','alejandra.sanmartin@amicar.cl',1927,'2015-04-23 05:40:24',NULL),(1639,'132165440','ITE VEGA FRANCISCO JAVIER','francisco.ite@amicar.cl',1928,'2015-04-23 05:40:24',NULL),(1640,'132450153','MARCHANT QUEZADA CAROL','carol.marchant@amicar.cl',1929,'2015-04-23 05:40:24',NULL),(1641,'132489017','URQUEJO VEAS ALEJANDRA','alejandra.urquejo@amicar.cl',1930,'2015-04-23 05:40:24',NULL),(1642,'132566801','FLORES RENCORET DANIELA ANDREA','daniela.flores@amicar.cl',1931,'2015-04-23 05:40:24',NULL),(1643,'133624678','OSORIO BAÑADOS CLAUDIA','claudia.osorio@amicar.cl',1932,'2015-04-23 05:40:24',NULL),(1644,'134133236','ANDRADE VERA ELIZABETH ANDREA','elizabeth.andrade@amicar.cl',1933,'2015-04-23 05:40:24',NULL),(1645,'134271280','FERNANDEZ DAMELE ANNELOREN','anneloren.fernandez@amicar.cl',1934,'2015-04-23 05:40:24',NULL),(1646,'134734450','RAMIREZ RAMIREZ GABRIEL','gabriel.ramirez@amicar.cl',1906,'2015-04-23 05:40:24',NULL),(1647,'135249637','FUENTES SOTO ANDREA','andrea.fuentes@amicar.cl',1935,'2015-04-23 05:40:24',NULL),(1648,'136006606','YAÑEZ SEGURA HECTOR EDUARDO','hector.yanez@amicar.cl',1936,'2015-04-23 05:40:24',NULL),(1649,'136092537','FIERRO MARDONES GLORIA','gloria.fierro@amicar.cl',1937,'2015-04-23 05:40:24',NULL),(1650,'136258478','DELGADO NEIRA LESLIE','leslie.delgado@amicar.cl',1938,'2015-04-23 05:40:24',NULL),(1651,'137383373','DODDS MUÑOZ ALEJANDRA','alejandra.dodds@amicar.cl',1939,'2015-04-23 05:40:24',NULL),(1652,'137803399','ASTORGA LIZANA CRISTIAN ANDRES','cristian.astorga@amicar.cl',1940,'2015-04-23 05:40:25',NULL),(1653,'137823322','VERGARA MIRANDA ANDREA ELVIRA','andrea.vergara@amicar.cl',1941,'2015-04-23 05:40:25',NULL),(1654,'138178536','KLEIN QUEZADA ALEXIS','alexis.klein@amicar.cl',1942,'2015-04-23 05:40:25',NULL),(1655,'139183495','BRAVO OTAROLA GUSTAVO','gustavo.bravo@amicar.cl',1902,'2015-04-23 05:40:25',NULL),(1656,'139498550','MENDEZ MONTECINOS JOSE','jose.mendez@amicar.cl',1943,'2015-04-23 05:40:25',NULL),(1657,'139515692','COA MUÑOZ JOHANNA','johana.coa@amicar.cl',1944,'2015-04-23 05:40:25',NULL),(1658,'139530446','LUNA ESPINOZA CAROLINA ESTELA','carolina.luna@amicar.cl',1902,'2015-04-23 05:40:25',NULL),(1659,'139533909','BLAMEY PEREZ MÓNICA','monica.blamey@amicar.cl',1945,'2015-04-23 05:40:25',NULL),(1660,'139564200','TAPIA CISTERNAS OLGA','olga.tapia@amicar.cl',1946,'2015-04-23 05:40:25',NULL),(1661,'139803302','PULIDO SILVA PATRICIA','patricia.pulido@amicar.cl',1947,'2015-04-23 05:40:25',NULL),(1662,'140119938','SOTO NAVARRO FABIAM','fabiam.soto@amicar.cl',1948,'2015-04-23 05:40:25',NULL),(1663,'140302899','CUEVAS MORA RENATO JAVIER','renato.cuevas@amicar.cl',1949,'2015-04-23 05:40:25',NULL),(1664,'140866741','SOTO CASTRO KARIN','karin.soto@amicar.cl',1950,'2015-04-23 05:40:25',NULL),(1665,'141203746','LEON CARRASCO ANA CECILIA','ana.leon@amicar.cl',1951,'2015-04-23 05:40:25',NULL),(1666,'141236121','SALAS PARADA MONICA','monica.salas@amicar.cl',1952,'2015-04-23 05:40:25',NULL),(1667,'141372572','PRADENAS OLAVE PEDRO','pedro.pradenas@amicar.cl',1953,'2015-04-23 05:40:25',NULL),(1668,'141399292','URZUA VIÑALES PATRICIO','patricio.urzua@amicar.cl',1936,'2015-04-23 05:40:25',NULL),(1669,'141489909','BUTTO RODRIGUEZ PAOLA','paola.butto@amicar.cl',1906,'2015-04-23 05:40:25',NULL),(1670,'141551809','MORALES DABNER MITHZY','mitzhy.morales@amicar.cl',1954,'2015-04-23 05:40:25',NULL),(1671,'141852248','CORTES HORMAZABAL TERESA DE JESU','teresa.cortes@amicar.cl',1955,'2015-04-23 05:40:25',NULL),(1672,'142071959','ALVARADO VIRA IGNACIO','ignacio.alvarado@amicar.cl',1943,'2015-04-23 05:40:25',NULL),(1673,'142072726','LEIVA DIAZ FERNANDO','fernando.leiva@amicar.cl',1956,'2015-04-23 05:40:25',NULL),(1674,'142436736','NAVARRO HIDALGO PATRICIA','patricia.navarro@amicar.cl',1957,'2015-04-23 05:40:25',NULL),(1675,'143289974','SILVA FARIAS VALERIA','valeria.silva@amicar.cl',1958,'2015-04-23 05:40:25',NULL),(1676,'143921247','OLIVA ORTIZ CLAUDIA ANDREA','claudia.oliva@amicar.cl',1929,'2015-04-23 05:40:25',NULL),(1677,'144052595','VALDEBENITO VALDEBENITO PAOLA EL','paola.valdebenito@amicar.cl',1902,'2015-04-23 05:40:25',NULL),(1678,'144699122','GAJARDO CAMPOS JESSICA PAOLA','jessica.gajardo@amicar.cl',1959,'2015-04-23 05:40:25',NULL),(1679,'144760131','VALDES BELTIS','beltis.valdes@amicar.cl',1917,'2015-04-23 05:40:25',NULL),(1680,'146152643','BUSTOS  BUSTOS ROXANA MADELEINE','roxana.bustos@amicar.cl',1915,'2015-04-23 05:40:25',NULL),(1681,'146717020','ESPEJO SENIOR MARIA ALEJANDRA','maria.espejo@amicar.cl',1960,'2015-04-23 05:40:25',NULL),(1682,'150403006','PÉREZ HALTY  ROCÍO','rocio.perez@amicar.cl',1902,'2015-04-23 05:40:25',NULL),(1683,'150522471','MALUENDA JESSICA','jessica.maluenda@amicar.cl',1961,'2015-04-23 05:40:25',NULL),(1684,'150650364','JELDRES TISELJ MAURICIO','mauricio.jeldres@amicar.cl',1962,'2015-04-23 05:40:25',NULL),(1685,'150977789','COTRONEO MATURANA CARMEN GLORIA','carmen.cotroneo@amicar.cl',1963,'2015-04-23 05:40:25',NULL),(1686,'150996678','PEREZ MUÑOZ RICARDO ANDRES','ricardo.perez@amicar.cl',1964,'2015-04-23 05:40:26',NULL),(1687,'151090311','CELIS FUENTES RAUL','raul.celis@amicar.cl',1965,'2015-04-23 05:40:26',NULL),(1688,'152546203','EPULEF LLANCAFIL BETTY EVELIN','betty.epulef@amicar.cl',1966,'2015-04-23 05:40:26',NULL),(1689,'153317690','MARINO FLORES MANUEL ALEJANDRO','manuel.marino@amicar.cl',1967,'2015-04-23 05:40:26',NULL),(1690,'153790493','SCHNEIDER FICA DAVID ECHIER','david.schneider@amicar.cl',1968,'2015-04-23 05:40:26',NULL),(1691,'154215875','VERDUGO VERGARA JUAN RODRIGO','juan.verdugo@amicar.cl',1905,'2015-04-23 05:40:26',NULL),(1692,'154547134','AGUILA MARAMBIO ARIEL','ariel.aguila@amicar.cl',1928,'2015-04-23 05:40:26',NULL),(1693,'155013966','GONZALEZ GIOVAGNOLI PAMELA','pamela.gonzalez@amicar.cl',1969,'2015-04-23 05:40:26',NULL),(1694,'155069902','GUZMAN COFRE MANUEL','manuel.guzman@amicar.cl',1970,'2015-04-23 05:40:26',NULL),(1695,'155197188','CORDERO CHAVEZ CAMILA','camila.cordero@amicar.cl',1971,'2015-04-23 05:40:26',NULL),(1696,'155573066','HERNÁNDEZ  CHAMORRO ANGELO','angelo.hernandez@amicar.cl',1972,'2015-04-23 05:40:26',NULL),(1697,'156133175','HURTADO TENORIO JAVIERA ALEJANDRA','javiera.hurtado@amicar.cl',1973,'2015-04-23 05:40:26',NULL),(1698,'156182877','ARANEDA ORTIZ TAMARA','tamara.araneda@amicar.cl',1902,'2015-04-23 05:40:26',NULL),(1699,'156517879','ROA NOVOA DANIEL','daniel.roa@amicar.cl',1974,'2015-04-23 05:40:26',NULL),(1700,'156682713','ROJAS ASTORGA ESTEBAN ARMANDO','esteban.rojas@amicar.cl',1975,'2015-04-23 05:40:26',NULL),(1701,'157054929','GUTIERREZ CORTES MARIA JOSE','maria.gutierrez@amicar.cl',1941,'2015-04-23 05:40:26',NULL),(1702,'157182064','MARÍN NATALIA','natalia.marin@amicar.cl',1976,'2015-04-23 05:40:26',NULL),(1703,'157402889','LOAIZA PACHECO YANIRA','yanira.loaiza@amicar.cl',1977,'2015-04-23 05:40:26',NULL),(1704,'157767402','TORREBLANCA MALDONADO LIZ','liz.torreblanca@amicar.cl',1978,'2015-04-23 05:40:26',NULL),(1705,'157799754','ARRIAGADA LETELIER ISRAEL ESTEBAN','israel.arriagada@amicar.cl',1968,'2015-04-23 05:40:26',NULL),(1706,'157832786','AGUIRRE MORALES DANIELA','daniela.aguirre@amicar.cl',1979,'2015-04-23 05:40:26',NULL),(1707,'157845314','GOMEZ SALINAS CLAUDIA ','claudia.gomez@amicar.cl',1980,'2015-04-23 05:40:26',NULL),(1708,'158121263','PANOZO ANDRADE VIVIANA','viviana.panozo@amicar.cl',1902,'2015-04-23 05:40:26',NULL),(1709,'159075524','MENDEZ TRONCOSO ESTEBAN','esteban.mendez@amicar.cl',1923,'2015-04-23 05:40:26',NULL),(1710,'159499375','MIRANDA MENA HELLEN','hellen.miranda@amicar.cl',1981,'2015-04-23 05:40:26',NULL),(1711,'159648095','ZUÑIGA VALLET PAMELA','pamela.zuniga@amicar.cl',1980,'2015-04-23 05:40:26',NULL),(1712,'159752151','PAZ FIBLAS LUIS','luis.paz@amicar.cl',1982,'2015-04-23 05:40:26',NULL),(1713,'159859932','BENITEZ VEJAR ALEJANDRA','alejandra.benitez@amicar.cl',1983,'2015-04-23 05:40:26',NULL),(1714,'159882578','CASTRO CANOVI DAYSE','dayse.castro@amicar.cl',1984,'2015-04-23 05:40:26',NULL),(1715,'160148268','HENRIQUEZ HIDALGO GUSTAVO ALBERTO','gustavo.henriquez@amicar.cl',1985,'2015-04-23 05:40:26',NULL),(1716,'160453680','PADILLA SANCHEZ JOSCELYN ','joscelyn.padilla@amicar.cl',1943,'2015-04-23 05:40:26',NULL),(1717,'160682647','FERNANDEZ CASTILLO GONZALO','gonzalo.fernandez@amicar.cl',1980,'2015-04-23 05:40:26',NULL),(1718,'160919817','BASCUR BENARDOS ROCIO','rocio.bascur@amicar.cl',1986,'2015-04-23 05:40:27',NULL),(1719,'161393533','LEFORT SOTO IVONNE','ivone.lefort@amicar.cl',1981,'2015-04-23 05:40:27',NULL),(1720,'161524786','TORRES JARA CARLA','carla.torres@amicar.cl',1987,'2015-04-23 05:40:27',NULL),(1721,'162148680','GATICA VALENZUELA HUGO ANDRES','hugo.gatica@amicar.cl',1988,'2015-04-23 05:40:27',NULL),(1722,'162407317','MARQUEZ VASQUEZ CARLOS','carlos.marquez@amicar.cl',1989,'2015-04-23 05:40:27',NULL),(1723,'162837540','REMEDI OSORIO ALVARO','alvaro.remedi@amicar.cl',1971,'2015-04-23 05:40:27',NULL),(1724,'163041154','GONZALEZ YANTEN CLAUDIO','claudio.gonzalez@amicar.cl',1943,'2015-04-23 05:40:27',NULL),(1725,'163199424','LOPEZ VEGAS RODRIGO','rodrigo.lopez@amicar.cl',1969,'2015-04-23 05:40:27',NULL),(1726,'163342561','VEGA MUÑOZ JESSICA ALEXANDRA','jessica.vega@amicar.cl',1963,'2015-04-23 05:40:27',NULL),(1727,'163431815','DIAZ VEGA XIMENA IVETTE','ximena.diaz@amicar.cl',1990,'2015-04-23 05:40:27',NULL),(1728,'163838265','GUERRERO BECERA FELIPE','felipe.guerrero@amicar.cl',1902,'2015-04-23 05:40:27',NULL),(1729,'163926822','MORA ARRATIA CESAR','cesar.mora@amicar.cl',1943,'2015-04-23 05:40:27',NULL),(1730,'164152057','AGURTO STUARDO LORENA','lorena.agurto@amicar.cl',1991,'2015-04-23 05:40:27',NULL),(1731,'165183924','NUÑEZ YAÑEZ LESLIE','leslie.nuñez@amicar.cl',1992,'2015-04-23 05:40:27',NULL),(1732,'165577426','CARREÑO VALENCIA KARINA','karina.carreño@amicar.cl',1993,'2015-04-23 05:40:27',NULL),(1733,'166517362','GALLARDO CHAVEZ JOSELYN','joselyn.gallardo@amicar,cl',1994,'2015-04-23 05:40:27',NULL),(1734,'166743397','MONSALVE VASQUEZ RODRIGO','rodrigo.monsalve@amicar.cl',1995,'2015-04-23 05:40:27',NULL),(1735,'167187412','PONCE MEZA CYNTHIA','cynthia.ponce@amicar.cl',1917,'2015-04-23 05:40:27',NULL),(1736,'167649289','ALLENDES RODRIGUEZ PAZ','paz.allendes@amicar.cl',1943,'2015-04-23 05:40:27',NULL),(1737,'167674712','VERA SAAVEDRA STEVENS','stevens.vera@amicar.cl',1996,'2015-04-23 05:40:27',NULL),(1738,'169220107','ARAVENA CALFUNAO FELIPE','felipe.aravena@amicar.cl',1981,'2015-04-23 05:40:27',NULL),(1739,'169324395','QUIROGA RODRIGUEZ FELIX','felix.quiroga@amicar.cl',1997,'2015-04-23 05:40:27',NULL),(1740,'169461902','GERTNER GONZALEZ HOMERO','homero.gertner@amicar.cl',1943,'2015-04-23 05:40:27',NULL),(1741,'169983445','FIGUEROA PATRICIA','patricia.figueroa@amicar.cl',1998,'2015-04-23 05:40:27',NULL),(1742,'170061101','ARANGUIZ AGUILERA JIMMY','jimmy.aranguiz@amicar.cl',1943,'2015-04-23 05:40:27',NULL),(1743,'170229339','LOBOS ARANEDA MARCO','marco.lobos@amicar.cl',1999,'2015-04-23 05:40:27',NULL),(1744,'170413377','MENDOZA CORDERO ELIZABETH','elizabeth.mendoza@amicar.cl',2000,'2015-04-23 05:40:27',NULL),(1745,'170939921','CASTILLO LEDESMA JAVIER','javier.castillo@amicar.cl',1943,'2015-04-23 05:40:27',NULL),(1746,'171302757','ALARCÓN GONZALEZ VANESSA','vanessa.alarcon@amicar.cl',2001,'2015-04-23 05:40:27',NULL),(1747,'171340195','AROS TREJO NICOLAS','nicolas.aros@amicar.cl',1943,'2015-04-23 05:40:27',NULL),(1748,'172210406','CONCHA RAMOS JONATHAN','jonathan.concha@amicar.cl',2002,'2015-04-23 05:40:27',NULL),(1749,'172871003','PANTOJA VERA VICTOR','victor.pantoja@amicar.cl',2003,'2015-04-23 05:40:27',NULL),(1750,'172876463','VEJAR MORALES JOSCELYN','joscelyn.vejar@amicar.cl',1943,'2015-04-23 05:40:27',NULL),(1751,'173106521','RIOS COURBIS NICOLE','nicole.rios@amicar.cl',1902,'2015-04-23 05:40:27',NULL),(1752,'173137605','HURTADO GONZALEZ MAYRA','mayra.hurtado@amicar.cl',1960,'2015-04-23 05:40:27',NULL),(1753,'173183151','RAMOS ROJAS MAXIMILIANO','maximiliano.ramos@amicar.cl',2004,'2015-04-23 05:40:27',NULL),(1754,'173627823','JOFRE AGUIRRE KATHERINE','katherine.jofre@amicar.cl',1943,'2015-04-23 05:40:27',NULL),(1755,'173781180','DE LA FUENTE SANDOVAL PATRICIO','patricio.delafuente@amicar.cl',1974,'2015-04-23 05:40:27',NULL),(1756,'175685219','PIETRASANTA CATHERINE','catherinne.pietrasanta@amicar.cl',2005,'2015-04-23 05:40:27',NULL),(1757,'175946063','MOLINA SOTO SILVIA','silvia.molina@amicar.cl',2006,'2015-04-23 05:40:28',NULL),(1758,'176218142','CRISOSTOMO ARANCIBIA ROMINA','romina.crisostomo@amicar.cl',1943,'2015-04-23 05:40:28',NULL),(1759,'177618039','VIDELA MONTENEGRO PATRICIA','patricia.videla@amicar.cl',2007,'2015-04-23 05:40:28',NULL),(1760,'178426729','CHAMORRO NORMA','norma.chamorro@amicar.cl',1943,'2015-04-23 05:40:28',NULL),(1761,'181587547','SANCHEZ LEIVA TAINA','taina.sanchez@amicar.cl',2008,'2015-04-23 05:40:28',NULL),(1762,'237682122','OROZCO ATENCIO JANNY','janny.orozco@amicar.cl',2009,'2015-04-23 05:40:28',NULL),(1763,'12268248K','MOLINA FAURES POLA','pola.molina@amicar.cl',2010,'2015-04-23 05:40:28',NULL),(1764,'12485136K','CARDENAS BECERRA CRISTIAN ANDRES','cristian.cardenas@amicar.cl',2011,'2015-04-23 05:40:28',NULL),(1765,'13281886K','SAN MARTIN GARNICA DAVID','david.schneider@amicar.cl',2012,'2015-04-23 05:40:28',NULL),(1766,'13415490K','DIAZ COSTA PIA LORETA','pia.diaz@amicar.cl',2013,'2015-04-23 05:40:28',NULL),(1767,'13509742K','BASCUÑAN MORA CARLA','carla.bascuñan@amicar.cl',2014,'2015-04-23 05:40:28',NULL),(1768,'13914984K','VILLARROEL VILO CAROLINA','carolina.villarroel@amicar.cl',2015,'2015-04-23 05:40:28',NULL),(1769,'15297065K','CARABANTES BARRIA RODRIGO','rodrigo.carabantes@amicar.cl',2016,'2015-04-23 05:40:28',NULL),(1770,'15966743K','CORDOVA JORQUERA CATHERINNE','catherinne.cordova@micar.cl',1953,'2015-04-23 05:40:28',NULL),(1771,'16101611K','ALIQUINTUI VERA GABRIELA','gabriela.aliquintui@amicar.cl',1902,'2015-04-23 05:40:28',NULL),(1772,'16173005K','MEDINA GUZMAN ANA','ana.medina@amicar.cl',2017,'2015-04-23 05:40:28',NULL),(1773,'17105639K','URRUTIA JACKSON ANDRES','andres.urrutia@amicar.cl',2018,'2015-04-23 05:40:28',NULL),(1774,'17571281K','VILLARROEL VILLALOBOS OSCAR','oscar.villarroel@amicar.cl',2019,'2015-04-23 05:40:28',NULL),(1775,'8727456K','MUNDACA MUNIZAGA MONICA LILIAN','monica.mundaca@amicar.cl',2020,'2015-04-23 05:40:28',NULL);
/*!40000 ALTER TABLE `ejecutivos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-20 23:54:12
