
INSERT INTO bank values('61,RESIDENCY RD, BANGALORE, PIN:560025','City Union Bank', 1);
INSERT INTO bank values('4,COMMERCIAL STREET, BANGALORE(CANTT)','The Ratnakar Bank', 2);
INSERT INTO bank values('38,I STAGE, INDRA NAGAR','IndusInd Bank', 3);
INSERT INTO bank values('34, Ramavilasa Road, Mysore','AXIS Bank', 4);
INSERT INTO bank values('109, K S Rao Road , Mangalore - 575001','HDFC Bank', 5);
INSERT INTO bank values('101, Sutaria Complex, Koppikar Road , Hubli - 580020','YES Bank', 6);
INSERT INTO bank values('1014, Gunj Road , Raichur - 584102','ICICI Bank', 7);
INSERT INTO bank values('37, Goldsmith Street , Brucepet, Bellari - 583101','United Western Bank', 8);

INSERT INTO branch values('HDFCKA0001','423, MG ROAD, Bangalore','HDFC MG Road', 5);
INSERT INTO branch values('HDFCKA0002','14,XY Road,Koramangala, Bangalore','HDFC Koramangala', 5);
INSERT INTO branch values('HDFCKA0003','23, opposite to PESU-RR, Bangalore','HDFC Banashankari', 5);
INSERT INTO branch values('HDFCKA0004','622, AB ROAD, Bangalore','HDFC Indranagar', 5);
INSERT INTO branch values('HDFCKA0005','11, near KV school, Bangalore','HDFC Baiyapanahalli', 5);
INSERT INTO branch values('HDFCKA0006','35, JX Complex, Bangalore','HDFC K. Layout', 5);
INSERT INTO branch values('HDFCKA0007','53, DEF Street, Bangalore','HDFC RR Nagar', 5);
INSERT INTO branch values('HDFCKA0008','9, GG Street, Bangalore','HDFC Hebbal', 5);

INSERT INTO loan values('Equipment', 550000.00, 210002,'HDFCKA0001');
INSERT INTO loan values('House', 5100000.00, 110006,'HDFCKA0001');
INSERT INTO loan values('Business', 2500000.00, 310007,'HDFCKA0001');
INSERT INTO loan values('House', 4000000.00, 110008,'HDFCKA0001');
INSERT INTO loan values('Equipment', 355000.00, 210009,'HDFCKA0001');
INSERT INTO loan values('Business', 3000000.00, 310010,'HDFCKA0001');
INSERT INTO loan values('Business', 1500000.00, 310011,'HDFCKA0001');
INSERT INTO loan values('House', 9000000.00, 110012,'HDFCKA0001');
INSERT INTO loan values('Equipment', 515000.00, 210013,'HDFCKA0001');

INSERT INTO account values(50006.10, 15634602, 'N', 'Y','HDFCKA0001');
INSERT INTO account values(100004.60, 15647311, 'N', 'Y','HDFCKA0001');
INSERT INTO account values(500071.30, 15619304, 'N', 'Y','HDFCKA0001');
INSERT INTO account values(75005.20, 15701354, 'N', 'Y','HDFCKA0001');
INSERT INTO account values(11014.90, 15737888, 'Y', 'N','HDFCKA0001');
INSERT INTO account values(9000.60, 15574012, 'Y', 'N','HDFCKA0001');
INSERT INTO account values(800034.50, 15592531 , 'Y', 'N','HDFCKA0001');
INSERT INTO account values(150027.00, 15656148, 'Y', 'N','HDFCKA0001');

INSERT INTO customer values('Kiran Kumar',1,1234567800,'Shanti Nagar,Bangalore');
INSERT INTO customer values('Rahul Mehta',2,2345678900,'MG Road,Bangalore');
INSERT INTO customer values('Nandan Mohan',3,3456789000,'Shanti Nagar,Bangalore');
INSERT INTO customer values('Lakshana Kolur',4,4567890100,'BTM,Bangalore');
INSERT INTO customer values('Mohan Kumar',5,5678901200,'Banashankari,Bangalore');
INSERT INTO customer values('Meghana Singh',6,6789012300,'Richmond Town,Bangalore');
INSERT INTO customer values('Rajdeep Mamtani',7,8901234500,'Kalyan Nagar,Bangalore');
INSERT INTO customer values('Sonal Singh',8,9012345600,'Hebbal,Bangalore');

INSERT INTO cust_dependents values(0,1);
INSERT INTO cust_dependents values(1,2);
INSERT INTO cust_dependents values(0,3);
INSERT INTO cust_dependents values(3,4);
INSERT INTO cust_dependents values(0,5);
INSERT INTO cust_dependents values(1,6);
INSERT INTO cust_dependents values(2,7);
INSERT INTO cust_dependents values(0,8);

INSERT INTO payment values('31-12-2025',10000.00,12345,210002);
INSERT INTO payment values('13-10-2025',25000.00,12346,110006);
INSERT INTO payment values('21-08-2030',30000.00,12347,310007);
INSERT INTO payment values('12-06-2030',30000.00,12348,110008);
INSERT INTO payment values('17-04-2026',15000.00,12349,210009);
INSERT INTO payment values('16-03-2029',30000.00,12350,310010);
INSERT INTO payment values('01-01-2030',45000.00,12351,310011);
INSERT INTO payment values('05-11-2026',40000.00,12352,110012);
INSERT INTO payment values('19-11-2025',15000.00,12353,210013);

INSERT INTO employee values('12-11-2020','Abhilasha Somani',121,'HDFCKA0001',6,121);
INSERT INTO employee values('25-03-2018','Amol Srivatsava',122,'HDFCKA0001',8,121);
INSERT INTO employee values('23-05-2017','Amol Prakash',123,'HDFCKA0001',8,121);
INSERT INTO employee values('17-07-2019','Mrinal Kumar',124,'HDFCKA0001',4,121);
INSERT INTO employee values('19-09-2020','Najuk Pincha',125,'HDFCKA0001',8,122);
INSERT INTO employee values('15-01-2021','Radhika Agarwal',126,'HDFCKA0001',6,122);
INSERT INTO employee values('01-02-2020','Debojit Agarwal',127,'HDFCKA0001',6,122);
INSERT INTO employee values('02-04-2017','Nandan Mohan',128,'HDFCKA0001',8,122);

INSERT INTO dependents values('Kritin','M',12,'Son',121);
INSERT INTO dependents values('Kirtan','M',14,'Son',122);
INSERT INTO dependents values('Kirtana','F',16,'Daughter',123);
INSERT INTO dependents values('Kartik','M',19,'Son',124);
INSERT INTO dependents values('Nitin','M',7,'Son',125);
INSERT INTO dependents values('Kaushal','M',12,'Son',126);
INSERT INTO dependents values('Pavithra','F',19,'Daughter',127);
INSERT INTO dependents values('Agasthya','M',20,'Son',128);

INSERT INTO availed_by values(210002,1);
INSERT INTO availed_by values(110006,2);
INSERT INTO availed_by values(310007,3);
INSERT INTO availed_by values(110008,4);
INSERT INTO availed_by values(210009,5);
INSERT INTO availed_by values(310010,6);
INSERT INTO availed_by values(310011,7);
INSERT INTO availed_by values(110012,8);

INSERT INTO held_by values(15634602,1);
INSERT INTO held_by values(15647311,2);
INSERT INTO held_by values(15619304,3);
INSERT INTO held_by values(15701354,4);
INSERT INTO held_by values(15737888,5);
INSERT INTO held_by values(15574012,6);
INSERT INTO held_by values(15592531,7);
INSERT INTO held_by values(15656148,8);
















