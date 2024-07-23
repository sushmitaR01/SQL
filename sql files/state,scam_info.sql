CREATE DATABASE jul_22;
USE jul_22;
CREATE TABLE state_info(id int,state_name varchar(40),abbreviation varchar(30),capital varchar(60),population int,establish_date bigint,region varchar(50),area varchar(50));
ALTER TABLE state_info ADD COLUMN governor varchar(60);
ALTER TABLE state_info ADD COLUMN moto varchar(70);
ALTER TABLE state_info ADD COLUMN admitted varchar(70);


ALTER TABLE  state_info RENAME COLUMN abbreviation TO state_abbreviation;
ALTER TABLE  state_info RENAME COLUMN capital TO state_capital;
ALTER TABLE  state_info RENAME COLUMN population TO state_population;
ALTER TABLE  state_info RENAME COLUMN region TO state_region;
ALTER TABLE  state_info RENAME COLUMN governor TO state_governor;


SELECT * FROM  state_info;

INSERT INTO state_info VALUES(1,'karnataka','goka','bengaluru',120,1986,'Western part','hills station','Thawar Chand Gehlot','Satyameva Jayate','yes');

INSERT INTO state_info VALUES(2,'Andhra Pradesh','AP','Amaravati',180,1996,'South','south station','S. Abdul Nazeer','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(3,'Arunachal Pradesh','AR','Itanagar',220,1886,'Northeast','Northeast station','Kaiwalya Trivikram Parnaik','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(4,'Assam','AS','Dispur',180,1966,'Northeast','Northeast station','Gulab Chand Kataria','Joy Aai Axom','yes');
INSERT INTO state_info VALUES(5,'Bihar','BR','Patna',220,1996,'East part','East station','Rajendra Vishwanath Arlekar','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(6,'Chhattisgarh','CG','Raipur',450,1996,'Central part','Central station','Biswabhusan Harichandan','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(7,'Goa','GA','Panaji',550,1996,'Western part','West station','P. S. Sreedharan Pillai','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(8,'Gujarat','GJ','Gandhinagar',990,1886,'Western part','West station','Acharya Devvrat','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(9,'Haryana','HR','Chandigarh',880,1989,'North part','North station','Bandaru Dattatreya','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(10,'Himachal Pradesh','HP','Shimla',1000,1996,'North part','North station','Shiv Pratap Shukla','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(11,'Jharkhand','JH','Ranchi',1110,1966,'East part','East station','C. P. Radhakrishnan','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(12,'Kerala','KL','Thiruvananthapuram',1120,1966,'South part','hills station','Arif Mohammad Khan','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(13,'Madhya Pradesh','MP','Bhopal',2220,1956,'Central part','Central station','Mangubhai C. Patel','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(14,'Maharashtra','MH','Mumbai',3320,1986,'Western part','West station','Ramesh Bais','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(15,'Manipur','MN','Imphal',4440,1975,'Northeast part','Northeast station','Anusuiya Uikey	','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(16,'Meghalaya','ML','Shillong',7770,1909,'Northeast part','Northeast station','Phagu Chauhan','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(17,'Mizoram','MZ','Aizawl',120,1986,'Northeast part','Northeast station','Kambhampati Hari Babu','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(18,'Nagaland','NL','Kohima',1900,1986,'Northeast part','Northeast station','La. Ganesan','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(19,'Odisha','OD','Bhubaneswar',1920,1986,'East part','East station','Ganeshi Lal','Satyameva Jayate','yes');
INSERT INTO state_info VALUES(20,'Rajasthan','RJ','Jaipur',1520,1976,'West part','West station','Kalraj Mishra','Satyameva Jayate','yes');



UPDATE state_info SET area='backward' where id=1;
UPDATE state_info SET area='forward' where id=2;
UPDATE state_info SET area='terriost' where id=3;
UPDATE state_info SET area='union territory' where id=4;
UPDATE state_info SET area='backward' where id=5;
UPDATE state_info SET area='territory' where id=6;
UPDATE state_info SET area='backward' where id=7;
UPDATE state_info SET area='snowy area' where id=8;
UPDATE state_info SET area='backward' where id=9;

DELETE FROM state_info where id=9;
DELETE FROM state_info where id=19;
DELETE FROM state_info where id=4;


SELECT * FROM state_info where id=1 or id=3 or id=5;
SELECT * FROM state_info where id=1 and state_name='karnataka';
SELECT * FROM state_info where id in(3,6,8);
SELECT * FROM state_info where id not in(3,8,5,6);





CREATE TABLE scam_info(scam_id INT ,
    scam_name VARCHAR(255) ,
    scam_type VARCHAR(100),
    description varchar(90),
    date_reported bigint,
    status VARCHAR(50),
    reported_by VARCHAR(255),
    location VARCHAR(255));
    
    
    
    ALTER TABLE scam_info ADD COLUMN amount_involved int;
ALTER TABLE scam_info ADD COLUMN scam_update varchar(70);

ALTER TABLE  scam_info RENAME COLUMN description TO scam_description;
ALTER TABLE  scam_info RENAME COLUMN status TO scam_status;
ALTER TABLE  scam_info RENAME COLUMN location TO scam_location;
ALTER TABLE  scam_info RENAME COLUMN amount_involved TO scam_amount_involved;
ALTER TABLE  scam_info RENAME COLUMN reported_by TO scam_reported_by;

SELECT * FROM scam_info;

INSERT INTO scam_info VALUES(1,'Investment Fraud','Ponzi Scheme','Fraudulent investment scheme promising high returns',2001,'Under Investigation', 'John Doe','New York',50000,'STILL INVESTING');
INSERT INTO scam_info VALUES(2,'credit card','Small Industry','a fraudulent or deceptive act or operation',2000,'started Investigation', 'John Dore','New delhi',70000,'completed');
INSERT INTO scam_info VALUES(3,'bank account','Employment scam','Fraudulent investment scheme promising high returns',2001,'finished Investigation', 'John kalverin','america',80000,'STILL INVESTING');
INSERT INTO scam_info VALUES(4,'Social Security numbers','Phishing','a fraudulent or deceptive act or operation',2002,'Under Investigation', 'bharat','england',90000,'completed');
INSERT INTO scam_info VALUES(5,'name ','Online shopping','Fraudulent investment scheme promising high returns',2003,'started Investigation', 'harish','karnataka',60000,'STILL INVESTING');
INSERT INTO scam_info VALUES(6,'address','Advance fee fraud','a fraudulent or deceptive act or operation',2004,'finished Investigation', 'akshara','canada',20000,'completed');
INSERT INTO scam_info VALUES(7,'cybercrime','Romance scams','Fraudulent investment scheme promising high returns',2005,'Under Investigation', 'suhas','mexico',30000,'STILL INVESTING');
INSERT INTO scam_info VALUES(8,'steal money','Lottery scams','a fraudulent or deceptive act or operation',2006,'Under Investigation', 'omkar','banglore',40000,'STILL INVESTING');
INSERT INTO scam_info VALUES(9,'personal information','Advance fee fraud','Fraudulent investment scheme promising high returns',2001,'finished Investigation', 'sunil','New York',50000,'STILL INVESTING');
INSERT INTO scam_info VALUES(10,'healthcare Fraud','Charity scam','a fraudulent or deceptive act or operation',2000,'started Investigation', 'devendar','sri lanka',70000,'completed');
INSERT INTO scam_info VALUES(11,'Report fake','Relationship scam','Fraudulent investment scheme promising high returns',2007,'Under Investigation', 'kiran','bali',80000,'STILL INVESTING');
INSERT INTO scam_info VALUES(12,'phone calls.','Impersonation scams','a fraudulent or deceptive act or operation',2008,'Under Investigation', 'naveen','New York',10000,'STILL INVESTING');
INSERT INTO scam_info VALUES(13,'text message scam','Software','Fraudulent investment scheme promising high returns',2009,'started Investigation', 'vrushank','america',40000,'completed');
INSERT INTO scam_info VALUES(14,'website scam','Computer hacking','a fraudulent or deceptive act or operation',2010,'Under Investigation', 'vital','africa',90000,'STILL INVESTING');
INSERT INTO scam_info VALUES(15,'Email scams','Credit card scams','Fraudulent investment scheme promising high returns',2001,'finished Investigation', 'John Doe','New York',80000,'completed');
INSERT INTO scam_info VALUES(1,'Email scams','Ponzi Scheme','a fraudulent or deceptive act or operation',2000,'Under Investigation', 'timma','New York',90000,'STILL INVESTING');

UPDATE scam_info SET date_reported=1999 where scam_id=1;
UPDATE scam_info SET date_reported=1998 where scam_id=2;
UPDATE scam_info SET date_reported=1997 where scam_id=3;
UPDATE scam_info SET date_reported=1996 where scam_id=4;
UPDATE scam_info SET date_reported=1995 where scam_id=5;
UPDATE scam_info SET date_reported=1994 where scam_id=6;
UPDATE scam_info SET date_reported=1999 where scam_id=7;
UPDATE scam_info SET date_reported=1998 where scam_id=8;
UPDATE scam_info SET date_reported=1990 where scam_id=9;

DELETE FROM scam_info where scam_id=9;
DELETE FROM scam_info where scam_id=8;
DELETE FROM scam_info where scam_id=7;

SELECT * FROM scam_info where scam_id=1 or scam_id=3 or scam_id=5;
SELECT * FROM scam_info where scam_id=1 and scam_name='Investment Fraud';
SELECT * FROM scam_info where scam_id in(3,6,1);
SELECT * FROM scam_info where scam_id not in(3,4,5,6);


