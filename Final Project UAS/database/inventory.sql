CREATE DATABASE  IF NOT EXISTS `inventory` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventory`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: inventory
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES latin */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = latin1 */;
CREATE TABLE `notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contents` text NOT NULL,
  `admin` varchar(20) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'Restock BRG001 next week','','aktif');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sbrg_keluar`
--

DROP TABLE IF EXISTS `sbrg_keluar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = latin1 */;
CREATE TABLE `sbrg_keluar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idx` int NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int NOT NULL,
  `penerima` varchar(55) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbrg_keluar`
--

LOCK TABLES `sbrg_keluar` WRITE;
/*!40000 ALTER TABLE `sbrg_keluar` DISABLE KEYS */;
INSERT INTO `sbrg_keluar` VALUES (1,1,'2023-01-16',50,'Indomaret','Terjual'),(2,2,'2023-02-06',100,'CV Mitra Sejati','Terjual'),(3,3,'2023-03-21',50,'Alfamart','Terjual'),(4,4,'2023-04-11',150,'Toko Serba Ada','Terjual'),(5,5,'2023-05-02',50,'Lotte Mart','Terjual'),(6,6,'2023-06-04',100,'CV Sentosa Makmur','Terjual'),(7,7,'2023-01-23',150,'Indomaret','Terjual'),(8,8,'2023-02-19',100,'Alfamart','Terjual'),(9,9,'2023-03-06',100,'Toko Sembilan','Terjual'),(10,10,'2023-04-16',200,'Lotte Mart','Terjual'),(11,11,'2023-05-11',100,'CV Maju Jaya','Terjual'),(12,12,'2023-06-08',200,'CV Sentosa Makmur','Terjual'),(13,13,'2023-01-30',150,'Indomaret','Terjual'),(14,14,'2023-02-13',200,'Alfamart','Terjual'),(15,15,'2023-03-19',75,'Toko Serba Ada','Terjual'),(16,16,'2023-04-06',100,'Toko Sembilan','Terjual'),(17,17,'2023-05-26',200,'Lotte Mart','Terjual'),(18,18,'2023-06-02',150,'CV Maju Jaya','Terjual'),(19,19,'2023-02-09',100,'Indomaret','Terjual'),(20,20,'2023-03-13',200,'Alfamart','Terjual'),(21,21,'2023-03-26',100,'Toko Serba Ada','Terjual'),(22,22,'2023-04-03',150,'Toko Sembilan','Terjual'),(23,23,'2023-05-16',100,'Lotte Mart','Terjual'),(24,24,'2023-06-07',100,'CV Sentosa Makmur','Terjual'),(25,25,'2023-01-19',50,'Indomaret','Terjual'),(26,26,'2023-02-21',100,'Indomaret','Terjual'),(27,27,'2023-03-09',100,'Alfamart','Terjual'),(28,28,'2023-04-18',200,'Toko Serba Ada','Terjual'),(29,29,'2023-05-13',150,'Lotte Mart','Terjual'),(30,30,'2023-06-10',100,'CV Maju Jaya','Terjual'),(31,31,'2023-01-29',200,'Indomaret','Terjual'),(32,32,'2023-02-16',150,'Alfamart','Terjual'),(33,33,'2023-03-30',100,'Toko Serba Ada','Terjual'),(34,34,'2023-04-21',300,'Lotte Mart','Terjual'),(35,35,'2023-05-06',250,'CV Maju Jaya','Terjual'),(36,36,'2023-06-03',200,'Indomaret','Terjual'),(37,37,'2023-01-31',150,'Alfamart','Terjual'),(38,38,'2023-02-23',200,'Toko Serba Ada','Terjual'),(39,39,'2023-03-11',100,'Lotte Mart','Terjual'),(40,40,'2023-04-06',150,'CV Maju Jaya','Terjual'),(41,41,'2023-05-19',50,'Indomaret','Terjual'),(42,42,'2023-06-04',200,'Alfamart','Terjual'),(43,43,'2023-01-26',150,'Toko Serba Ada','Terjual'),(44,44,'2023-02-13',100,'Lotte Mart','Terjual'),(45,45,'2023-03-30',150,'CV Maju Jaya','Terjual'),(46,46,'2023-04-06',200,'Indomaret','Terjual'),(47,47,'2023-05-21',250,'Alfamart','Terjual'),(48,48,'2023-06-08',300,'Toko Serba Ada','Terjual'),(49,49,'2023-01-16',250,'Lotte Mart','Terjual'),(50,50,'2023-02-19',200,'CV Maju Jaya','Terjual'),(51,51,'2023-03-06',200,'Indomaret','Terjual'),(52,52,'2023-04-23',150,'Alfamart','Terjual'),(53,53,'2023-05-11',100,'Toko Serba Ada','Terjual'),(54,54,'2023-06-02',250,'Lotte Mart','Terjual'),(55,55,'2023-01-29',200,'CV Mitra Sejati','Terjual'),(56,56,'2023-02-16',150,'CV Sentosa Makmur','Terjual'),(57,57,'2023-03-19',150,'CV Maju Jaya','Terjual'),(58,58,'2023-04-03',200,'Indomaret','Terjual'),(59,59,'2023-05-16',250,'Alfamart','Terjual'),(60,60,'2023-06-10',100,'Toko Serba Ada','Terjual'),(61,61,'2023-06-05',150,'Lotte Mart','Terjual'),(62,62,'2023-01-21',200,'CV Mitra Sejati','Terjual'),(63,63,'2023-02-11',250,'CV Sentosa Makmur','Terjual'),(64,64,'2023-03-29',150,'CV Maju Jaya','Terjual'),(65,65,'2023-04-16',200,'Indomaret','Terjual'),(66,66,'2023-05-03',150,'Alfamart','Terjual'),(67,67,'2023-06-09',100,'Toko Serba Ada','Terjual'),(68,68,'2023-01-31',200,'Lotte Mart','Terjual'),(69,69,'2023-02-26',250,'CV Mitra Sejati','Terjual'),(70,70,'2023-03-13',200,'CV Sentosa Makmur','Terjual'),(71,71,'2023-04-21',150,'CV Maju Jaya','Terjual'),(72,72,'2023-05-08',150,'Indomaret','Terjual'),(73,73,'2023-06-06',200,'Alfamart','Terjual'),(74,74,'2023-01-23',250,'Toko Serba Ada','Terjual'),(75,75,'2023-02-09',300,'Lotte Mart','Terjual'),(76,76,'2023-03-27',350,'Toko Serba Ada','Terjual'),(77,77,'2023-04-19',200,'CV Mitra Sejati','Terjual'),(78,78,'2023-05-24',150,'CV Sentosa Makmur','Terjual'),(79,79,'2023-06-03',100,'CV Maju Jaya','Terjual'),(80,80,'2023-01-15',200,'Indomaret','Terjual'),(81,81,'2023-02-19',250,'Alfamart','Terjual'),(82,82,'2023-03-06',200,'Toko Serba Ada','Terjual'),(83,83,'2023-04-23',150,'Lotte Mart','Terjual'),(84,84,'2023-05-20',100,'CV Mitra Sejati','Terjual'),(85,85,'2023-06-08',150,'CV Sentosa Makmur','Terjual'),(86,86,'2023-01-29',200,'CV Maju Jaya','Terjual'),(87,87,'2023-02-16',150,'Indomaret','Terjual'),(88,88,'2023-03-04',200,'Alfamart','Terjual'),(89,89,'2023-04-30',250,'Toko Serba Ada','Terjual'),(90,90,'2023-05-18',150,'Lotte Mart','Terjual'),(91,91,'2023-06-10',200,'CV Mitra Sejati','Terjual'),(92,92,'2023-02-01',250,'CV Sentosa Makmur','Terjual'),(93,93,'2023-02-17',200,'CV Maju Jaya','Terjual'),(94,94,'2023-03-05',250,'Indomaret','Terjual'),(95,95,'2023-04-22',300,'Alfamart','Terjual'),(96,96,'2023-05-21',200,'Toko Serba Ada','Terjual'),(97,97,'2023-06-07',150,'Lotte Mart','Terjual'),(98,98,'2023-01-27',100,'CV Mitra Sejati','Terjual'),(99,99,'2023-02-18',100,'CV Sentosa Makmur','Terjual'),(100,100,'2023-03-07',200,'CV Maju Jaya','Terjual'),(101,30,'2023-06-13',25,'PT Sumber Alfaria Trijaya Tbk.','Terjual'),(102,12,'2023-06-15',25,'PT Sumber Alfaria Trijaya Tbk.','Terjual'),(103,2,'2023-06-15',25,'PT Sumber Alfaria Trijaya Tbk.','Terjual');
/*!40000 ALTER TABLE `sbrg_keluar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sbrg_masuk`
--

DROP TABLE IF EXISTS `sbrg_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = latin1 */;
CREATE TABLE `sbrg_masuk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idx` int NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int NOT NULL,
  `pemasok` varchar(55) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbrg_masuk`
--

LOCK TABLES `sbrg_masuk` WRITE;
/*!40000 ALTER TABLE `sbrg_masuk` DISABLE KEYS */;
INSERT INTO `sbrg_masuk` VALUES (1,1,'2023-01-15',100,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(2,2,'2023-02-05',150,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(3,3,'2023-03-20',75,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(4,4,'2023-04-10',200,'PT Sania Group','Restock'),(5,5,'2023-05-01',100,'PT Sania Group','Restock'),(6,6,'2023-06-03',300,'PT Sania Group','Restock'),(7,7,'2023-01-22',250,'PT Sosro','Restock'),(8,8,'2023-02-18',200,'PT Sosro','Restock'),(9,9,'2023-03-05',150,'PT Sosro','Restock'),(10,10,'2023-04-15',300,'PT Aqua Golden Mississippi Tbk','Restock'),(11,11,'2023-05-10',150,'PT Aqua Golden Mississippi Tbk','Restock'),(12,12,'2023-06-07',400,'PT Aqua Golden Mississippi Tbk','Restock'),(13,13,'2023-01-29',200,'PT Amerta Indah Otsuka','Restock'),(14,14,'2023-02-12',250,'PT Amerta Indah Otsuka','Restock'),(15,15,'2023-03-18',100,'PT Amerta Indah Otsuka','Restock'),(16,16,'2023-04-05',150,'PT Ultrajaya Milk Industry Tbk','Restock'),(17,17,'2023-05-25',300,'PT Ultrajaya Milk Industry Tbk','Restock'),(18,18,'2023-06-01',250,'PT Ultrajaya Milk Industry Tbk','Restock'),(19,19,'2023-02-08',200,'PT Frisian Flag Indonesia','Restock'),(20,20,'2023-03-12',300,'PT Frisian Flag Indonesia','Restock'),(21,21,'2023-03-25',150,'PT Frisian Flag Indonesia','Restock'),(22,22,'2023-04-02',250,'PT Nutrisari Indonesia','Restock'),(23,23,'2023-05-15',200,'PT Nutrisari Indonesia','Restock'),(24,24,'2023-06-06',150,'PT Nutrisari Indonesia','Restock'),(25,25,'2023-01-18',100,'PT Indolakto','Restock'),(26,26,'2023-02-20',200,'PT Indolakto','Restock'),(27,27,'2023-03-08',150,'PT Indolakto','Restock'),(28,28,'2023-04-17',250,'PT Nestle Indonesia','Restock'),(29,29,'2023-05-12',200,'PT Nestle Indonesia','Restock'),(30,30,'2023-06-09',150,'PT Nestle Indonesia','Restock'),(31,31,'2023-01-28',300,'PT ABC President Indonesia','Restock'),(32,32,'2023-02-15',250,'PT ABC President Indonesia','Restock'),(33,33,'2023-03-29',200,'PT ABC President Indonesia','Restock'),(34,34,'2023-04-20',400,'PT Mayora Indah Tbk','Restock'),(35,35,'2023-05-05',350,'PT Mayora Indah Tbk','Restock'),(36,36,'2023-06-02',300,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(37,37,'2023-01-30',200,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(38,38,'2023-02-22',250,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(39,39,'2023-03-10',150,'PT Unilever Indonesia Tbk','Restock'),(40,40,'2023-04-05',200,'PT Unilever Indonesia Tbk','Restock'),(41,41,'2023-05-18',100,'PT Unilever Indonesia Tbk','Restock'),(42,42,'2023-06-03',250,'PT Wings Surya','Restock'),(43,43,'2023-01-25',200,'PT Wings Surya','Restock'),(44,44,'2023-02-12',150,'PT Wings Surya','Restock'),(45,45,'2023-03-29',200,'PT SC Johnson Indonesia','Restock'),(46,46,'2023-04-05',250,'PT SC Johnson Indonesia','Restock'),(47,47,'2023-05-20',300,'PT SC Johnson Indonesia','Restock'),(48,48,'2023-06-07',400,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(49,49,'2023-01-15',350,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(50,50,'2023-02-18',300,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(51,51,'2023-03-05',250,'PT Mayora Indah Tbk','Restock'),(52,52,'2023-04-22',200,'PT Mayora Indah Tbk','Restock'),(53,53,'2023-05-10',150,'PT Mayora Indah Tbk','Restock'),(54,54,'2023-06-01',300,'PT Wings Surya','Restock'),(55,55,'2023-01-28',250,'PT Wings Surya','Restock'),(56,56,'2023-02-15',200,'PT Wings Surya','Restock'),(57,57,'2023-03-18',200,'PT Mayora Indah Tbk','Restock'),(58,58,'2023-04-02',250,'PT Mayora Indah Tbk','Restock'),(59,59,'2023-05-15',300,'PT Mayora Indah Tbk','Restock'),(60,60,'2023-06-09',150,'PT Santos Jaya Abadi','Restock'),(61,61,'2023-06-04',200,'PT Santos Jaya Abadi','Restock'),(62,62,'2023-01-20',250,'PT Santos Jaya Abadi','Restock'),(63,63,'2023-02-10',300,'PT Sinar Sosro','Restock'),(64,64,'2023-03-28',200,'PT Sinar Sosro','Restock'),(65,65,'2023-04-15',250,'PT Sinar Sosro','Restock'),(66,66,'2023-05-02',200,'PT Unilever Indonesia Tbk','Restock'),(67,67,'2023-06-08',150,'PT Unilever Indonesia Tbk','Restock'),(68,68,'2023-01-30',250,'PT Unilever Indonesia Tbk','Restock'),(69,69,'2023-02-25',300,'PT Mayora Indah Tbk','Restock'),(70,70,'2023-03-12',250,'PT Mayora Indah Tbk','Restock'),(71,71,'2023-04-20',200,'PT Mayora Indah Tbk','Restock'),(72,72,'2023-05-07',200,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(73,73,'2023-06-05',250,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(74,74,'2023-01-22',300,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(75,75,'2023-02-08',350,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(76,76,'2023-03-26',400,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(77,77,'2023-04-18',250,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(78,78,'2023-05-23',200,'PT Unilever Indonesia Tbk','Restock'),(79,79,'2023-06-02',150,'PT Unilever Indonesia Tbk','Restock'),(80,80,'2023-01-14',250,'PT Unilever Indonesia Tbk','Restock'),(81,81,'2023-02-18',300,'PT Procter & Gamble Home Products','Restock'),(82,82,'2023-03-05',250,'PT Procter & Gamble Home Products','Restock'),(83,83,'2023-04-22',200,'PT Procter & Gamble Home Products','Restock'),(84,84,'2023-05-19',150,'PT Reckitt Benckiser','Restock'),(85,85,'2023-06-07',200,'PT Reckitt Benckiser','Restock'),(86,86,'2023-01-28',250,'PT Reckitt Benckiser','Restock'),(87,87,'2023-02-15',200,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(88,88,'2023-03-03',250,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(89,89,'2023-04-29',300,'PT Indofood CBP Sukses Makmur Tbk','Restock'),(90,90,'2023-05-17',150,'PT Mayora Indah Tbk','Restock'),(91,91,'2023-06-09',200,'PT Mayora Indah Tbk','Restock'),(92,92,'2023-01-31',250,'PT Mayora Indah Tbk','Restock'),(93,93,'2023-02-16',300,'PT Santos Jaya Abadi','Restock'),(94,94,'2023-03-04',350,'PT Santos Jaya Abadi','Restock'),(95,95,'2023-04-21',400,'PT Santos Jaya Abadi','Restock'),(96,96,'2023-05-20',250,'PT Mayora Indah Tbk','Restock'),(97,97,'2023-06-06',200,'PT Mayora Indah Tbk','Restock'),(98,98,'2023-01-26',150,'PT Mayora Indah Tbk','Restock'),(99,99,'2023-02-17',200,'PT Sinar Sosro','Restock'),(100,100,'2023-03-06',250,'PT Sinar Sosro','Restock'),(101,91,'2023-06-13',200,'PT Mayora Indah Tbk','Restock'),(102,91,'2023-06-13',50,'PT Mayora Indah Tbk','Restock'),(103,90,'2023-06-15',200,'PT Mayora Indah Tbk','Restock'),(104,92,'2023-06-15',150,'PT Mayora Indah Tbk','Restock');
/*!40000 ALTER TABLE `sbrg_masuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slogin`
--

DROP TABLE IF EXISTS `slogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = latin1 */;
CREATE TABLE `slogin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `role` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slogin`
--

LOCK TABLES `slogin` WRITE;
/*!40000 ALTER TABLE `slogin` DISABLE KEYS */;
INSERT INTO `slogin` VALUES (1,'admin','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918','Admin','Warehouse Administrator','admin@inventory.com'),(2,'surya','da30c13f38f7ac6fc963e61cba233ff40f3881ab3c97d9bc1f27a3b259a320fd','Admin','Warehouse Administrator','suryaadhi@gmail.com');
/*!40000 ALTER TABLE `slogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sstock_brg`
--

DROP TABLE IF EXISTS `sstock_brg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = latin1 */;
CREATE TABLE `sstock_brg` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(55) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `merk` varchar(40) NOT NULL,
  `ukuran` int NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `lokasi` varchar(55) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sstock_brg`
--

LOCK TABLES `sstock_brg` WRITE;
/*!40000 ALTER TABLE `sstock_brg` DISABLE KEYS */;
INSERT INTO `sstock_brg` VALUES (1,'Indomie Goreng 85 gram','Makanan','Indomie',85,'gram','Rak A',50),(2,'Indomie Soto 70 gram','Makanan','Indomie',70,'gram','Rak A',25),(3,'Indomie Ayam Bawang 69 gram','Makanan','Indomie',69,'gram','Rak B',25),(4,'Sania Minyak Goreng 1 liter','Rumah Tangga','Sania',1,'liter','Rak C',50),(5,'Sania Minyak Goreng 2 liter','Rumah Tangga','Sania',2,'liter','Rak C',50),(6,'Sania Minyak Goreng 330 ml','Rumah Tangga','Sania',330,'ml','Rak C',200),(7,'Teh Botol Sosro 450 ml','Minuman','Teh Botol Sosro',450,'ml','Rak D',100),(8,'Teh Botol Sosro 350 ml','Minuman','Teh Botol Sosro',350,'ml','Rak D',100),(9,'Teh Botol Sosro Jasmine 500 ml','Minuman','Teh Botol Sosro',500,'ml','Rak D',50),(10,'Aqua Air Mineral 600 ml','Minuman','Aqua',600,'ml','Rak E',100),(11,'Aqua Air Mineral 1 liter','Minuman','Aqua',1,'liter','Rak E',50),(12,'Aqua Air Mineral 330 ml','Minuman','Aqua',330,'ml','Rak E',175),(13,'Pocari Sweat 500 ml','Minuman','Pocari Sweat',500,'ml','Rak F',50),(14,'Pocari Sweat 350 ml','Minuman','Pocari Sweat',350,'ml','Rak F',50),(15,'Pocari Sweat Ion Water 1 liter','Minuman','Pocari Sweat',1,'liter','Rak F',25),(16,'Ultra Milk UHT 1 liter','Minuman','Ultra Milk',1,'liter','Rak G',50),(17,'Ultra Milk UHT 200 ml','Minuman','Ultra Milk',200,'ml','Rak G',100),(18,'Ultra Milk UHT 500 ml','Minuman','Ultra Milk',500,'ml','Rak G',100),(19,'Frisian Flag Susu Kental Manis 380 gram','Minuman','Frisian Flag',380,'gram','Rak H',100),(20,'Frisian Flag Susu Kental Manis 170 gram','Minuman','Frisian Flag',170,'gram','Rak H',100),(21,'Frisian Flag Susu Kental Manis Coklat 380 gram','Minuman','Frisian Flag',380,'gram','Rak H',50),(22,'Nutrisari Jeruk 200 ml','Minuman','Nutrisari',200,'ml','Rak I',100),(23,'Nutrisari Mangga 200 ml','Minuman','Nutrisari',200,'ml','Rak I',100),(24,'Nutrisari Apel 200 ml','Minuman','Nutrisari',200,'ml','Rak I',50),(25,'Indomilk Susu UHT 1 liter','Minuman','Indomilk',1,'liter','Rak J',50),(26,'Indomilk Susu UHT 200 ml','Minuman','Indomilk',200,'ml','Rak J',100),(27,'Indomilk Susu UHT Coklat 1 liter','Minuman','Indomilk',1,'liter','Rak J',50),(28,'Milo 200 gram','Makanan','Milo',200,'gram','Rak K',50),(29,'Milo 400 gram','Makanan','Milo',400,'gram','Rak K',50),(30,'Milo 1 kilogram','Makanan','Milo',1000,'gram','Rak K',25),(31,'Kopi ABC 3 in 1 20 gram','Minuman','Kopi ABC',20,'gram','Rak L',100),(32,'Kopi ABC 3 in 1 30 gram','Minuman','Kopi ABC',30,'gram','Rak L',100),(33,'Kopi ABC 3 in 1 Susu 20 gram','Minuman','Kopi ABC',20,'gram','Rak L',100),(34,'Kopiko Candy 50 gram','Makanan','Kopiko',50,'gram','Rak M',100),(35,'Kopiko Candy Cappuccino 50 gram','Makanan','Kopiko',50,'gram','Rak M',100),(36,'Chitato Rasa Original 75 gram','Makanan','Chitato',75,'gram','Rak N',100),(37,'Chitato Rasa BBQ 75 gram','Makanan','Chitato',75,'gram','Rak N',50),(38,'Chitato Rasa Keju 75 gram','Makanan','Chitato',75,'gram','Rak N',50),(39,'Rinso Deterjen 800 gram','Rumah Tangga','Rinso',800,'gram','Rak O',50),(40,'Rinso Deterjen 1,8 kilogram','Rumah Tangga','Rinso',1800,'gram','Rak O',50),(41,'Rinso Deterjen 3,5 kilogram','Rumah Tangga','Rinso',3500,'gram','Rak O',50),(42,'Molto Pewangi Pakaian 900 ml','Rumah Tangga','Molto',900,'ml','Rak P',50),(43,'Molto Pewangi Pakaian 1,8 liter','Rumah Tangga','Molto',1800,'ml','Rak P',50),(44,'Molto Pewangi Pakaian 3,5 liter','Rumah Tangga','Molto',3500,'ml','Rak P',50),(45,'Baygon Semprot 600 ml','Rumah Tangga','Baygon',600,'ml','Rak Q',50),(46,'Baygon Semprot 300 ml','Rumah Tangga','Baygon',300,'ml','Rak Q',50),(47,'Baygon Cair 450 ml','Rumah Tangga','Baygon',450,'ml','Rak Q',50),(48,'Mie Sedap Rasa Ayam Bawang 85 gram','Makanan','Mie Sedap',85,'gram','Rak R',100),(49,'Mie Sedap Rasa Soto 85 gram','Makanan','Mie Sedap',85,'gram','Rak R',100),(50,'Mie Sedap Rasa Baso Sapi 85 gram','Makanan','Mie Sedap',85,'gram','Rak R',100),(51,'Good Day Cappuccino 180 ml','Minuman','Good Day',180,'ml','Rak S',50),(52,'Good Day Latte 180 ml','Minuman','Good Day',180,'ml','Rak S',50),(53,'Good Day Caramel 180 ml','Minuman','Good Day',180,'ml','Rak S',50),(54,'So Klin Deterjen 800 gram','Rumah Tangga','So Klin',800,'gram','Rak T',50),(55,'So Klin Deterjen 1,8 kilogram','Rumah Tangga','So Klin',1800,'gram','Rak T',50),(56,'So Klin Deterjen 3,5 kilogram','Rumah Tangga','So Klin',3500,'gram','Rak T',50),(57,'Beng-Beng Coklat 20 gram','Makanan','Beng-Beng',20,'gram','Rak U',50),(58,'Beng-Beng Maxx 20 gram','Makanan','Beng-Beng',20,'gram','Rak U',50),(59,'Beng-Beng Wafer Coklat 20 gram','Makanan','Beng-Beng',20,'gram','Rak U',50),(60,'Kopi Kapal Api 200 gram','Minuman','Kopi Kapal Api',200,'gram','Rak V',50),(61,'Kopi Kapal Api 100 gram','Minuman','Kopi Kapal Api',100,'gram','Rak V',50),(62,'Kopi Kapal Api Special Mix 200 gram','Minuman','Kopi Kapal Api',200,'gram','Rak V',50),(63,'Teh Pucuk Harum 500 ml','Minuman','Teh Pucuk Harum',500,'ml','Rak W',50),(64,'Teh Pucuk Harum 350 ml','Minuman','Teh Pucuk Harum',350,'ml','Rak W',50),(65,'Teh Pucuk Harum Jasmine 500 ml','Minuman','Teh Pucuk Harum',500,'ml','Rak W',50),(66,'Royco Bumbu Masak 10 gram','Makanan','Royco',10,'gram','Rak X',50),(67,'Royco Bumbu Masak 25 gram','Makanan','Royco',25,'gram','Rak X',50),(68,'Royco Bumbu Masak Rasa Ayam 10 gram','Makanan','Royco',10,'gram','Rak X',50),(69,'Top Coffee 150 ml','Minuman','Top Coffee',150,'ml','Rak Y',50),(70,'Top Coffee Latte 150 ml','Minuman','Top Coffee',150,'ml','Rak Y',50),(71,'Top Coffee Cappuccino 150 ml','Minuman','Top Coffee',150,'ml','Rak Y',50),(72,'Bear Brand Susu Kental Manis 380 gram','Minuman','Bear Brand',380,'gram','Rak Z',50),(73,'Bear Brand Susu Kental Manis 170 gram','Minuman','Bear Brand',170,'gram','Rak Z',50),(74,'Bear Brand Susu Kental Manis Coklat 380 gram','Minuman','Bear Brand',380,'gram','Rak Z',50),(75,'Lays Rasa Original 75 gram','Makanan','Lays',75,'gram','Rak AA',50),(76,'Lays Rasa BBQ 75 gram','Makanan','Lays',75,'gram','Rak AA',50),(77,'Lays Rasa Keju 75 gram','Makanan','Lays',75,'gram','Rak AA',50),(78,'Surf Deterjen 800 gram','Rumah Tangga','Surf',800,'gram','Rak BB',50),(79,'Surf Deterjen 1,8 kilogram','Rumah Tangga','Surf',1800,'gram','Rak BB',50),(80,'Surf Deterjen 3,5 kilogram','Rumah Tangga','Surf',3500,'gram','Rak BB',50),(81,'Downy Pewangi Pakaian 900 ml','Rumah Tangga','Downy',900,'ml','Rak CC',50),(82,'Downy Pewangi Pakaian 1,8 liter','Rumah Tangga','Downy',1800,'ml','Rak CC',50),(83,'Downy Pewangi Pakaian 3,5 liter','Rumah Tangga','Downy',3500,'ml','Rak CC',50),(84,'Hit Semprot 600 ml','Rumah Tangga','Hit',600,'ml','Rak DD',50),(85,'Hit Semprot 300 ml','Rumah Tangga','Hit',300,'ml','Rak DD',50),(86,'Hit Cair 450 ml','Rumah Tangga','Hit',450,'ml','Rak DD',50),(87,'Supermie Rasa Ayam Bawang 75 gram','Makanan','Supermie',75,'gram','Rak EE',50),(88,'Supermie Rasa Soto 75 gram','Makanan','Supermie',75,'gram','Rak EE',50),(89,'Supermie Rasa Baso Sapi 75 gram','Makanan','Supermie',75,'gram','Rak EE',50),(90,'Gery Saluut 135 gram','Makanan','Gery',135,'gram','Rak FF',200),(91,'Gery Saluut Coklat 135 gram','Makanan','Gery',135,'gram','Rak FF',250),(92,'Gery Saluut Keju 135 gram','Makanan','Gery',135,'gram','Rak FF',150),(93,'Kapal Api ABC Susu 20 gram','Minuman','Kapal Api',20,'gram','Rak GG',100),(94,'Kapal Api ABC Susu Kurma 20 gram','Minuman','Kapal Api',20,'gram','Rak GG',100),(95,'Kapal Api ABC Susu Vanilla 20 gram','Minuman','Kapal Api',20,'gram','Rak GG',100),(96,'Torabika Cappuccino 20 gram','Minuman','Torabika',20,'gram','Rak HH',50),(97,'Torabika Cappuccino 30 gram','Minuman','Torabika',30,'gram','Rak HH',50),(98,'Torabika Cappuccino Susu 20 gram','Minuman','Torabika',20,'gram','Rak HH',50),(99,'Teh Gelas 250 ml','Minuman','Teh Gelas',250,'ml','Rak II',100),(100,'Teh Gelas 150 ml','Minuman','Teh Gelas',150,'ml','Rak II',50);
/*!40000 ALTER TABLE `sstock_brg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'inventory'
--

--
-- Dumping routines for database 'inventory'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-20 14:26:00
