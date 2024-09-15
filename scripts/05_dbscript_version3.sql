-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema itbkanban3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema itbkanban3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `itbkanban3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `itbkanban3` ;

-- -----------------------------------------------------
-- Table `itbkanban3`.`config`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itbkanban3`.`config` (
  `settingId` INT NOT NULL AUTO_INCREMENT,
  `noOfTasks` INT NULL DEFAULT '5',
  `limitMaximumTask` INT NULL DEFAULT '0',
  PRIMARY KEY (`settingId`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `itbkanban3`.`boards`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itbkanban3`.`boards` (
  `boardId` VARCHAR(36) NOT NULL,
  `boardName` VARCHAR(120) NOT NULL,
  `configId` INT NOT NULL,
  PRIMARY KEY (`boardId`),
  INDEX `fk_board_config1_idx` (`configId` ASC) VISIBLE,
  CONSTRAINT `fk_board_config1`
    FOREIGN KEY (`configId`)
    REFERENCES `itbkanban3`.`config` (`settingId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `itbkanban3`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itbkanban3`.`users` (
  `oid` VARCHAR(36) NOT NULL,
  `userName` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`oid`),
  UNIQUE INDEX `username` (`userName` ASC) VISIBLE,
  UNIQUE INDEX `email` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `itbkanban3`.`boarduser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itbkanban3`.`boarduser` (
  `userId` VARCHAR(36) NOT NULL,
  `boardId` VARCHAR(36) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  INDEX `fk_user_has_board_board1_idx` (`boardId` ASC) VISIBLE,
  INDEX `fk_user_has_board_user1_idx` (`userId` ASC) VISIBLE,
  CONSTRAINT `fk_user_has_board_board1`
    FOREIGN KEY (`boardId`)
    REFERENCES `itbkanban3`.`boards` (`boardId`),
  CONSTRAINT `fk_user_has_board_user1`
    FOREIGN KEY (`userId`)
    REFERENCES `itbkanban3`.`users` (`oid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `itbkanban3`.`customstatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itbkanban3`.`customstatus` (
  `statusId` INT NOT NULL AUTO_INCREMENT,
  `createdOn` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `statusColor` VARCHAR(7) NOT NULL DEFAULT '#6b7280',
  `statusDescription` VARCHAR(255) NULL DEFAULT NULL,
  `statusName` VARCHAR(255) NOT NULL,
  `updatedOn` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `boardId` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`statusId`),
  INDEX `FKl2shxkb7bgqt4hnlrmlqyqsa` (`boardId` ASC) VISIBLE,
  CONSTRAINT `FKl2shxkb7bgqt4hnlrmlqyqsa`
    FOREIGN KEY (`boardId`)
    REFERENCES `itbkanban3`.`boards` (`boardId`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `itbkanban3`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itbkanban3`.`status` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `createdOn` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `statusColor` VARCHAR(255) NULL DEFAULT NULL,
  `statusDescription` VARCHAR(255) NULL DEFAULT NULL,
  `statusName` VARCHAR(255) NOT NULL,
  `updatedOn` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `UK_k5f3c2eehnasl2ksbp7uees6m` (`statusName` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `itbkanban3`.`tasks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itbkanban3`.`tasks` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `taskAssignees` VARCHAR(30) NULL DEFAULT NULL,
  `taskDescription` VARCHAR(500) NULL DEFAULT NULL,
  `taskTitle` VARCHAR(100) NOT NULL,
  `createdOn` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedOn` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `boardId` VARCHAR(255) NOT NULL,
  `statusId` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKe9n0a4rosal1mv00hbr71hjkp` (`statusId` ASC) VISIBLE,
  INDEX `FKp32nw9qd82vqwl8rlv6mek5i` (`boardId` ASC) VISIBLE,
  CONSTRAINT `FKe9n0a4rosal1mv00hbr71hjkp`
    FOREIGN KEY (`statusId`)
    REFERENCES `itbkanban3`.`customstatus` (`statusId`),
  CONSTRAINT `FKp32nw9qd82vqwl8rlv6mek5i`
    FOREIGN KEY (`boardId`)
    REFERENCES `itbkanban3`.`boards` (`boardId`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;