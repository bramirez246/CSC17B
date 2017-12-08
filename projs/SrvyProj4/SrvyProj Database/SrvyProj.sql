-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.26-MariaDB

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
-- Table structure for table `question_entity`
--

DROP TABLE IF EXISTS `question_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_entity` (
  `question_id` int(10) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_entity`
--

LOCK TABLES `question_entity` WRITE;
/*!40000 ALTER TABLE `question_entity` DISABLE KEYS */;
INSERT INTO `question_entity` VALUES (1,'What is your favoirte color?','1','answerArray'),(2,'What is your least favorite color?','2','answerArray'),(3,'What color is your car?','3','answerArray'),(4,'What color is your dream car?','4','answerArray'),(5,'How many pet(s) do you have?','1','answerArray'),(6,'Which pets do you prefer?','2','answerArray'),(7,'How many pet(s) do you wish to have?','3','answerArray'),(8,'What is your least favorite animal','4','answerArray'),(9,'Do you have a color preference for your pet?','5','answerArray'),(10,'What is your birth gender?','1','answerArray'),(11,'What gender do you identify your self with?','2','answerArray'),(12,'What computer operating system do you use?','1','answerArray'),(13,'What computer operating system do you prefer?','2','answerArray'),(14,'What type of device do you have?','3','answerArray');
/*!40000 ALTER TABLE `question_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_entity`
--

DROP TABLE IF EXISTS `survey_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_entity` (
  `survey_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`survey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_entity`
--

LOCK TABLES `survey_entity` WRITE;
/*!40000 ALTER TABLE `survey_entity` DISABLE KEYS */;
INSERT INTO `survey_entity` VALUES (1,'Color','Survey about one\'s color choice'),(2,'Pets','Survey about one\'s pet'),(3,'Gender','Survey gender of the population'),(4,'Computer Operating System','Survey the computer operating system a population uses');
/*!40000 ALTER TABLE `survey_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_question_xref`
--

DROP TABLE IF EXISTS `survey_question_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_question_xref` (
  `xref_id` int(10) NOT NULL AUTO_INCREMENT,
  `survey_id` int(10) DEFAULT NULL,
  `question_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`xref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_question_xref`
--

LOCK TABLES `survey_question_xref` WRITE;
/*!40000 ALTER TABLE `survey_question_xref` DISABLE KEYS */;
INSERT INTO `survey_question_xref` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,3,10),(11,3,11),(12,4,12),(13,4,13),(14,4,15);
/*!40000 ALTER TABLE `survey_question_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_entity`
--

DROP TABLE IF EXISTS `user_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_entity` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_entity`
--

LOCK TABLES `user_entity` WRITE;
/*!40000 ALTER TABLE `user_entity` DISABLE KEYS */;
INSERT INTO `user_entity` VALUES (1,'Stanley','Yang','stanley316868@gmail.com','316868'),(2,'Bob','Bob','Bob123@yahoo.com','1234'),(3,'Dan','Lee','DanLee@yahoo.com','password');
/*!40000 ALTER TABLE `user_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_survey_xref`
--

DROP TABLE IF EXISTS `user_survey_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_survey_xref` (
  `xref_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `survey_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`xref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_survey_xref`
--

LOCK TABLES `user_survey_xref` WRITE;
/*!40000 ALTER TABLE `user_survey_xref` DISABLE KEYS */;
INSERT INTO `user_survey_xref` VALUES (1,1,1),(2,1,2),(3,2,3),(4,3,4);
/*!40000 ALTER TABLE `user_survey_xref` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-15 15:48:39
