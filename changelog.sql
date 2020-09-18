--liquibase formatted sql

--changeset joe:1
CREATE TABLE `Test`.`Untitled`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `test` varchar(255) NULL,
  PRIMARY KEY (`id`)
);