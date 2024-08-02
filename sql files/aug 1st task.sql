CREATE DATABASE Commodity;

USE Commodity;

CREATE TABLE Item_info(id int not null,i_name varchar(20) unique,i_price int primary key,
i_manf_date datetime,i_company varchar(20),i_no bigint);

DESC Item_info;

alter table Item_info add constraint i_no_chk check(i_no>5);
alter table Item_info drop constraint i_no_chk;

INSERT INTO Item_info VALUES(021,'maida atta ',60,now(),'sujji',2467889);
INSERT INTO Item_info VALUES(022,'wheat atta',160,now(),'aashirvad',1234567);
INSERT INTO Item_info VALUES(023,'raggi atta',40,now(),'atta',987654);
INSERT INTO Item_info VALUES(024,'biscuit pack',39,now(),'parle',452376);
INSERT INTO Item_info VALUES(025,'chocolates',120,now(),'Kitkat',349856);
INSERT INTO Item_info VALUES(026,'washingpowder',900,now(),'surfexcel',246818);
INSERT INTO Item_info VALUES(027,'soap',200,now(),'Rin',239087);
INSERT INTO Item_info VALUES(028,'icecream',825,now(),'amul',111111);
INSERT INTO Item_info VALUES(029,'rice',590,now(),'Bhasmati',898989);
INSERT INTO Item_info VALUES(030,'powder',20,now(),'ponds',222222);

SELECT * FROM Item_info;

SELECT * FROM Item_info where id between 021 and 028;

SELECT * FROM Item_info where i_name like 'b%';

SELECT * FROM Item_info order by i_company;

SELECT LOWER(i_name) as to_lower from Item_info;

SELECT UPPER(i_company) as to_upper from Item_info;

SELECT CONCAT(i_name,i_company)from Item_info;

SELECT LENGTH(i_manf_date)from Item_info;

CREATE INDEX i_name_index on Item_info(i_name);
 EXPLAIN SELECT * FROM Item_info where i_name = 'icecream';
 
 
 
 
 
 
 
 