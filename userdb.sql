-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for userdb
CREATE DATABASE IF NOT EXISTS `userdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `userdb`;

-- Dumping structure for table userdb.emp
CREATE TABLE IF NOT EXISTS `emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `salary` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table userdb.emp: ~15 rows (approximately)
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` (`id`, `name`, `salary`) VALUES
	(1, 'Amir', 30000),
	(2, 'Elisée', 40000),
	(3, 'Estelle', 50000),
	(4, 'Eric', 60000),
	(5, 'Jean-Yves', 70000),
	(6, 'Melchior', 80000),
	(7, 'Mathéos', 90000),
	(8, 'Sahid', 25000),
	(9, 'Exaucée', 35000),
	(10, 'Conrad', 45000),
	(11, 'Donald', 55000),
	(12, 'Larissa', 65000),
	(13, 'Hilary', 75000),
	(14, 'Géoffroy', 85000),
	(15, 'Tobi', 95000);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
