-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema itbkanban
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema itbkanban
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `itbkanban2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `itbkanban2` ;

-- -----------------------------------------------------
-- Table `itbkanban`.`status`
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Table `itbkanban`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itbkanban2`.`status` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `statusName` VARCHAR(50) NOT NULL UNIQUE,
  `statusDescription` TEXT(200) NULL,
  `statusColor` VARCHAR(7) NOT NULL DEFAULT '#6b7280',
  `createdOn` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedOn` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `statusName_UNIQUE` (`statusName` ASC) VISIBLE
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `itbkanban`.`tasks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itbkanban2`.`tasks` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `taskTitle` TEXT(100) NOT NULL,
  `taskDescription` TEXT(500) NULL,
  `taskAssignees` TEXT(30) NULL,
  `taskStatus` INT NOT NULL DEFAULT 1,
  `createdOn` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedOn` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_tasks_status_idx` (`taskStatus` ASC) VISIBLE,
  CONSTRAINT `fk_tasks_status`
    FOREIGN KEY (`taskStatus`)
    REFERENCES `itbkanban2`.`status` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;