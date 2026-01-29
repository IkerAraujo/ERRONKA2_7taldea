-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: erronka2
-- ------------------------------------------------------
-- Server version	9.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bezero`
--

DROP TABLE IF EXISTS `bezero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bezero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abizena` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NAN` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helbide` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pasahitza` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NAN` (`NAN`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bezero`
--

LOCK TABLES `bezero` WRITE;
/*!40000 ALTER TABLE `bezero` DISABLE KEYS */;
INSERT INTO `bezero` VALUES (1,'Patxi','Urrutia','11111111A','600111111','Kale Nagusia 1, Bilbo','patxi.u@gmail.com','patxi1'),(2,'Miren','Lasa','22222222B','600222222','Askatasuna 5, Donostia','miren.l@hotmail.com','miren2'),(3,'Antton','Zubizarreta','33333333C','600333333','San Prudentzio 10, Gasteiz','antton.z@yahoo.es','antton3'),(4,'Edurne','Otegi','44444444D','600444444','Feros 12, Eibar','edurne.o@gmail.com','edurne4'),(5,'Gorka','Ibarretxe','55555555E','600555555','Araba Kalea 4, Laudio','gorka.i@gmail.com','gorka5'),(6,'Amaia','Montero','66666666F','600666666','Zarugalde 7, Arrasate','amaia.m@gmail.com','amaia6'),(7,'Iñigo','Martinez','77777777G','600777777','Portua 3, Ondarroa','inigo.m@outlook.com','inigo7'),(8,'Nekane','Arregi','88888888H','600888888','Plaza Berria 2, Bilbo','nekane.a@gmail.com','nekane8'),(9,'Joseba','Etxeita','99999999J','600999999','Gran Via 40, Bilbo','joseba.e@gmail.com','joseba9'),(10,'Itziar','Ituño','12121212K','600121212','Alde Zaharra 1, Durango','itziar.i@gmail.com','itziar10'),(11,'Koldo','Serra','13131313L','600131313','Matiko 22, Bilbo','koldo.s@gmail.com','koldo11'),(12,'Maider','Undalan','14141414M','600141414','Iparragirre 8, Donostia','maider.u@gmail.com','maider12'),(13,'Unax','Ugalde','15151515N','600151515','San Frantzisko 5, Gasteiz','unax.u@hotmail.com','unax13'),(14,'Barbara','Goenaga','16161616P','600161616','Gros 10, Donostia','barbara.g@gmail.com','barbara14'),(15,'Eneko','Sagardoy','17171717Q','600171717','Azoka 4, Durango','eneko.s@gmail.com','eneko15'),(16,'Nagore','Aranburu','18181818R','600181818','Arenal 2, Bilbo','nagore.a@gmail.com','nagore16'),(17,'Aitziber','Garmendia','19191919S','600191919','Zabalburu 9, Bilbo','aitziber.g@yahoo.com','aitziber17'),(18,'Jon','Kortajarena','20202020T','600202020','Indautxu 15, Bilbo','jon.k@gmail.com','jon18'),(19,'Itziar','Atienza','21212121V','600212121','Boulevard 3, Donostia','itziar.a@gmail.com','itziar19'),(20,'Ramon','Agirre','23232323W','600232323','Parte Zaharra 6, Donostia','ramon.a@gmail.com','ramon20'),(21,'Elena','Irureta','24242424X','600242424','Antiguo 8, Donostia','elena.i@gmail.com','elena21'),(22,'Ane','Gabarain','25252525Y','600252525','Amara 12, Donostia','ane.g@gmail.com','ane22'),(23,'Karra','Elejalde','26262626Z','600262626','Zaramaga 5, Gasteiz','karra.e@hotmail.com','karra23'),(24,'Gorka','Otxoa','27272727A','600272727','Lakua 14, Gasteiz','gorka.o@gmail.com','gorka24'),(25,'Lander','Otaola','28282828B','600282828','Santutxu 7, Bilbo','lander.o@gmail.com','lander25'),(26,'Ylenia','Baglietto','29292929C','600292929','Deustu 11, Bilbo','ylenia.b@gmail.com','ylenia26'),(27,'Iker','Galartza','30303030D','600303030','Tolosa Hiribidea 4, Donostia','iker.g@gmail.com','iker27'),(28,'Oscar','Terol','31313131E','600313131','Gipuzkoa Plaza 1, Donostia','oscar.t@gmail.com','oscar28'),(29,'Maribel','Salas','32323232F','600323232','Ercilla 22, Bilbo','maribel.s@gmail.com','maribel29'),(30,'Asier','Hormaza','34343434G','600343434','Urkixo 55, Bilbo','asier.h@gmail.com','asier30');
/*!40000 ALTER TABLE `bezero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erabiltzaile`
--

DROP TABLE IF EXISTS `erabiltzaile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `erabiltzaile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `langile_id` int NOT NULL,
  `gmail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `langile_id` (`langile_id`),
  UNIQUE KEY `gmail` (`gmail`),
  KEY `rol_id` (`rol_id`),
  CONSTRAINT `erabiltzaile_ibfk_1` FOREIGN KEY (`langile_id`) REFERENCES `langile` (`id`),
  CONSTRAINT `erabiltzaile_ibfk_2` FOREIGN KEY (`rol_id`) REFERENCES `rolak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erabiltzaile`
--

LOCK TABLES `erabiltzaile` WRITE;
/*!40000 ALTER TABLE `erabiltzaile` DISABLE KEYS */;
INSERT INTO `erabiltzaile` VALUES (1,1,'amaia.agirre@erronka.eus','zuzendari1',1),(2,2,'jon.etxeberria@erronka.eus','jon1234',2),(3,3,'mikel.goiko@erronka.eus','mikelpass',2),(4,4,'ane.iturri@erronka.eus','anebiltegi',3),(5,5,'iker.lopez@erronka.eus','iker123',4),(6,6,'maite.zabaleta@erronka.eus','maite55',4),(7,7,'unai.bilbao@erronka.eus','unai2024',2),(8,8,'leire.mendi@erronka.eus','leiretek',2),(9,9,'gorka.uribe@erronka.eus','gorka77',3),(10,10,'saioa.arriola@erronka.eus','saioasal',4),(11,11,'aitor.garcia@erronka.eus','aitor44',2),(12,12,'nerea.azkue@erronka.eus','nerea88',2),(13,13,'ander.sanz@erronka.eus','anderbilt',3),(14,14,'julen.iriondo@erronka.eus','julen99',4),(15,15,'oihane.larrea@erronka.eus','oihane1',2),(16,16,'xabier.ortiz@erronka.eus','xabier2',2),(17,17,'irati.zabala@erronka.eus','irati3',3),(18,18,'markel.alonso@erronka.eus','markel4',4),(19,19,'nagore.diez@erronka.eus','nagore5',4),(20,20,'asier.ruiz@erronka.eus','asier6',2),(21,21,'uxue.gomez@erronka.eus','uxue77',2),(22,22,'eneko.perez@erronka.eus','eneko88',3),(23,23,'alazne.sola@erronka.eus','alazne99',4),(24,24,'ibai.martin@erronka.eus','ibai00',2),(25,25,'garazi.flores@erronka.eus','garazi11',2),(26,26,'beñat.etxebarria@erronka.eus','benat22',3),(27,27,'aroa.gil@erronka.eus','aroa33',4),(28,28,'landeres.sanchez@erronka.eus','lander44',4),(29,29,'june.vidal@erronka.eus','june55',2),(30,30,'kepa.amuriza@erronka.eus','kepa66',1);
/*!40000 ALTER TABLE `erabiltzaile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faktura`
--

DROP TABLE IF EXISTS `faktura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faktura` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bezero_id` int NOT NULL,
  `data` date NOT NULL,
  `guztira` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bezero_id` (`bezero_id`),
  CONSTRAINT `faktura_ibfk_1` FOREIGN KEY (`bezero_id`) REFERENCES `bezero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faktura`
--

LOCK TABLES `faktura` WRITE;
/*!40000 ALTER TABLE `faktura` DISABLE KEYS */;
INSERT INTO `faktura` VALUES (1,1,'2024-01-02',450.00),(2,2,'2024-01-03',400.00),(3,3,'2024-01-03',250.00),(4,4,'2024-01-04',380.00),(5,5,'2024-01-05',420.00),(6,6,'2024-01-06',90.00),(7,7,'2024-01-07',150.00),(8,8,'2024-01-08',75.00),(9,9,'2024-01-09',480.00),(10,10,'2024-01-10',300.00),(11,11,'2024-01-11',350.00),(12,12,'2024-01-12',200.00),(13,13,'2024-01-13',85.00),(14,14,'2024-01-14',290.00),(15,15,'2024-01-15',500.00),(16,16,'2024-01-16',110.00),(17,17,'2024-01-17',320.00),(18,18,'2024-01-18',100.00),(19,19,'2024-01-19',250.00),(20,20,'2024-01-20',430.00),(21,21,'2024-01-21',350.00),(22,22,'2024-01-22',210.00),(23,23,'2024-01-23',70.00),(24,24,'2024-01-24',380.00),(25,25,'2024-01-25',240.00),(26,26,'2024-01-26',200.00),(27,27,'2024-01-27',85.00),(28,28,'2024-01-28',65.00),(29,29,'2024-01-29',650.00),(30,30,'2024-01-30',220.00);
/*!40000 ALTER TABLE `faktura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fitxaketak`
--

DROP TABLE IF EXISTS `fitxaketak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fitxaketak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `langile_id` int NOT NULL,
  `mota` enum('sarrera','irteera') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_ordu` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `langile_id` (`langile_id`),
  CONSTRAINT `fitxaketak_ibfk_1` FOREIGN KEY (`langile_id`) REFERENCES `langile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitxaketak`
--

LOCK TABLES `fitxaketak` WRITE;
/*!40000 ALTER TABLE `fitxaketak` DISABLE KEYS */;
INSERT INTO `fitxaketak` VALUES (1,1,'sarrera','2024-01-22 08:00:00'),(2,1,'irteera','2024-01-22 16:00:00'),(3,2,'sarrera','2024-01-22 08:00:00'),(4,2,'irteera','2024-01-22 16:00:00'),(5,3,'sarrera','2024-01-22 08:00:00'),(6,3,'irteera','2024-01-22 16:00:00'),(7,4,'sarrera','2024-01-22 08:00:00'),(8,4,'irteera','2024-01-22 16:00:00'),(9,5,'sarrera','2024-01-22 08:00:00'),(10,5,'irteera','2024-01-22 16:00:00'),(11,6,'sarrera','2024-01-22 08:00:00'),(12,6,'irteera','2024-01-22 16:00:00'),(13,7,'sarrera','2024-01-22 08:00:00'),(14,7,'irteera','2024-01-22 16:00:00'),(15,8,'sarrera','2024-01-22 08:00:00'),(16,8,'irteera','2024-01-22 16:00:00'),(17,9,'sarrera','2024-01-22 08:00:00'),(18,9,'irteera','2024-01-22 16:00:00'),(19,10,'sarrera','2024-01-22 08:00:00'),(20,10,'irteera','2024-01-22 16:00:00'),(21,11,'sarrera','2024-01-22 08:00:00'),(22,11,'irteera','2024-01-22 16:00:00'),(23,12,'sarrera','2024-01-22 08:00:00'),(24,12,'irteera','2024-01-22 16:00:00'),(25,13,'sarrera','2024-01-22 08:00:00'),(26,13,'irteera','2024-01-22 16:00:00'),(27,14,'sarrera','2024-01-22 08:00:00'),(28,14,'irteera','2024-01-22 16:00:00'),(29,15,'sarrera','2024-01-22 08:00:00'),(30,15,'irteera','2024-01-22 16:00:00'),(31,16,'sarrera','2024-01-22 08:00:00'),(32,16,'irteera','2024-01-22 16:00:00'),(33,17,'sarrera','2024-01-22 08:00:00'),(34,17,'irteera','2024-01-22 16:00:00'),(35,18,'sarrera','2024-01-22 08:00:00'),(36,18,'irteera','2024-01-22 16:00:00'),(37,19,'sarrera','2024-01-22 08:00:00'),(38,19,'irteera','2024-01-22 16:00:00'),(39,20,'sarrera','2024-01-22 08:00:00'),(40,20,'irteera','2024-01-22 16:00:00'),(41,21,'sarrera','2024-01-22 08:00:00'),(42,21,'irteera','2024-01-22 16:00:00'),(43,22,'sarrera','2024-01-22 08:00:00'),(44,22,'irteera','2024-01-22 16:00:00'),(45,23,'sarrera','2024-01-22 08:00:00'),(46,23,'irteera','2024-01-22 16:00:00'),(47,24,'sarrera','2024-01-22 08:00:00'),(48,24,'irteera','2024-01-22 16:00:00'),(49,25,'sarrera','2024-01-22 08:00:00'),(50,25,'irteera','2024-01-22 16:00:00'),(51,26,'sarrera','2024-01-22 08:00:00'),(52,26,'irteera','2024-01-22 16:00:00'),(53,27,'sarrera','2024-01-22 08:00:00'),(54,27,'irteera','2024-01-22 16:00:00'),(55,28,'sarrera','2024-01-22 08:00:00'),(56,28,'irteera','2024-01-22 16:00:00'),(57,29,'sarrera','2024-01-22 08:00:00'),(58,29,'irteera','2024-01-22 16:00:00'),(59,30,'sarrera','2024-01-22 08:00:00'),(60,30,'irteera','2024-01-22 16:00:00');
/*!40000 ALTER TABLE `fitxaketak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hornitzaile`
--

DROP TABLE IF EXISTS `hornitzaile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hornitzaile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enpresa_izena` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hornitzaile`
--

LOCK TABLES `hornitzaile` WRITE;
/*!40000 ALTER TABLE `hornitzaile` DISABLE KEYS */;
INSERT INTO `hornitzaile` VALUES (1,'Osagaiak Euskadi S.L.','944123456','kontaktua@osagaiak.eus'),(2,'TeknoBanatzaileak','943987654','info@teknobanatzaileak.com'),(3,'Gipuzkoa Components','943555666','sales@gipuzkoacomp.eus'),(4,'Araba Logistika','945112233','logistika@araba.eus'),(5,'Bilbo Parts','944888999','bilboparts@gmail.com');
/*!40000 ALTER TABLE `hornitzaile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konponketak`
--

DROP TABLE IF EXISTS `konponketak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `konponketak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produktu_id` int NOT NULL,
  `langile_id` int NOT NULL,
  `arazoa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `konponketa_desk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ordukop` decimal(5,2) DEFAULT NULL,
  `piezak_kostua` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produktu_id` (`produktu_id`),
  KEY `langile_id` (`langile_id`),
  CONSTRAINT `konponketak_ibfk_1` FOREIGN KEY (`produktu_id`) REFERENCES `produktu` (`id`),
  CONSTRAINT `konponketak_ibfk_2` FOREIGN KEY (`langile_id`) REFERENCES `langile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konponketak`
--

LOCK TABLES `konponketak` WRITE;
/*!40000 ALTER TABLE `konponketak` DISABLE KEYS */;
INSERT INTO `konponketak` VALUES (1,1,2,'Pantaila hautsita','Pantaila aldatu',1.50,100.00),(2,2,3,'Bateria','Bateria berria',1.00,50.00),(3,3,7,'Ez du pizten','Plaka basea konpondu',3.00,120.00),(4,4,8,'Kristala apurtuta','Atzeko kristala aldatu',2.00,80.00),(5,5,11,'Botoia','Home botoia aldatu',1.00,30.00),(6,6,12,'Konektorea','Karga portua soldatu',1.50,20.00),(7,7,15,'Pantaila beltza','Kablea ordezkatu',0.50,10.00),(8,8,16,'Zarata','Garbitu eta koipeztatu',1.00,5.00),(9,9,20,'Teklatua','Tekla batzuk falta',1.00,45.00),(10,10,21,'Software','Fabrika berrezarpena',1.00,0.00),(11,11,24,'Karga','Ez du kargatzen',2.00,40.00),(12,12,25,'Pantaila','Pixela hilda',1.00,150.00),(13,13,29,'Tinta','Inprimagailu trabatuta',1.50,10.00),(14,14,2,'Wi-Fi','Antena aldatu',1.00,25.00),(15,15,3,'Bateria','Bateria puztuta',0.50,60.00),(16,16,7,'HDMI','Portua apurtuta',2.00,30.00),(17,17,8,'Kamara','Lentea zikina',1.00,20.00),(18,18,11,'Papera','Trabatuta',0.50,0.00),(19,19,12,'Pantaila','Ukipena ez dabil',1.50,90.00),(20,20,15,'Disko gogorra','SSD aldatu',1.00,70.00),(21,21,16,'Bozgorailua','Ez da entzuten',1.00,35.00),(22,22,20,'Kablea','Elikatze iturria',0.50,50.00),(23,23,21,'Wifi','Konexioa galtzen du',1.50,0.00),(24,24,24,'Teklatua','Likidoa isurita',2.50,80.00),(25,25,25,'Mikrofonoa','Ez du grabatzen',1.00,25.00),(26,26,29,'Karga','USB-C portua',2.00,30.00),(27,27,2,'Argia','LED fundituta',0.50,10.00),(28,28,3,'Papera','Rodilloak aldatu',1.00,20.00),(29,29,7,'Pantaila','Flex kablea',2.00,40.00),(30,30,8,'Bateria','Bateria zaharra',0.50,30.00);
/*!40000 ALTER TABLE `konponketak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `langile`
--

DROP TABLE IF EXISTS `langile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `langile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol_id` int NOT NULL,
  `soldata` decimal(10,2) NOT NULL,
  `izena` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abizena` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAN` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NAN` (`NAN`),
  KEY `rol_id` (`rol_id`),
  CONSTRAINT `langile_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `rolak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `langile`
--

LOCK TABLES `langile` WRITE;
/*!40000 ALTER TABLE `langile` DISABLE KEYS */;
INSERT INTO `langile` VALUES (1,1,3500.00,'Amaia','Agirre','78945612K','600111001'),(2,2,1800.00,'Jon','Etxeberria','45612378L','600111002'),(3,2,1850.00,'Mikel','Goiko','12345678M','600111003'),(4,3,1600.00,'Ane','Iturri','87654321N','600111004'),(5,4,1500.00,'Iker','Lopez','11223344P','600111005'),(6,4,1550.00,'Maite','Zabaleta','44332211Q','600111006'),(7,2,1900.00,'Unai','Bilbao','99887766R','600111007'),(8,2,1800.00,'Leire','Mendi','55667788S','600111008'),(9,3,1650.00,'Gorka','Uribe','22334455T','600111009'),(10,4,1500.00,'Saioa','Arriola','66778899V','600111010'),(11,2,1820.00,'Aitor','Garcia','33445566W','600111011'),(12,2,1800.00,'Nerea','Azkue','77889900X','600111012'),(13,3,1600.00,'Ander','Sanz','11112222Y','600111013'),(14,4,1500.00,'Julen','Iriondo','33334444Z','600111014'),(15,2,1800.00,'Oihane','Larrea','55556666A','600111015'),(16,2,1950.00,'Xabier','Ortiz','77778888B','600111016'),(17,3,1700.00,'Irati','Zabala','99990000C','600111017'),(18,4,1520.00,'Markel','Alonso','12121212D','600111018'),(19,4,1500.00,'Nagore','Diez','34343434E','600111019'),(20,2,1800.00,'Asier','Ruiz','56565656F','600111020'),(21,2,1800.00,'Uxue','Gomez','78787878G','600111021'),(22,3,1600.00,'Eneko','Perez','90909090H','600111022'),(23,4,1500.00,'Alazne','Sola','23232323J','600111023'),(24,2,1880.00,'Ibai','Martin','45454545K','600111024'),(25,2,1800.00,'Garazi','Flores','67676767L','600111025'),(26,3,1600.00,'Beñat','Etxebarria','89898989M','600111026'),(27,4,1450.00,'Aroa','Gil','01010101N','600111027'),(28,4,1500.00,'Lander','Sanchez','10293847P','600111028'),(29,2,1800.00,'June','Vidal','56473829Q','600111029'),(30,1,3200.00,'Kepa','Amuriza','91827364R','600111030');
/*!40000 ALTER TABLE `langile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produktuak`
--

DROP TABLE IF EXISTS `produktuak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produktuak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `marka` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prezioa` decimal(10,2) NOT NULL,
  `stock` int NOT NULL DEFAULT '10',
  `egoera` enum('Berria','Birgaitua') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hornitzaile_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hornitzaile_id` (`hornitzaile_id`),
  CONSTRAINT `produktuak_ibfk_1` FOREIGN KEY (`hornitzaile_id`) REFERENCES `hornitzaile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produktuak`
--

LOCK TABLES `produktuak` WRITE;
/*!40000 ALTER TABLE `produktuak` DISABLE KEYS */;
INSERT INTO `produktuak` VALUES (1,'EliteBook 840','HP',450.00,15,'Birgaitua','Ordenagailua',NULL),(2,'Latitude 7390','Dell',400.00,12,'Birgaitua','Ordenagailua',6),(3,'Galaxy S10','Samsung',250.00,20,'Birgaitua','Mugikorra',16),(4,'iPhone 11','Apple',380.00,8,'Birgaitua','Mugikorra',2),(5,'iPad Air','Apple',420.00,10,'Berria','Tableta',24),(6,'LG 24MP59','LG',90.00,25,'Berria','Pantaila',NULL),(7,'Curved 27','Samsung',150.00,7,'Berria','Pantaila',NULL),(8,'LaserJet 1100','HP',75.00,5,'Birgaitua','Inprimagailua',NULL),(9,'ThinkPad X1','Lenovo',480.00,6,'Berria','Ordenagailua',27),(10,'Mi 10','Xiaomi',300.00,14,'Berria','Mugikorra',26),(11,'Tab S6','Samsung',350.00,9,'Berria','Tableta',8),(12,'UltraSharp','Dell',200.00,11,'Berria','Pantaila',NULL),(13,'Pixma','Canon',85.00,30,'Berria','Inprimagailua',NULL),(14,'OnePlus Nord','OnePlus',290.00,12,'Berria','Mugikorra',17),(15,'ZenBook','Asus',500.00,4,'Berria','Ordenagailua',NULL),(16,'GW2480','BenQ',110.00,8,'Berria','Pantaila',1),(17,'Pixel 5','Google',320.00,6,'Berria','Mugikorra',NULL),(18,'EcoTank','Epson',100.00,10,'Berria','Inprimagailua',5),(19,'Tab P11','Lenovo',250.00,15,'Berria','Tableta',NULL),(20,'ProBook 450','HP',430.00,7,'Birgaitua','Ordenagailua',9),(21,'iPhone XR','Apple',350.00,9,'Birgaitua','Mugikorra',5),(22,'UltraFine','LG',210.00,3,'Berria','Pantaila',NULL),(23,'HL-1210W','Brother',70.00,18,'Berria','Inprimagailua',NULL),(24,'Aspire 5','Acer',380.00,6,'Berria','Ordenagailua',NULL),(25,'Galaxy A52','Samsung',240.00,20,'Berria','Mugikorra',NULL),(26,'MediaPad T5','Huawei',200.00,12,'Birgaitua','Tableta',6),(27,'223V5','Philips',85.00,10,'Berria','Pantaila',13),(28,'Selphy','Canon',65.00,5,'Berria','Inprimagailua',NULL),(29,'MacBook Air','Apple',650.00,4,'Birgaitua','Ordenagailua',NULL),(30,'Redmi Note 10','Xiaomi',220.00,16,'Berria','Mugikorra',2);
/*!40000 ALTER TABLE `produktuak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolak`
--

DROP TABLE IF EXISTS `rolak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `izena` (`izena`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolak`
--

LOCK TABLES `rolak` WRITE;
/*!40000 ALTER TABLE `rolak` DISABLE KEYS */;
INSERT INTO `rolak` VALUES (3,'Biltegizaina'),(4,'Saltzailea'),(2,'Teknikaria'),(1,'Zuzendaria');
/*!40000 ALTER TABLE `rolak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-29  9:51:30
