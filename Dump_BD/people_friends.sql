-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: people_friends
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `human_friends_id` bigint unsigned NOT NULL,
  `vyuchnie_zivotvie_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `human_friends_id` (`human_friends_id`),
  UNIQUE KEY `vyuchnie_zivotvie_id` (`vyuchnie_zivotvie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camel`
--

DROP TABLE IF EXISTS `camel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camel` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `dete_of_bitrh` date DEFAULT NULL,
  `comands` text,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camel`
--

LOCK TABLES `camel` WRITE;
/*!40000 ALTER TABLE `camel` DISABLE KEYS */;
INSERT INTO `camel` VALUES (1,'Горбатый','1999-01-12','скачет','2023-10-12 12:08:33',NULL);
/*!40000 ALTER TABLE `camel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat`
--

DROP TABLE IF EXISTS `cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `dete_of_bitrh` date DEFAULT NULL,
  `comands` text,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat`
--

LOCK TABLES `cat` WRITE;
/*!40000 ALTER TABLE `cat` DISABLE KEYS */;
INSERT INTO `cat` VALUES (1,'barsik','2021-01-01','лежать, голос','2023-10-12 09:57:59','2023-10-13 10:22:37'),(2,'tom','2019-12-10','голос','2023-10-12 09:57:59',NULL),(3,'moris','2020-02-02','голос','2023-10-12 09:57:59',NULL),(4,'bobi','2022-03-03','голос','2023-10-12 09:57:59',NULL),(5,'tomas','2018-05-05','голос','2023-10-12 09:57:59',NULL);
/*!40000 ALTER TABLE `cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dog`
--

DROP TABLE IF EXISTS `dog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dog` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `dete_of_bitrh` date DEFAULT NULL,
  `comands` text,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dog`
--

LOCK TABLES `dog` WRITE;
/*!40000 ALTER TABLE `dog` DISABLE KEYS */;
INSERT INTO `dog` VALUES (1,'tusik','2021-01-01','голос','2023-10-12 09:58:09',NULL),(2,'sharik','2019-12-10','голос','2023-10-12 09:58:09',NULL),(3,'rigik','2020-02-02','голос','2023-10-12 09:58:09',NULL),(4,'fred','2022-03-03','голос','2023-10-12 09:58:09',NULL),(5,'barsik','2018-05-05','голос','2023-10-12 09:58:09',NULL),(6,'Gaz','1999-01-10','голос, лежать','2023-10-12 13:39:33',NULL);
/*!40000 ALTER TABLE `dog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donkey`
--

DROP TABLE IF EXISTS `donkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donkey` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `dete_of_bitrh` date DEFAULT NULL,
  `comands` text,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donkey`
--

LOCK TABLES `donkey` WRITE;
/*!40000 ALTER TABLE `donkey` DISABLE KEYS */;
INSERT INTO `donkey` VALUES (1,'ssss','2000-01-01','голос','2023-10-12 09:58:09',NULL),(2,'dfdf','2019-12-10','голос','2023-10-12 09:58:09',NULL),(3,'asew','1988-11-02','голос','2023-10-12 09:58:09',NULL),(4,'cvbg','2022-09-03','голос','2023-10-12 09:58:09',NULL),(5,'azxs','2003-05-05','голос','2023-10-12 09:58:09',NULL);
/*!40000 ALTER TABLE `donkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `full_animal`
--

DROP TABLE IF EXISTS `full_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `full_animal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `dete_of_bitrh` date DEFAULT NULL,
  `comands` text,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `full_animal`
--

LOCK TABLES `full_animal` WRITE;
/*!40000 ALTER TABLE `full_animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `full_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamster`
--

DROP TABLE IF EXISTS `hamster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hamster` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `dete_of_bitrh` date DEFAULT NULL,
  `comands` text,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamster`
--

LOCK TABLES `hamster` WRITE;
/*!40000 ALTER TABLE `hamster` DISABLE KEYS */;
INSERT INTO `hamster` VALUES (1,'ssss','2000-01-01','голос','2023-10-12 09:58:09',NULL),(2,'dfdf','2019-12-10','голос','2023-10-12 09:58:09',NULL),(3,'asew','1980-03-02','голос','2023-10-12 09:58:09',NULL),(4,'cvbg','2022-09-03','голос','2023-10-12 09:58:09',NULL),(5,'azxs','2003-05-05','голос','2023-10-12 09:58:09',NULL);
/*!40000 ALTER TABLE `hamster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horse`
--

DROP TABLE IF EXISTS `horse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horse` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `dete_of_bitrh` date DEFAULT NULL,
  `comands` text,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horse`
--

LOCK TABLES `horse` WRITE;
/*!40000 ALTER TABLE `horse` DISABLE KEYS */;
INSERT INTO `horse` VALUES (1,'ssss','2000-01-01','голос','2023-10-12 09:58:09',NULL),(2,'dfdf','2019-12-10','голос','2023-10-12 09:58:09',NULL),(3,'asew','1980-03-02','голос','2023-10-12 09:58:09',NULL),(4,'cvbg','2022-09-03','голос','2023-10-12 09:58:09',NULL),(5,'azxs','2003-05-05','голос','2023-10-12 09:58:09',NULL),(6,'ssss','2000-01-01','голос','2023-10-12 10:20:19',NULL),(7,'dfdf','2019-12-10','голос','2023-10-12 10:20:19',NULL),(8,'asew','1988-11-02','голос','2023-10-12 10:20:19',NULL),(9,'cvbg','2022-09-03','голос','2023-10-12 10:20:19',NULL),(10,'azxs','2003-05-05','голос','2023-10-12 10:20:19',NULL);
/*!40000 ALTER TABLE `horse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `human_friends`
--

DROP TABLE IF EXISTS `human_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `human_friends` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `animal_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `animal_id` (`animal_id`),
  CONSTRAINT `fk_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`human_friends_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `human_friends`
--

LOCK TABLES `human_friends` WRITE;
/*!40000 ALTER TABLE `human_friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `human_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vyuchnie_zivotvie`
--

DROP TABLE IF EXISTS `vyuchnie_zivotvie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vyuchnie_zivotvie` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `animal_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `animal_id` (`animal_id`),
  CONSTRAINT `vyuchnie_zivotvie_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`vyuchnie_zivotvie_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vyuchnie_zivotvie`
--

LOCK TABLES `vyuchnie_zivotvie` WRITE;
/*!40000 ALTER TABLE `vyuchnie_zivotvie` DISABLE KEYS */;
/*!40000 ALTER TABLE `vyuchnie_zivotvie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `young_animals`
--

DROP TABLE IF EXISTS `young_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `young_animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` char(30) DEFAULT NULL,
  `dete_of_bitrh` date DEFAULT NULL,
  `comands` text,
  `age` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `young_animals`
--

LOCK TABLES `young_animals` WRITE;
/*!40000 ALTER TABLE `young_animals` DISABLE KEYS */;
INSERT INTO `young_animals` VALUES (1,'barsik','2021-01-01','голос','2 years 9 month'),(2,'tom','2019-12-10','голос','3 years 10 month'),(3,'moris','2020-02-02','голос','3 years 8 month'),(4,'bobi','2022-03-03','голос','1 years 7 month'),(5,'tusik','2021-01-01','голос','2 years 9 month'),(6,'sharik','2019-12-10','голос','3 years 10 month'),(7,'rigik','2020-02-02','голос','3 years 8 month'),(8,'fred','2022-03-03','голос','1 years 7 month'),(9,'dfdf','2019-12-10','голос','3 years 10 month'),(10,'cvbg','2022-09-03','голос','1 years 1 month'),(11,'dfdf','2019-12-10','голос','3 years 10 month'),(12,'cvbg','2022-09-03','голос','1 years 1 month'),(13,'dfdf','2019-12-10','голос','3 years 10 month'),(14,'cvbg','2022-09-03','голос','1 years 1 month');
/*!40000 ALTER TABLE `young_animals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-13 10:56:18
