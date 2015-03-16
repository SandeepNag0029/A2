USE inventory;
DROP TABLE IF EXISTS `orders`;
CREATE TABLE orders LIKE orderinfo.orders;
INSERT INTO orders (SELECT * FROM orderinfo.orders);
DROP TABLE IF EXISTS `cultureboxes`;
CREATE TABLE cultureboxes LIKE leaftech.cultureboxes;
INSERT INTO cultureboxes SELECT * FROM leaftech.cultureboxes;
DROP TABLE IF EXISTS `genomics`;
CREATE TABLE genomics LIKE leaftech.genomics;
INSERT INTO genomics SELECT * FROM leaftech.genomics;
DROP TABLE IF EXISTS `processing`;
CREATE TABLE processing LIKE leaftech.processing;
INSERT INTO processing SELECT * FROM leaftech.processing;
DROP TABLE IF EXISTS `referencematerials`;
CREATE TABLE referencematerials LIKE leaftech.referencematerials;
INSERT INTO referencematerials SELECT * FROM leaftech.referencematerials;

USE leaftech;
DROP TABLE IF EXISTS `orders`;
CREATE TABLE orders LIKE orderinfo.orders;
INSERT INTO orders SELECT * FROM orderinfo.orders;
DROP TABLE IF EXISTS `trees`;
CREATE TABLE trees LIKE inventory.trees;
INSERT INTO trees SELECT * FROM inventory.trees;
DROP TABLE IF EXISTS `seeds`;
CREATE TABLE seeds LIKE inventory.seeds;
INSERT INTO seeds SELECT * FROM inventory.seeds;
DROP TABLE IF EXISTS `shrubs`;
CREATE TABLE shrubs LIKE inventory.shrubs;
INSERT INTO shrubs SELECT * FROM inventory.shrubs;

USE orderinfo;
DROP TABLE IF EXISTS `cultureboxes`;
CREATE TABLE cultureboxes LIKE leaftech.cultureboxes;
INSERT INTO cultureboxes SELECT * FROM leaftech.cultureboxes;
DROP TABLE IF EXISTS `genomics`;
CREATE TABLE genomics LIKE leaftech.genomics;
INSERT INTO genomics SELECT * FROM leaftech.genomics;
DROP TABLE IF EXISTS `processing`;
CREATE TABLE processing LIKE leaftech.processing;
INSERT INTO processing SELECT * FROM leaftech.processing;
DROP TABLE IF EXISTS `referencematerials`;
CREATE TABLE referencematerials LIKE leaftech.referencematerials;
INSERT INTO referencematerials SELECT * FROM leaftech.referencematerials;
DROP TABLE IF EXISTS `trees`;
CREATE TABLE trees LIKE inventory.trees;
INSERT INTO trees SELECT * FROM inventory.trees;
DROP TABLE IF EXISTS `seeds`;
CREATE TABLE seeds LIKE inventory.seeds;
INSERT INTO seeds SELECT * FROM inventory.seeds;
DROP TABLE IF EXISTS `shrubs`;
CREATE TABLE shrubs LIKE inventory.shrubs;
INSERT INTO shrubs SELECT * FROM inventory.shrubs;