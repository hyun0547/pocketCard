DROP DATABASE IF EXISTS pocketCard;
CREATE DATABASE pocketCard;
USE pocketCard;

CREATE TABLE `member`
(
	`id` INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`infoOrigin` VARCHAR(30) NOT NULL,
	`userEmail` VARCHAR(50) NOT NULL,
	`userNickname` VARCHAR(10) NOT NULL,
	`regDate` DATETIME NOT NULL DEFAULT NOW(),
	`delStatus` TINYINT(1) DEFAULT 0 COMMENT '0=가입, 1=탈퇴',
	`delDate` DATETIME
);

CREATE TABLE `questionCard`
(
	`id` INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`writerId` INT(10) UNSIGNED NOT NULL,
	`title` VARCHAR(50) NOT NULL,
	`body` TEXT NOT NULL,
	`tagStatus` VARCHAR(200),
	`learningStatus` INT(10) NOT NULL DEFAULT 0 COMMENT '0 = 학습전, 1 = 학습완료',
	`regDate` DATETIME NOT NULL DEFAULT NOW(),
	`updateDate` DATETIME NOT NULL DEFAULT NOW()
);
