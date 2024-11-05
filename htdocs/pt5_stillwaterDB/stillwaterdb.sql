-- Adminer 4.8.1 MySQL 10.4.34-MariaDB-1:10.4.34+maria~ubu2004 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `allclients`;
CREATE TABLE `allclients` (
  `ClientNumber` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `givenName` varchar(100) DEFAULT NULL,
  `ClientAddress` varchar(255) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ClientNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `allclients` (`ClientNumber`, `givenName`, `ClientAddress`, `lastName`) VALUES
(1,	'John Smith',	'123 Main Street, Apt. 4B, Anytown, USA',	'Albercarky'),
(2,	'Casandra Nova',	'456 Oak Avenue, Anytown, USA',	'Pinewood'),
(3,	'Bob Indra',	'789 Willow Lane, Ruralville, USA',	'Bolyfood'),
(4,	'Nova Stark',	'P.O. Box 123, Anytown, USA',	'Tresance'),
(5,	'Elmochio Minoi',	'Suite 101, 123 Business Boulevard, Anytown, USA',	'Baraka'),
(6,	'Gruth Makvin',	'456 Industrial Park Drive, Anytown, USA',	'Cape Neddick'),
(7,	'Katelyn Mcintyre',	'789 Main Street, Anytown, USA',	'Serra'),
(8,	'Bethan Sanford',	'123 School Road, Anytown, USA',	'Faulkton'),
(9,	'Lloyd Davies',	'456 Government Center, Anytown, USA',	'Suditi'),
(10,	'Saarah Cruz',	'123 Base Road, Anytown, USA',	'Chatfield'),
(15,	'John',	'123 Elm St, Springfield, IL',	'Doe'),
(16,	'Jane',	'456 Oak St, Springfield, IL',	'Smith'),
(17,	'Michael',	'789 Pine St, Springfield, IL',	'Johnson'),
(18,	'Emily',	'101 Maple St, Springfield, IL',	'Davis'),
(19,	'James',	'202 Birch St, Springfield, IL',	'Brown'),
(20,	'Mary',	'303 Cedar St, Springfield, IL',	'Garcia'),
(21,	'Robert',	'404 Walnut St, Springfield, IL',	'Martinez'),
(22,	'Linda',	'505 Cherry St, Springfield, IL',	'Hernandez'),
(23,	'William',	'606 Ash St, Springfield, IL',	'Lopez'),
(24,	'Elizabeth',	'707 Spruce St, Springfield, IL',	'Wilson'),
(25,	'David',	'808 Fir St, Springfield, IL',	'Anderson'),
(26,	'Susan',	'909 Hickory St, Springfield, IL',	'Thomas'),
(27,	'Charles',	'111 Sycamore St, Springfield, IL',	'Taylor'),
(28,	'Jessica',	'222 Dogwood St, Springfield, IL',	'Moore'),
(29,	'Daniel',	'333 Larch St, Springfield, IL',	'Jackson'),
(30,	'Sarah',	'444 Redwood St, Springfield, IL',	'Martin'),
(31,	'Matthew',	'555 Poplar St, Springfield, IL',	'Lee'),
(32,	'Nancy',	'666 Willow St, Springfield, IL',	'Perez'),
(33,	'Anthony',	'777 Elm St, Springfield, IL',	'Thompson'),
(34,	'Karen',	'888 Oak St, Springfield, IL',	'White');

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `item_num` int(11) NOT NULL AUTO_INCREMENT,
  `description` text DEFAULT NULL,
  `asking_price` bigint(20) DEFAULT NULL,
  `critiqued_comments` text DEFAULT NULL,
  `condition` text DEFAULT NULL,
  `item_type` text DEFAULT NULL,
  `is_sold` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`item_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `items` (`item_num`, `description`, `asking_price`, `critiqued_comments`, `condition`, `item_type`, `is_sold`) VALUES
(1,	'Baroque Armchair',	3200,	'Rich detailing newly polished',	'Excellent',	'Furniture',	0),
(2,	'Queen Anne Dining Table',	3500,	'Stunning centerpiece minor scratches',	'Good',	'Furniture',	0),
(3,	'Victorian Oak Chair',	1200,	'Beautifully carved with minimal wear',	'Good',	'Furniture',	0),
(4,	'Chippendale Chest',	2200,	'Original handles some fading',	'Good',	'Furniture',	0),
(5,	'Rococo Side Table',	1300,	'Ornate carvings minor nicks',	'Fair',	'Furniture',	0),
(6,	'Victorian Mahogany Cabinet',	2700,	'Intricate inlays slight wear on edges',	'Good',	'Furniture',	0),
(7,	'Art Deco Lamp',	750,	'Vintage style slight discoloration',	'Fair',	'Home Decor',	0),
(8,	'Mid-century Modern Chair',	950,	'Iconic design fabric slightly worn',	'Good',	'Furniture',	0),
(9,	'Georgian Mirror',	1800,	'Gilt frame with aged patina',	'Good',	'Decor',	0),
(15,	'Baroque Armchair',	3200,	'Rich detailing newly polished',	'Excellent',	'Furniture',	0),
(16,	'Queen Anne Dining Table',	3500,	'Stunning centerpiece minor scratches',	'Good',	'Furniture',	0),
(17,	'Victorian Oak Chair',	1200,	'Beautifully carved with minimal wear',	'Good',	'Furniture',	0),
(18,	'Chippendale Chest',	2200,	'Original handles some fading',	'Good',	'Furniture',	0),
(19,	'Rococo Side Table',	1300,	'Ornate carvings minor nicks',	'Fair',	'Furniture',	0),
(20,	'Victorian Mahogany Cabinet',	2700,	'Intricate inlays slight wear on edges',	'Good',	'Furniture',	0),
(21,	'Art Deco Lamp',	750,	'Vintage style slight discoloration',	'Fair',	'Home Decor',	0),
(22,	'Mid-century Modern Chair',	950,	'Iconic design fabric slightly worn',	'Good',	'Furniture',	0),
(23,	'Georgian Mirror',	1800,	'Gilt frame with aged patina',	'Good',	'Decor',	0),
(24,	'Antique Writing Desk',	1500,	'Beautifully restored with original hardware',	'Excellent',	'Furniture',	0),
(25,	'Industrial Bookshelf',	800,	'Sturdy metal frame with wooden shelves',	'Good',	'Furniture',	0),
(26,	'Vintage Record Player',	600,	'Fully functional with minor scratches',	'Good',	'Electronics',	0),
(27,	'Ceramic Vase',	200,	'Hand-painted with intricate designs',	'Excellent',	'Home Decor',	0),
(28,	'Leather Sofa',	2500,	'Comfortable and stylish with minor wear',	'Good',	'Furniture',	0),
(29,	'Glass Coffee Table',	400,	'Modern design with tempered glass',	'Good',	'Furniture',	0),
(30,	'Woven Area Rug',	300,	'Soft and durable with vibrant colors',	'Good',	'Home Decor',	0),
(31,	'Wall Art',	150,	'Framed print of a famous painting',	'Excellent',	'Art',	0),
(32,	'Garden Bench',	500,	'Sturdy wooden bench for outdoor use',	'Good',	'Furniture',	0),
(33,	'Patio Umbrella',	120,	'Large umbrella for shade',	'Good',	'Outdoor',	0),
(34,	'Bistro Set',	250,	'Table and two chairs for outdoor dining',	'Good',	'Outdoor',	0);

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE `purchases` (
  `condition_at_purchase` text DEFAULT NULL,
  `p_cost` bigint(20) DEFAULT NULL,
  `p_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `purchase_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ClientNumber` bigint(20) unsigned DEFAULT NULL,
  `item_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`purchase_id`),
  KEY `Items_Purchases` (`item_num`),
  KEY `AllClients_Purchases` (`ClientNumber`),
  CONSTRAINT `purchases_ibfk_10` FOREIGN KEY (`ClientNumber`) REFERENCES `allclients` (`ClientNumber`),
  CONSTRAINT `purchases_ibfk_14` FOREIGN KEY (`item_num`) REFERENCES `items` (`item_num`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `purchases` (`condition_at_purchase`, `p_cost`, `p_date`, `purchase_id`, `ClientNumber`, `item_num`) VALUES
('Excellent',	10000,	'2024-11-05 06:55:01',	47,	1,	NULL),
('Excellent',	213213,	'2024-11-05 07:35:52',	48,	1,	NULL),
('Excellent',	1214123,	'2024-11-05 08:08:13',	49,	1,	NULL),
('Excellent',	234567,	'2024-11-05 08:10:04',	50,	2,	NULL),
('Excellent',	456789,	'2024-11-05 08:20:23',	51,	1,	NULL);

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `saleID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `commissionPaid` bigint(20) DEFAULT NULL,
  `sellingPrice` bigint(20) NOT NULL,
  `salesTax` decimal(10,0) NOT NULL,
  `date_sold` timestamp NOT NULL DEFAULT current_timestamp(),
  `ClientNumber` bigint(20) unsigned DEFAULT NULL,
  `item_num` int(11) NOT NULL,
  PRIMARY KEY (`saleID`),
  KEY `AllClients_Sales` (`ClientNumber`),
  KEY `Items_Sales` (`item_num`),
  CONSTRAINT `sales_ibfk_11` FOREIGN KEY (`item_num`) REFERENCES `items` (`item_num`),
  CONSTRAINT `sales_ibfk_5` FOREIGN KEY (`ClientNumber`) REFERENCES `allclients` (`ClientNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sales` (`saleID`, `commissionPaid`, `sellingPrice`, `salesTax`, `date_sold`, `ClientNumber`, `item_num`) VALUES
(6,	123123,	12232,	1468,	'2024-11-05 01:12:22',	1,	2);

-- 2024-11-05 08:31:28
