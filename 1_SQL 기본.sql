#날짜 : 2021/08/03
#이름 : 남언우
#내용 : 1.SQL 기본


CREATE DATABASE `TestBD`;
DROP DATABASE `TestDB`;

#실습하기 1-2
CREATE TABLE `USER1` (
`uid` VARCHAR(10),
`name` VARCHAR(10),
`hp`	VARCHAR(13),
`age` INT 

);
DROP TABLE `USER1`;


INSERT INTO `USER1` VALUES('A101','김유신','010-9494-3453',25);
INSERT INTO `USER1` VALUES('A102','김춘추','010-4553-1234',23);
INSERT INTO `USER1` VALUES('A103','장보고','010-3333-3333',33);
INSERT INTO `USER1` (`age`,`name`,`uid`,`hp`) VALUES(45,'강감찬','A104','010-2222-2222');
INSERT INTO `USER1` SET
								`name` = '이순신',
								`age` =  51,
								`hp` = '010-5555-5555',
								`uid` = 'A105';
SELECT `uid`,`name`,`age`,`hp` FROM `USER1`;

UPDATE `USER1` SET `hp` = '010-1234-1234';
UPDATE `USER1` SET `uid` = 'B101',`name`='홍길동';
UPDATE `USER1` SET `uid` = 'A101' , 
							`name`='김유신'
							where
							`age` = 25;
UPDATE `USER1` SET 
						`uid` ='A102',
						`name` = '김춘추',
						`hp` = '010-1234-2222'
						where
						`age` = 23;
						
DELETE FROM `USER1` WHERE `uid`='A101';
DELETE FROM `USER1` WHERE `uid`='A102' AND `age` =25;
DELETE FROM `USER1` WHERE `age`>=30;


















