-- MySQL dump 10.13  Distrib 5.1.42, for Win32 (ia32)
--
-- Host: localhost    Database: inventory, leaftech, orderinfo
-- ------------------------------------------------------
-- Server version	5.1.42-community


--
-- Table structure for table `audit`
--
USE inventory;
DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `session_id` int(100)unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `login_datetime` datetime DEFAULT NULL,
  `logout_datetime` datetime DEFAULT NULL,
  `username` varchar(100) NOT NULL
);

USE leaftech;
DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `session_id` int(100)unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `login_datetime` datetime DEFAULT NULL,
  `logout_datetime` datetime DEFAULT NULL,
  `username` varchar(100) NOT NULL
);

USE orderinfo;
DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `session_id` int(100)unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `login_datetime` datetime DEFAULT NULL,
  `logout_datetime` datetime DEFAULT NULL,
  `username` varchar(100) NOT NULL
);

CREATE USER 'InvMgrUser'@'localhost' IDENTIFIED BY PASSWORD '*C70FD14B5FEF81FA5A82E347865F20D681BF97D3';
GRANT ALL PRIVILEGES ON inventory.seeds TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON inventory.trees TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON inventory.shrubs TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON inventory.cultureboxes TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON inventory.genomics TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON inventory.processing TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON inventory.referencematerials TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON leaftech.seeds TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON leaftech.trees TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON leaftech.shrubs TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON leaftech.cultureboxes TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON leaftech.genomics TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON leaftech.processing TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON leaftech.referencematerials TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON orderinfo.seeds TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON orderinfo.trees TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON orderinfo.shrubs TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON orderinfo.cultureboxes TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON orderinfo.genomics TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON orderinfo.processing TO 'InvMgrUser'@'localhost';
GRANT ALL PRIVILEGES ON orderinfo.referencematerials TO 'InvMgrUser'@'localhost';

CREATE USER 'OrderMgrUser'@'localhost' IDENTIFIED BY PASSWORD '*893CE42BB15DB8B0E86714C1187448451D901E44';
GRANT SELECT ON inventory.seeds TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON inventory.trees TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON inventory.shrubs TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON inventory.cultureboxes TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON inventory.genomics TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON inventory.processing TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON inventory.referencematerials TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON inventory.orders TO 'OrderMgrUser'@'localhost';
GRANT CREATE ON inventory.orders TO 'OrderMgrUser'@'localhost';
GRANT UPDATE ON inventory.orders TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON leaftech.seeds TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON leaftech.trees TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON leaftech.shrubs TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON leaftech.cultureboxes TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON leaftech.genomics TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON leaftech.processing TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON leaftech.referencematerials TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON leaftech.orders TO 'OrderMgrUser'@'localhost';
GRANT CREATE ON leaftech.orders TO 'OrderMgrUser'@'localhost';
GRANT UPDATE ON leaftech.orders TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON orderinfo.seeds TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON orderinfo.trees TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON orderinfo.shrubs TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON orderinfo.cultureboxes TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON orderinfo.genomics TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON orderinfo.processing TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON orderinfo.referencematerials TO 'OrderMgrUser'@'localhost';
GRANT SELECT ON orderinfo.orders TO 'OrderMgrUser'@'localhost';
GRANT CREATE ON orderinfo.orders TO 'OrderMgrUser'@'localhost';
GRANT UPDATE ON orderinfo.orders TO 'OrderMgrUser'@'localhost';

CREATE USER 'ShippingMgrUser'@'localhost' IDENTIFIED BY PASSWORD '*8632734F215F314AB73B35D366B6C6746C9347DF';
GRANT SELECT ON inventory.orders TO 'ShippingMgrUser'@'localhost';
GRANT UPDATE ON inventory.orders TO 'ShippingMgrUser'@'localhost';
GRANT SELECT ON leaftech.orders TO 'ShippingMgrUser'@'localhost';
GRANT UPDATE ON leaftech.orders TO 'ShippingMgrUser'@'localhost';
GRANT SELECT ON orderinfo.orders TO 'ShippingMgrUser'@'localhost';
GRANT UPDATE ON orderinfo.orders TO 'ShippingMgrUser'@'localhost';

CREATE USER 'AuditorAdmin'@'localhost' IDENTIFIED BY PASSWORD '*01A6717B58FF5C7EAFFF6CB7C96F7428EA65FE4C';
GRANT ALL PRIVILEGES ON *.* TO 'AuditorAdmin'@'localhost';

FLUSH PRIVILEGES;