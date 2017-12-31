CREATE DATABASE WIDJET_CORP;
USE WIDJET_CORP;

CREATE TABLE SUBJECTS (
  ID INT(11) NOT NULL AUTO_INCREMENT,
	MENU_NAME VARCHAR(30) NOT NULL,
	POSITION INT(3) NOT NULL,
	VISIBLE TINYINT(1) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE PAGES (
	ID INT(11) NOT NULL AUTO_INCREMENT,
	SUBJECT_ID INT(11) NOT NULL,
	MENU_NAME VARCHAR(30) NOT NULL, 
	POSITION INT(3) NOT NULL,
	VISIBLE TINYINT(1) NOT NULL,
	CONTENT TEXT NOT NULL,
	PRIMARY KEY (ID),
	INDEX (SUBJECT_ID)
);

CREATE TABLE ADMINS (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  USERNAME VARCHAR(50) NOT NULL,
  HASHED_PASSWORD VARCHAR(60) NOT NULL,
  PRIMARY KEY (ID)
);

SHOW FIELDS FROM ADMINS;
SHOW COLUMNS FROM PAGES;

INSERT INTO SUBJECTS (MENU_NAME, POSITION, VISIBLE) 
VALUES 
	('About Widjet Corp', 1, 1),
	('Products', 2, 1),
	('Services', 3, 1),
	('Misc', 4, 0);

INSERT INTO PAGES (SUBJECT_ID, MENU_NAME, POSITION, VISIBLE, CONTENT)
VALUES
	(1, 'Our mission', 1, 1, 'Our mission always been'), 
	(1, 'Our history', 2, 1, 'Founded in 1978 by two enterprising engineers.'), 
	(2, 'Large Widjets', 1, 1, 'Our large widjets have tobe seen to be believed'), 
	(2, 'Small Widjets', 2, 1, 'They say big things come in small packages'),
	(3, 'Retrofitting', 1, 1, 'We love to replace widjets'),
	(3, 'Certification', 2, 1, 'We can certify any widjet, not just our own');

SELECT * FROM PAGES WHERE ID = 1;
SELECT * FROM SUBJECTS WHERE ID = 1; 
SELECT * FROM PAGES WHERE SUBJECT_ID = 3;
