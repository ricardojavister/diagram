-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.20-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for common
CREATE DATABASE IF NOT EXISTS `common` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `common`;

-- Dumping structure for table common.question
CREATE TABLE IF NOT EXISTS `question` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `question` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `idtypeofquestion` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_question_type` (`idtypeofquestion`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table common.question: 1 rows
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` (`id`, `question`, `answer`, `idtypeofquestion`) VALUES
	(1, 'What is the difference between a Clustered Index and Non-Clustered Index?', 'An index clustered is a physical index inside a database and an Index Non Clustered is a logical index, designed for increasing the performance filtering data for an especific column in the table.', 1);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;

-- Dumping structure for table common.relatedarticles
CREATE TABLE IF NOT EXISTS `relatedarticles` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table common.relatedarticles: 0 rows
/*!40000 ALTER TABLE `relatedarticles` DISABLE KEYS */;
/*!40000 ALTER TABLE `relatedarticles` ENABLE KEYS */;

-- Dumping structure for table common.typeofquestion
CREATE TABLE IF NOT EXISTS `typeofquestion` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table common.typeofquestion: 1 rows
/*!40000 ALTER TABLE `typeofquestion` DISABLE KEYS */;
INSERT INTO `typeofquestion` (`id`, `name`) VALUES
	(1, 'DATABASES');
/*!40000 ALTER TABLE `typeofquestion` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
