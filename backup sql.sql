-- MySqlBackup.NET 2.0.9.2
-- Dump Time: 2023-05-23 22:53:25
-- --------------------------------------
-- Server version 10.4.27-MariaDB mariadb.org binary distribution


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 
-- Definition of customer
-- 

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table customer
-- 

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer`(`customerID`,`fullName`,`email`,`mobile`,`address`,`status`) VALUES
(1,'Paul Banua','banuapaul11@gmail.com',2147483647,'San Andres','Active'),
(2,'Paul Edrean B Banua','banuapaul11@gmail.com',2147483647,'San Andres','Active');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- 
-- Definition of item
-- 

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `unitPrice` float NOT NULL,
  `imageURL` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table item
-- 

/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item`(`productID`,`itemNumber`,`itemName`,`stock`,`unitPrice`,`imageURL`,`status`,`description`) VALUES
(1,'01','Superb Dishwashing',100,35,'1683982688_dishwashing.png','Active','*Refill for 22 pesos'),
(2,'02','Premium Dishwashing',100,30,'1683982711_dishwashing_premium.png','Active','*Refill for 17 pesos'),
(3,'03','Fabcon Superb',100,60,'1683982725_fabcon.png','Active','*Refill for 35 pesos'),
(4,'04','Fabcon Regular',100,50,'1683982757_fabcon.png','Active','*Refill for 26 pesos'),
(5,'05','Powder Detergent',100,57,'1683982996_detergent_powder.png','Active','*Buy again for 57 pesos'),
(6,'06','Hand Soap',100,50,'1683983007_hand_soap.png','Active','*Refill for 25 pesos'),
(7,'07','Liquid Detergent',100,50,'1683983017_laundry_detergent_liquid.png','Active','*Refill for 25 pesos'),
(8,'08','Liquid Bleach',100,40,'1683983046_liquid_bleach.jpg','Active','*Refill for 20 pesos'),
(9,'09','Car Shampoo',100,30,'1683983055_car_shampoo.png','Active','*Refill for 17 pesos'),
(10,'10','Pet Shampoo',100,50,'1683983065_pet_shampoo.png','Active','*Refill for 35 pesos'),
(11,'11','Toilet Cleaner',100,50,'1683983074_toilet_cleaner.png','Active','*Refill for 65 pesos'),
(12,'12','Alcohol',100,110,'1683983082_alcohol.png','Active','*Refill for 70 pesos'),
(15,'13','Liquid Detergent',115,35,'1684765647_laundry_detergent_liquid.png','Active','Refill for 25 pesos'),
(16,'14','Dishwashing Liquid',100,30,'1684766596_dishwashing_premium.png','Active','refill for 20'),
(17,'15','Detergent Powder',96,56,'1684767747_detergent_powder.png','Active','buy for only 56 pesos');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;

-- 
-- Definition of orders
-- 

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitPrice` int(11) NOT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table orders
-- 

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- 
-- Definition of purchase
-- 

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `purchaseID` int(11) NOT NULL AUTO_INCREMENT,
  `itemNumber` varchar(255) NOT NULL,
  `purchaseDate` date NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `unitPrice` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `vendorName` varchar(255) NOT NULL,
  `vendorID` int(11) NOT NULL,
  PRIMARY KEY (`purchaseID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table purchase
-- 

/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase`(`purchaseID`,`itemNumber`,`purchaseDate`,`itemName`,`unitPrice`,`quantity`,`vendorName`,`vendorID`) VALUES
(1,'13','2018-05-24 00:00:00','Liquid Detergent',35,15,'Paul Banua',1),
(2,'14','2018-05-24 00:00:00','Dishwashing Liquid',30,2,'Pol Town',2),
(3,'15','2018-05-24 00:00:00','Detergent Powder',56,5,'Paul Edrean Banua',3);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;

-- 
-- Definition of sale
-- 

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
  `saleID` int(11) NOT NULL AUTO_INCREMENT,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitPrice` float NOT NULL,
  PRIMARY KEY (`saleID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table sale
-- 

/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale`(`saleID`,`itemNumber`,`customerID`,`customerName`,`itemName`,`saleDate`,`quantity`,`unitPrice`) VALUES
(1,'14',1,'Paul Banua','Dishwashing Liquid','2018-05-24 00:00:00',2,30),
(2,'15',2,'Paul Edrean B Banua','Detergent Powder','2018-05-24 00:00:00',9,56);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;

-- 
-- Definition of user
-- 

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table user
-- 

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user`(`userID`,`fullName`,`username`,`password`,`status`) VALUES
(1,'Paul Banua','Paul Town','21232f297a57a5a743894a0e4a801fc3',''),
(2,'Paul Banua','PolTown','21232f297a57a5a743894a0e4a801fc3',''),
(3,'mhel','mheljan','admin',''),
(4,'pol','town','admin',''),
(5,'town','name','admin','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 
-- Definition of users
-- 

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table users
-- 

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users`(`user_id`,`email`,`username`,`password`) VALUES
(1,'Banuapaul24@gmail.com','Paul Edrean Banua','33fedc8da47ade6083a05d24311a88fd'),
(2,'baleda@gmail.com','Baleda','21232f297a57a5a743894a0e4a801fc3'),
(3,'pamaypay@gmail.com','Pamaypay','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- 
-- Definition of vendor
-- 

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE IF NOT EXISTS `vendor` (
  `vendorID` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`vendorID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table vendor
-- 

/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor`(`vendorID`,`fullName`,`email`,`mobile`,`address`,`status`,`createdOn`) VALUES
(1,'Paul Banua','banuapaul@gmail.com',2147483647,'San Andres','Active','2023-05-22 22:36:23'),
(2,'Pol Town','poltown@gmail.com',2147483647,'San Andres','Active','2023-05-22 22:44:10'),
(3,'Paul Edrean Banua','banua@gmail.com',2147483647,'San Andres','Active','2023-05-22 23:03:12');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2023-05-23 22:53:25
-- Total time: 0:0:0:0:264 (d:h:m:s:ms)
