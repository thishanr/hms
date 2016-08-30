-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.52-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hos
--

CREATE DATABASE IF NOT EXISTS hos;
USE hos;

--
-- Definition of table `consultant`
--

DROP TABLE IF EXISTS `consultant`;
CREATE TABLE `consultant` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `wordid` varchar(45) NOT NULL,
  `conno` varchar(45) NOT NULL,
  `workex` varchar(45) NOT NULL,
  `spei` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consultant`
--

/*!40000 ALTER TABLE `consultant` DISABLE KEYS */;
INSERT INTO `consultant` (`id`,`fullname`,`age`,`address`,`wordid`,`conno`,`workex`,`spei`) VALUES 
 (1,'DR.Pathmasuriya','58','22/7 Colombo 02','W001','0112332456','20 Year','Surgery'),
 (2,'DR.Pathirana','55','35/5 Nugegoda.','W002','0778535532','35 Year','Any');
/*!40000 ALTER TABLE `consultant` ENABLE KEYS */;


--
-- Definition of table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `conno` varchar(45) DEFAULT NULL,
  `desig` varchar(45) DEFAULT NULL,
  `schedule` varchar(45) DEFAULT NULL,
  `workex` varchar(45) DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` (`id`,`fullname`,`address`,`conno`,`desig`,`schedule`,`workex`,`salary`) VALUES 
 (1,'DR.Ariyarathna Wijesuriya','88/2 Kalaniya','0785498250','N/A','8*28','5 Year','75000');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `Id` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`Id`,`password`) VALUES 
 ('thishanr','0112332456');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `contactno` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `conid` varchar(45) DEFAULT NULL,
  `wordid` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`id`,`fullname`,`age`,`contactno`,`gender`,`conid`,`wordid`,`address`,`date`) VALUES 
 (1,'A.H.Thishan Rasangika','20','0754437087','Male','C002','W001','Nugegoda Waththa,\nWelipenna.','2014-04-08'),
 (2,'A.H.Ranjth Upali','60','0754437098','Male','C002','W001','Nugegoda Waththa,\nWelipenna.\n','2014-05-08'),
 (3,'T.Thilaka Fanando','59','0724334010','Female','C001','W002','Nugegoda Waththa,\nWelipenna','2014-06-12'),
 (4,'T.Thilaka Fanando','59','0724334010','Female','C001','W002','Nugegoda Waththa,\nWelipenna','2014-07-13'),
 (5,'A.Pasn','15','0784437087','Male','C002','W001','Panadura','2014-07-10');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;


--
-- Definition of table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `descr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` (`no`,`type`,`descr`) VALUES 
 (1,'1','Succesful'),
 (2,'2','fail');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;


--
-- Definition of table `treat`
--

DROP TABLE IF EXISTS `treat`;
CREATE TABLE `treat` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `des` varchar(45) DEFAULT NULL,
  `rusult` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treat`
--

/*!40000 ALTER TABLE `treat` DISABLE KEYS */;
INSERT INTO `treat` (`no`,`des`,`rusult`,`date`) VALUES 
 (1,'N/A','Good','2014-07-17');
/*!40000 ALTER TABLE `treat` ENABLE KEYS */;


--
-- Definition of table `ward`
--

DROP TABLE IF EXISTS `ward`;
CREATE TABLE `ward` (
  `id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `capacity` varchar(45) NOT NULL,
  `nop` varchar(45) NOT NULL,
  `nos` varchar(45) NOT NULL,
  `build` varchar(45) NOT NULL,
  `incha` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward`
--

/*!40000 ALTER TABLE `ward` DISABLE KEYS */;
INSERT INTO `ward` (`id`,`name`,`capacity`,`nop`,`nos`,`build`,`incha`) VALUES 
 ('W001','Mental','25','25','85','B221','Kasun Kalara'),
 ('W002','Mental','75','20','30','B000001','Pasan Gamage');
/*!40000 ALTER TABLE `ward` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
