
USE Commodity;


CREATE TABLE Material_info(id int not null,m_name varchar(20) unique,m_price int primary key,
m_manf_date datetime,m_location varchar(20),m_no bigint);

DESC Material_info;

alter table Material_info add constraint m_no_chk check(m_no>5);
alter table Material_info drop constraint m_no_chk;

INSERT INTO Material_info VALUES(41,'Teflon',80,now(),'Rajaji nagar',24567);
INSERT INTO Material_info VALUES(42,'Polyurethane',160,now(),'Basham circle',0987667);
INSERT INTO Material_info VALUES(43,'Cotton',40,now(),'kempagouda',234654);
INSERT INTO Material_info VALUES(44,'Polyester',39,now(),'maha laxmi layout',985334556);
INSERT INTO Material_info VALUES(45,'Nylon',170,now(),'chickpete',0987656);
INSERT INTO Material_info VALUES(46,'Wool',100,now(),'jp nagar',2245688);
INSERT INTO Material_info VALUES(47,'Silk',260,now(),'navarang',239087);
INSERT INTO Material_info VALUES(48,'Linen',245,now(),'nandini layout',98711);
INSERT INTO Material_info VALUES(49,'Rayon',950,now(),'marathalli',8086543289);
INSERT INTO Material_info VALUES(50,'Spandex',810,now(),'pennya',22998622);

SELECT * FROM Material_info;

SELECT * FROM Material_info where id between 41 and 48;

SELECT * FROM Material_info where m_name like 'n%';

SELECT * FROM Material_info order by m_location;

SELECT LOWER(m_name) as to_lower from Material_info;

SELECT UPPER(m_location) as to_upper from Material_info;

SELECT CONCAT(m_name,m_location)from Material_info;

SELECT LENGTH(m_manf_date)from Material_info;

CREATE INDEX m_name_index on Material_info(m_name);
 EXPLAIN SELECT * FROM Material_info where m_name = 'Teflon';