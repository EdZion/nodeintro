-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: te18
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `userid` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'HEJSAN','TJENA','2020-09-25 08:57:52','2020-09-25 08:57:52',1);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `story_id` int unsigned DEFAULT NULL,
  `target_id` int unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `story_id` (`story_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,1,2,'Vill du gå till domstolen?'),(2,1,5,'Vill du bara skita i att göra något och låta det vara som det är?'),(3,2,3,'Ja'),(4,2,4,'Nej'),(5,4,3,'Du beger dig till domstolen och frågar om råd igen.'),(6,4,6,'Leta mat i skogen.'),(7,3,8,'Ja'),(8,3,9,'Nej'),(9,6,3,'Ja, Du beger dig till domstolen och frågar om råd igen.'),(10,6,7,'Nej');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `story` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `body` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'Du är en gris som plågas i sin tillvaro. En dag tröttnade du på din usla tillvaro.'),(2,'Du kommer till domstolen och berättar om dina besvär. Notarien säger att du ska få det bättre. Litar du på honom?'),(3,'Notarien säger att du ska få vetekorn, ärter och sova på siden som de andra djuren. Du beger dig genast hem och ska berätta för dina hus kamrater. Påvägen hem möter du en räv vill du prata med hen? Hen ser väldigt mystisk ut.'),(4,'Du springer i väg och lyssnar inte på vad han säger. Du gömmer dig ute i skogen men du känner dig hungrig vad gör du?'),(5,'SLUT!'),(6,'Du hittar ingen mat i skogen och blir ännu hungrigare vill du gå till domstolen och fråga om råd när det gäller ditt hem så att du kanske kan få det bättre?'),(7,'Du svälter ihjäl.  SLUT.'),(8,'Räven jävlas med dig och lurar dig att du inte vill få det bättre. Du kommer hem och säger att du inte skulle få det bättre. SLUT'),(9,'Du går hela vägen hem och säger till din ägare där hemma att du ska få det bättre för det är det som står i lagen. Du får det bättre och blir lycklig. SLUT!');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'AXEL','axl.nasd@gamil.com',NULL,NULL,'NULL');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-15  9:38:35
