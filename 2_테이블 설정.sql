CREATE TABLE `USER5`(
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`name` 	VARCHAR(10),
	`gender` TINYINT,
	`age` 	INT,
	`addr`	VARCHAR(255)
);

INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`)VALUES ('김유신',1,25,'김해시');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`)VALUES ('선덕여왕',2,27,'경주시');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`)VALUES ('김춘추',1,11,'부산시');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`)VALUES ('신사임당',2,75,'서울시');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`)VALUES ('이순신',1,34,'강원도');

CREATE TABLE `USER6` LIKE `USER5`;
INSERT INTO `USER6` SELECT *FROM `USER5`;
INSERT INTO `USER6` (`name`,`gender`, `age`, `addr`)
	SELECT `name`,`gender`,`age`,`addr` FROM `USER5`;
USER6