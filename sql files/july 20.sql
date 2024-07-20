CREATE DATABASE jul_20;
USE  jul_20;
CREATE TABLE movie_info(movie_id int,movie_name varchar(30), movie_director varchar(40),movie_hero varchar(40),movie_herion varchar(40),movie_ticket int,movie_releasing_date bigint,movie_title varchar(50));
ALTER TABLE movie_info ADD COLUMN movie_theater_address varchar(60);
ALTER TABLE movie_info ADD COLUMN movie_rating bigint;
ALTER TABLE movie_info ADD COLUMN movie_genre_name varchar(60);
ALTER TABLE movie_info ADD COLUMN movie_director_id int;
ALTER TABLE movie_info ADD COLUMN movie_running_days int;


ALTER TABLE  movie_info RENAME COLUMN movie_name TO movie_new_name;
ALTER TABLE  movie_info RENAME COLUMN movie_hero TO movie_new_hero;
ALTER TABLE  movie_info RENAME COLUMN movie_releasing_date TO movie_releasing_date;
ALTER TABLE  movie_info RENAME COLUMN movie_rating TO movie_new_rating;
ALTER TABLE  movie_info RENAME COLUMN movie_ticket TO movie_ticket_no;
ALTER TABLE  movie_info RENAME COLUMN movie_title TO movie_title_name;
 SELECT * FROM movie_info;
 INSERT INTO movie_info VALUES(1,'kalki','prasanna','prabhas','karina',23, 2301,'kalkii','navarga',4,'horror',45,20);
 INSERT INTO movie_info VALUES(2,'kgf','raviraj','yash','radika',56, 2808,'kgf2','cinipolic',8,'fighting',55,10);
 INSERT INTO movie_info VALUES(3,'aramani','avni','rashi khana','tamana bhat',33, 2000,'aramanii','lulu pvr',9,'love story',40,10);
 INSERT INTO movie_info VALUES(4,'pailwan','hari krishana','sudeep','ramya',93, 2301,'pailwann','cinipolic',3,'fighting',35,30);
 INSERT INTO movie_info VALUES(5,'toby','sangeeta','raj b sheety','chaitra',62, 1301,'tobby','navarga theater',5,'love story',02,30);
 INSERT INTO movie_info VALUES(6,'pilwan','s krishma','sudeep','akanksha sing',33, 1608,'pilwann','gold cinama',9,'fighting',95,16);
 INSERT INTO movie_info VALUES(7,'titanic','prasannakumar','leonardo','kate winslet',03, 2901,'titanicc','orion pvr',99,'horror',95,30);
 INSERT INTO movie_info VALUES(8,'avenger','kavi rajj','robert downey','scarlett johansson',43, 0941,'avenger2','navarga',4,'horror',45,20);
 INSERT INTO movie_info VALUES(9,'avatar','pampa','sam worthlington','zoe saldana',43, 2301,'avatarr','max pvr',3,'fithting',95,40);
 INSERT INTO movie_info VALUES(10,'wonder women','pratana','chris pine','gal gadot',83, 2312,'wonder','navarga',3,'horror',66,20);
 UPDATE movie_info SET movie_title_name='lucia' where movie_id=1;
 rollback;
 UPDATE movie_info SET movie_title_name='lucia' where movie_id=1;
 UPDATE movie_info SET movie_title_name='mungaru male' where movie_id=2;
 UPDATE movie_info SET movie_title_name='drishya' where movie_id=3;
 UPDATE movie_info SET movie_title_name='u turn' where movie_id=6;
 UPDATE movie_info SET movie_title_name='kirik party' where movie_id=8;
 UPDATE movie_info SET movie_title_name='rangi taranga' where movie_id=10;
 UPDATE movie_info SET movie_title_name='super' where movie_id=4;
 UPDATE movie_info SET movie_title_name='mufti' where movie_id=5;
 


DELETE FROM movie_info where movie_id=9;
DELETE FROM movie_info where movie_id=7;
DELETE FROM movie_info where movie_id=2;

SELECT * FROM movie_info where movie_id=1 or movie_id=3 or movie_id=5;
SELECT * FROM movie_info where movie_id=3 and movie_director='avni';
SELECT * FROM movie_info where movie_id in(3,6,8);
SELECT * FROM movie_info where movie_id not in(3,4,5,6);