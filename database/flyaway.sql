create database flyaway;
use flyaway;
---------------------------------
--- create the login page

CREATE TABLE login(
username varchar(250) DEFAULT NULL,
password varchar(250) DEFAULT NULL
);

SELECT * FROM  login;
INSERT INTO login value ('Sindhu','1020');
INSERT INTO login value ('Niketh','2020');
-----------------------------------------------------
CREATE TABLE airlines(
code varchar(250) DEFAULT NULL,
name varchar(250) DEFAULT NULL
);
SELECT * FROM airlines;
INSERT INTO airlines value ('INDG','Indigo');
INSERT INTO airlines value ('KING','Kingfisher');
INSERT INTO airlines value ('SPIC','Spicejet');
INSERT INTO airlines value ('AIRN','AirIndia');
INSERT INTO airlines value ('TRUJ','TrueJet');
-------------------------------------------------------
CREATE TABLE flights(
NAME varchar(250) DEFAULT NULL,
AIRLINE varchar(250) DEFAULT NULL,
WAY varchar(250) DEFAULT NULL,
PRICE varchar(250) DEFAULT NULL,
SOURECE varchar(250) DEFAULT NULL,
DESTINATION varchar(250) DEFAULT NULL
);

SELECT * FROM flights;
INSERT INTO flights value ('INDG1','INDIGO','HYD-DEL','5000','Hyderabad','Delhi');
INSERT INTO flights value ('INDG2','INDIGO','HYD-KOL','5000','Hyderabad','Kolkata');
INSERT INTO flights value ('KING1','KINGFISHER','DEL-KOL','5000','Delhi','Kolkata');
INSERT INTO flights value ('KING2','KINGFISHER','DEL-MUM','5000','Delhi','Mumbai');
INSERT INTO flights value ('SPIC1','SPICE JET','KOL-MUM','5000','Kolkata','Mumbai');
INSERT INTO flights value ('SPIC2','SPICE JET','KOL-BAN','5000','Kolkata','Bangalore');
INSERT INTO flights value ('AIRN1','AIR INDIA','MUM-BAN','5000','Mumbai','Bangalore');
-----------------------------------------------------------------------------------------------
CREATE TABLE palaces(
code varchar(250) DEFAULT NULL,
name varchar(250) DEFAULT NULL
);

SELECT * FROM palaces ;
INSERT INTO  palaces values ('HYD','Hyderabad'),('DEL','Delhi'),('KOL','Kolkata'),('MUM','Mumbai'),('BAN','Bangalore');



