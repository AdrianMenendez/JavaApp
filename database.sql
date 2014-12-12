CREATE DATABASE  IF NOT EXISTS `routesdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `routesdb`;
-- MySQL dump 10.13  Distrib 5.6.19, for Win32 (x86)
--
-- Host: localhost    Database: routesdb
-- ------------------------------------------------------
-- Server version	5.6.20-enterprise-commercial-advanced-log

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
-- Table structure for table `interestpoint`
--

DROP TABLE IF EXISTS `interestpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interestpoint` (
  `url_photo` varchar(500) DEFAULT NULL,
  `route_title` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `interestID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`interestID`,`route_title`),
  KEY `route_title_idx` (`route_title`),
  CONSTRAINT `route_title` FOREIGN KEY (`route_title`) REFERENCES `route` (`route_title`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interestpoint`
--

LOCK TABLES `interestpoint` WRITE;
/*!40000 ALTER TABLE `interestpoint` DISABLE KEYS */;
INSERT INTO `interestpoint` VALUES ('http://static.panoramio.com/photos/large/77897874.jpg','Ruta Lago Ercina','Lago',43.2683,-4.98131,1),('http://www.windoweb.it/desktop_temi/foto_natura_artistica/foto_natura_artistica_002.jpg','Mieres-Ujo','Mieres1',43.2526,-5.7776,2),('http://2.bp.blogspot.com/_FR6v92xls3k/TBO5kGGQ1II/AAAAAAAAAPQ/PgnseI_DDVM/s320/enseanzas2.jpg','Mieres-Ujo','Mieres2',43.2353,-5.76433,3),('http://www.el-caminoreal.com/bd/Asturias/Playas/admin%20playas/castrillon/salinas1.jpg','Aviles','PlayaAviles',43.5839,-5.94601,4),('http://img440.imageshack.us/img440/4835/img3751pz9.jpg','Lagos de Covadonga','LagoEnol',43.272,-4.99153,8),('http://noticiasdecamargo.es/wp-content/uploads/2013/10/lago-la-ercina.jpg','Lagos de Covadonga','LagoDeLaErcina',43.2677,-4.98116,9),('http://static.panoramio.com/photos/large/39264376.jpg','Ruta Oviedo Grado','RioNora',43.398,-5.94069,10),('http://upload.wikimedia.org/wikipedia/commons/7/7b/Rio_nalon.JPG','Ruta Oviedo Grado','RioNalon',43.403,-6.06411,11),('http://guias.masmar.net/var/masmar/storage/images/media/images/cabo-penas/178873-1-esl-ES/cabo-penas.jpg','Faro de san juan al cabo Peñas','CaboPeñas',43.6559,-5.85563,12),('http://www.hotelpalaciodeferrera.es/wp-content/uploads/2013/06/Luanco.jpg','Luanco - Cabo de Peñas','Lianco',43.6132,-5.79134,13),('http://3.bp.blogspot.com/-I-Dfeyf9XZE/Tn4joltE7bI/AAAAAAAAALg/v-n_ymB21Dw/s1600/Playa+de+Viodo+%25282%2529_redimensionar.jpg','Luanco - Cabo de Peñas','Amielles',43.6438,-5.83421,14),('http://mw2.google.com/mw-panoramio/photos/medium/57327529.jpg','Luanco - Cabo de Peñas','IslaDelCarmen',43.6122,-5.78005,15),('http://imagenes.forociudad.com/fotos/46497-rioseco-embalse-de-rioseco.jpg','Ruta del alba','EmbalseDeRioseco',43.2234,-5.46244,16),('http://www.todopueblos.com/fotos/22153IMGP2476.JPG','Moal','Villategil',43.1202,-6.53566,17);
/*!40000 ALTER TABLE `interestpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route` (
  `route_title` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `hardness` varchar(45) NOT NULL,
  `km` double NOT NULL,
  `popularity` int(11) DEFAULT NULL,
  PRIMARY KEY (`route_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES ('Aviles','Aviles playa y costa','moderate',5.57,NULL),('Faro de san juan al cabo Peñas','Ruta por la costa desde el faro de Aviles, al cabo de Peñas','easy',13.51,NULL),('La senda del oso','La senda del oso es una senda para cicloturistas y caminantes que discurre por los concejos de Proaza, Teverga, Quirós y Santo Adriano, todos ellos en el Principado de Asturias (España).','moderate',3,10),('Lagos de Covadonga','Ruta en la que se pueden ver  los lagos de covadonga','difficult',5.8,NULL),('Luanco - Cabo de Peñas','Ruta entre luanco y cabo de peñas.','moderate',10.18,NULL),('Mieres-Ujo','Gran camino junto al río Caudal que comunica Mieres y Ujo. Atraviesa diversos pueblos y es la ruta ideal para caminar con los amigos.','easy',5,16),('Moal','Ruta del bosque del Moal','difficult',14.14,NULL),('Ruta del alba','Situada en el parque natura de Redes.','difficult',6.97,NULL),('Ruta Lago Ercina','Ruta que sale del Lago de Ercina y asciende los picos Jultayu y Cuvicente, desciende al Refugio de Vega de Ario, y regresa al Lago Ercina por la majada de Arnaedo y Belbín.  La ruta seguida fue la siguiente: Lago Ercina-->Las Bobias-->Collado El Jito-->Pico Jultayu-->Pico Cuvicente-->Refugio de Vega de Ario-->Jous de Ario-->Arnaedo-->Belbín-->Lago de Ercina','difficult',6.38,NULL),('Ruta Oviedo Grado','Ruta entre oviedo y grado.','moderate',0,NULL);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routepoint`
--

DROP TABLE IF EXISTS `routepoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routepoint` (
  `x` float NOT NULL,
  `y` float NOT NULL,
  `route_title` varchar(200) NOT NULL,
  `point_order` int(11) NOT NULL,
  PRIMARY KEY (`route_title`,`y`,`x`),
  CONSTRAINT `titleFK` FOREIGN KEY (`route_title`) REFERENCES `route` (`route_title`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routepoint`
--

LOCK TABLES `routepoint` WRITE;
/*!40000 ALTER TABLE `routepoint` DISABLE KEYS */;
INSERT INTO `routepoint` VALUES (43.5801,-5.95219,'Aviles',14),(43.579,-5.95129,'Aviles',13),(43.5758,-5.9497,'Aviles',12),(43.5735,-5.94747,'Aviles',11),(43.575,-5.94227,'Aviles',10),(43.5771,-5.9385,'Aviles',9),(43.5798,-5.93562,'Aviles',8),(43.5726,-5.93296,'Aviles',5),(43.5684,-5.93262,'Aviles',4),(43.5642,-5.93202,'Aviles',3),(43.5789,-5.9303,'Aviles',7),(43.5747,-5.92966,'Aviles',6),(43.56,-5.92863,'Aviles',1),(43.5637,-5.92639,'Aviles',2),(43.5578,-5.92442,'Aviles',0),(43.5957,-5.94433,'Faro de san juan al cabo Peñas',0),(43.5981,-5.9397,'Faro de san juan al cabo Peñas',1),(43.5997,-5.93459,'Faro de san juan al cabo Peñas',2),(43.5984,-5.93056,'Faro de san juan al cabo Peñas',3),(43.599,-5.92609,'Faro de san juan al cabo Peñas',4),(43.6007,-5.92275,'Faro de san juan al cabo Peñas',5),(43.6034,-5.91906,'Faro de san juan al cabo Peñas',6),(43.6061,-5.91644,'Faro de san juan al cabo Peñas',7),(43.6212,-5.91455,'Faro de san juan al cabo Peñas',13),(43.6112,-5.91343,'Faro de san juan al cabo Peñas',9),(43.6085,-5.91296,'Faro de san juan al cabo Peñas',8),(43.6236,-5.91296,'Faro de san juan al cabo Peñas',14),(43.6189,-5.91223,'Faro de san juan al cabo Peñas',12),(43.6137,-5.91146,'Faro de san juan al cabo Peñas',10),(43.6161,-5.90991,'Faro de san juan al cabo Peñas',11),(43.623,-5.90889,'Faro de san juan al cabo Peñas',15),(43.6236,-5.90472,'Faro de san juan al cabo Peñas',16),(43.6249,-5.90206,'Faro de san juan al cabo Peñas',17),(43.6278,-5.9006,'Faro de san juan al cabo Peñas',18),(43.6236,-5.89897,'Faro de san juan al cabo Peñas',19),(43.6264,-5.8958,'Faro de san juan al cabo Peñas',20),(43.6242,-5.89116,'Faro de san juan al cabo Peñas',21),(43.6228,-5.88653,'Faro de san juan al cabo Peñas',22),(43.6237,-5.88151,'Faro de san juan al cabo Peñas',23),(43.6249,-5.87803,'Faro de san juan al cabo Peñas',24),(43.6281,-5.87554,'Faro de san juan al cabo Peñas',25),(43.63,-5.8709,'Faro de san juan al cabo Peñas',26),(43.6308,-5.86623,'Faro de san juan al cabo Peñas',27),(43.6344,-5.86558,'Faro de san juan al cabo Peñas',28),(43.6347,-5.86052,'Faro de san juan al cabo Peñas',29),(43.6372,-5.85829,'Faro de san juan al cabo Peñas',30),(43.6472,-5.85756,'Faro de san juan al cabo Peñas',33),(43.6438,-5.85717,'Faro de san juan al cabo Peñas',32),(43.6402,-5.85683,'Faro de san juan al cabo Peñas',31),(43.6502,-5.8558,'Faro de san juan al cabo Peñas',34),(43.6529,-5.85228,'Faro de san juan al cabo Peñas',35),(43.6557,-5.84842,'Faro de san juan al cabo Peñas',36),(43.2125,-6.05574,'La senda del oso',2),(43.2116,-6.05571,'La senda del oso',1),(43.2109,-6.0554,'La senda del oso',0),(43.2129,-6.0548,'La senda del oso',3),(43.2125,-6.05337,'La senda del oso',4),(43.2123,-6.05198,'La senda del oso',5),(43.214,-6.05045,'La senda del oso',6),(43.2147,-6.04867,'La senda del oso',7),(43.2146,-6.04687,'La senda del oso',8),(43.2144,-6.04567,'La senda del oso',9),(43.2156,-6.04366,'La senda del oso',11),(43.2146,-6.0436,'La senda del oso',10),(43.2163,-6.04354,'La senda del oso',12),(43.2173,-6.04075,'La senda del oso',13),(43.2232,-6.03931,'La senda del oso',17),(43.2188,-6.03929,'La senda del oso',15),(43.2179,-6.03922,'La senda del oso',14),(43.2237,-6.03921,'La senda del oso',18),(43.221,-6.03917,'La senda del oso',16),(43.2685,-4.9976,'Lagos de Covadonga',15),(43.2656,-4.99717,'Lagos de Covadonga',14),(43.2727,-4.99513,'Lagos de Covadonga',17),(43.2714,-4.99404,'Lagos de Covadonga',16),(43.2652,-4.99348,'Lagos de Covadonga',13),(43.2736,-4.99322,'Lagos de Covadonga',18),(43.2651,-4.99028,'Lagos de Covadonga',12),(43.2738,-4.98994,'Lagos de Covadonga',19),(43.274,-4.9888,'Lagos de Covadonga',20),(43.272,-4.98726,'Lagos de Covadonga',21),(43.2648,-4.98655,'Lagos de Covadonga',11),(43.2757,-4.98627,'Lagos de Covadonga',24),(43.276,-4.98599,'Lagos de Covadonga',0),(43.272,-4.9849,'Lagos de Covadonga',22),(43.2769,-4.98452,'Lagos de Covadonga',1),(43.2732,-4.98357,'Lagos de Covadonga',23),(43.2686,-4.9832,'Lagos de Covadonga',8),(43.2783,-4.98319,'Lagos de Covadonga',3),(43.2762,-4.98246,'Lagos de Covadonga',2),(43.2704,-4.98243,'Lagos de Covadonga',7),(43.2667,-4.98221,'Lagos de Covadonga',9),(43.2657,-4.982,'Lagos de Covadonga',10),(43.2718,-4.98142,'Lagos de Covadonga',6),(43.2731,-4.9808,'Lagos de Covadonga',5),(43.2751,-4.98028,'Lagos de Covadonga',4),(43.64,-5.85438,'Luanco - Cabo de Peñas',23),(43.6439,-5.8531,'Luanco - Cabo de Peñas',24),(43.644,-5.85142,'Luanco - Cabo de Peñas',25),(43.6403,-5.85129,'Luanco - Cabo de Peñas',22),(43.6461,-5.84983,'Luanco - Cabo de Peñas',26),(43.6399,-5.84863,'Luanco - Cabo de Peñas',21),(43.6485,-5.84764,'Luanco - Cabo de Peñas',27),(43.6382,-5.84494,'Luanco - Cabo de Peñas',20),(43.6509,-5.84314,'Luanco - Cabo de Peñas',28),(43.6361,-5.84215,'Luanco - Cabo de Peñas',19),(43.6534,-5.84164,'Luanco - Cabo de Peñas',29),(43.6378,-5.83765,'Luanco - Cabo de Peñas',18),(43.6381,-5.83361,'Luanco - Cabo de Peñas',17),(43.6368,-5.82885,'Luanco - Cabo de Peñas',16),(43.6369,-5.82391,'Luanco - Cabo de Peñas',15),(43.6362,-5.81936,'Luanco - Cabo de Peñas',14),(43.6353,-5.81709,'Luanco - Cabo de Peñas',13),(43.6328,-5.8125,'Luanco - Cabo de Peñas',12),(43.6317,-5.80863,'Luanco - Cabo de Peñas',11),(43.6341,-5.80524,'Luanco - Cabo de Peñas',10),(43.6341,-5.80104,'Luanco - Cabo de Peñas',9),(43.6328,-5.79593,'Luanco - Cabo de Peñas',8),(43.6292,-5.79477,'Luanco - Cabo de Peñas',7),(43.6139,-5.79409,'Luanco - Cabo de Peñas',0),(43.6172,-5.79237,'Luanco - Cabo de Peñas',1),(43.6291,-5.79104,'Luanco - Cabo de Peñas',6),(43.6191,-5.78919,'Luanco - Cabo de Peñas',2),(43.6255,-5.78683,'Luanco - Cabo de Peñas',4),(43.6223,-5.78645,'Luanco - Cabo de Peñas',3),(43.6283,-5.78542,'Luanco - Cabo de Peñas',5),(43.206,-5.79061,'Mieres-Ujo',7),(43.2111,-5.78853,'Mieres-Ujo',6),(43.2266,-5.78509,'Mieres-Ujo',5),(43.25,-5.78208,'Mieres-Ujo',1),(43.2329,-5.78189,'Mieres-Ujo',4),(43.2384,-5.7812,'Mieres-Ujo',3),(43.2421,-5.7807,'Mieres-Ujo',2),(43.25,-5.77855,'Mieres-Ujo',0),(43.075,-6.61403,'Moal',45),(43.0775,-6.61205,'Moal',44),(43.0797,-6.61111,'Moal',43),(43.0817,-6.61085,'Moal',42),(43.0829,-6.60939,'Moal',41),(43.0857,-6.6081,'Moal',40),(43.0879,-6.60725,'Moal',39),(43.0898,-6.60356,'Moal',38),(43.0913,-6.60175,'Moal',37),(43.0936,-6.60047,'Moal',36),(43.0962,-6.59841,'Moal',35),(43.0984,-6.59626,'Moal',34),(43.1,-6.5936,'Moal',33),(43.1011,-6.58982,'Moal',32),(43.1028,-6.58896,'Moal',31),(43.1047,-6.58716,'Moal',30),(43.1071,-6.58673,'Moal',29),(43.1118,-6.5863,'Moal',27),(43.1096,-6.5851,'Moal',28),(43.1143,-6.58416,'Moal',26),(43.1441,-6.58364,'Moal',16),(43.1455,-6.58313,'Moal',15),(43.1169,-6.58218,'Moal',25),(43.1418,-6.58158,'Moal',17),(43.1301,-6.5815,'Moal',21),(43.1378,-6.58081,'Moal',18),(43.1262,-6.58055,'Moal',22),(43.1195,-6.57995,'Moal',24),(43.148,-6.57987,'Moal',14),(43.1335,-6.57961,'Moal',20),(43.1354,-6.57918,'Moal',19),(43.1226,-6.57858,'Moal',23),(43.1487,-6.57635,'Moal',13),(43.1479,-6.57351,'Moal',12),(43.15,-6.57214,'Moal',11),(43.1524,-6.57034,'Moal',10),(43.1543,-6.56609,'Moal',9),(43.157,-6.56493,'Moal',8),(43.1616,-6.56343,'Moal',5),(43.1576,-6.56266,'Moal',7),(43.1656,-6.56244,'Moal',4),(43.1596,-6.56158,'Moal',6),(43.1692,-6.56085,'Moal',3),(43.1724,-6.55965,'Moal',2),(43.1739,-6.55455,'Moal',1),(43.177,-6.55077,'Moal',0),(43.1527,-5.49059,'Ruta del alba',20),(43.1544,-5.48836,'Ruta del alba',19),(43.1566,-5.48681,'Ruta del alba',18),(43.1581,-5.48201,'Ruta del alba',17),(43.1601,-5.4784,'Ruta del alba',16),(43.1819,-5.47789,'Ruta del alba',10),(43.1671,-5.47634,'Ruta del alba',14),(43.1711,-5.47583,'Ruta del alba',13),(43.1632,-5.47565,'Ruta del alba',15),(43.1965,-5.4754,'Ruta del alba',3),(43.1786,-5.47514,'Ruta del alba',11),(43.1748,-5.47497,'Ruta del alba',12),(43.1914,-5.47488,'Ruta del alba',5),(43.1831,-5.47428,'Ruta del alba',9),(43.1938,-5.47402,'Ruta del alba',4),(43.1891,-5.47385,'Ruta del alba',6),(43.198,-5.47351,'Ruta del alba',2),(43.1872,-5.47145,'Ruta del alba',7),(43.186,-5.47059,'Ruta del alba',8),(43.2,-5.47008,'Ruta del alba',1),(43.202,-5.46604,'Ruta del alba',0),(43.2717,-4.9823,'Ruta Lago Ercina',0),(43.2706,-4.98087,'Ruta Lago Ercina',1),(43.2702,-4.98051,'Ruta Lago Ercina',2),(43.2695,-4.97993,'Ruta Lago Ercina',3),(43.2682,-4.97874,'Ruta Lago Ercina',4),(43.2668,-4.97749,'Ruta Lago Ercina',5),(43.266,-4.9762,'Ruta Lago Ercina',6),(43.2645,-4.9749,'Ruta Lago Ercina',7),(43.2638,-4.97387,'Ruta Lago Ercina',8),(43.2629,-4.97192,'Ruta Lago Ercina',9),(43.2618,-4.97044,'Ruta Lago Ercina',10),(43.2611,-4.96871,'Ruta Lago Ercina',11),(43.2607,-4.967,'Ruta Lago Ercina',12),(43.2605,-4.96548,'Ruta Lago Ercina',13),(43.26,-4.96439,'Ruta Lago Ercina',14),(43.2588,-4.96326,'Ruta Lago Ercina',15),(43.2581,-4.9612,'Ruta Lago Ercina',16),(43.2575,-4.95871,'Ruta Lago Ercina',17),(43.2567,-4.95644,'Ruta Lago Ercina',18),(43.2551,-4.953,'Ruta Lago Ercina',19),(43.2541,-4.94959,'Ruta Lago Ercina',20),(43.2525,-4.94646,'Ruta Lago Ercina',21),(43.2507,-4.94429,'Ruta Lago Ercina',22),(43.2494,-4.94225,'Ruta Lago Ercina',23),(43.2477,-4.93976,'Ruta Lago Ercina',24),(43.2445,-4.93422,'Ruta Lago Ercina',25),(43.2422,-4.93065,'Ruta Lago Ercina',26),(43.2407,-4.92809,'Ruta Lago Ercina',27),(43.2395,-4.92525,'Ruta Lago Ercina',28),(43.2416,-4.92336,'Ruta Lago Ercina',29),(43.2429,-4.92298,'Ruta Lago Ercina',30),(43.3869,-6.07492,'Ruta Oviedo Grado',53),(43.3888,-6.07244,'Ruta Oviedo Grado',52),(43.3906,-6.06943,'Ruta Oviedo Grado',51),(43.3934,-6.06677,'Ruta Oviedo Grado',50),(43.3932,-6.06153,'Ruta Oviedo Grado',49),(43.3954,-6.05681,'Ruta Oviedo Grado',48),(43.3978,-6.05244,'Ruta Oviedo Grado',47),(43.3989,-6.05029,'Ruta Oviedo Grado',46),(43.4017,-6.04591,'Ruta Oviedo Grado',45),(43.4032,-6.04102,'Ruta Oviedo Grado',44),(43.4043,-6.03896,'Ruta Oviedo Grado',43),(43.4043,-6.03536,'Ruta Oviedo Grado',42),(43.4044,-6.03106,'Ruta Oviedo Grado',41),(43.4031,-6.02703,'Ruta Oviedo Grado',40),(43.401,-6.02257,'Ruta Oviedo Grado',39),(43.3999,-6.01742,'Ruta Oviedo Grado',38),(43.3982,-6.01235,'Ruta Oviedo Grado',37),(43.3971,-6.00806,'Ruta Oviedo Grado',36),(43.3959,-6.00291,'Ruta Oviedo Grado',35),(43.3948,-5.99836,'Ruta Oviedo Grado',34),(43.3945,-5.99339,'Ruta Oviedo Grado',33),(43.3951,-5.98892,'Ruta Oviedo Grado',32),(43.3959,-5.98403,'Ruta Oviedo Grado',31),(43.3964,-5.97905,'Ruta Oviedo Grado',30),(43.3988,-5.97708,'Ruta Oviedo Grado',29),(43.4011,-5.97382,'Ruta Oviedo Grado',28),(43.4025,-5.9697,'Ruta Oviedo Grado',27),(43.4028,-5.96369,'Ruta Oviedo Grado',26),(43.4024,-5.95897,'Ruta Oviedo Grado',25),(43.4006,-5.95699,'Ruta Oviedo Grado',24),(43.3978,-5.95287,'Ruta Oviedo Grado',23),(43.3944,-5.95159,'Ruta Oviedo Grado',22),(43.3921,-5.94764,'Ruta Oviedo Grado',21),(43.3915,-5.943,'Ruta Oviedo Grado',20),(43.3886,-5.94008,'Ruta Oviedo Grado',18),(43.3871,-5.93768,'Ruta Oviedo Grado',17),(43.3915,-5.9376,'Ruta Oviedo Grado',19),(43.3845,-5.93356,'Ruta Oviedo Grado',16),(43.3817,-5.93056,'Ruta Oviedo Grado',15),(43.3796,-5.92644,'Ruta Oviedo Grado',14),(43.3798,-5.92429,'Ruta Oviedo Grado',13),(43.3795,-5.9194,'Ruta Oviedo Grado',12),(43.379,-5.91485,'Ruta Oviedo Grado',11),(43.3769,-5.91022,'Ruta Oviedo Grado',10),(43.3758,-5.90549,'Ruta Oviedo Grado',9),(43.3745,-5.90009,'Ruta Oviedo Grado',8),(43.3737,-5.89485,'Ruta Oviedo Grado',7),(43.3728,-5.89013,'Ruta Oviedo Grado',6),(43.3721,-5.88507,'Ruta Oviedo Grado',5),(43.3706,-5.88052,'Ruta Oviedo Grado',4),(43.3674,-5.87923,'Ruta Oviedo Grado',3),(43.3673,-5.8746,'Ruta Oviedo Grado',2),(43.3656,-5.86936,'Ruta Oviedo Grado',1),(43.3627,-5.86533,'Ruta Oviedo Grado',0);
/*!40000 ALTER TABLE `routepoint` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-30 23:51:36

