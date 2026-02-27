create database project;
use project;

-- table 1 for customers
create table customers(
s_no int primary key auto_increment,
customer_name text,
phone_number varchar(25),
email varchar(40),
address varchar(100),
city text,
state text);

insert into customers(customer_name,phone_number,email,address,city,state)
values
('Arun Kumar',9876543210,'arun@gmail.com','12 MG Road','Chennai','Tamil Nadu'),
('Priya Sharma',9123456780,'priya@gmail.com','45 Park Street','Kolkata','West Bengal'),
('Rahul Das',9988776655,'rahul@gmail.com','78 Lake View','Bhopal','Madhya Pradesh'),
('Sneha Reddy',9090909090,'sneha@gmail.com','22 Jubilee Hills','Hyderabad','Telangana'),
('Vikram Singh',9871234560,'vikram@gmail.com','9 Civil Lines','Jaipur','Rajasthan'),
('Meena Iyer',9001122334,'meena@gmail.com','3 Temple Road','Madurai','Tamil Nadu'),
('Rohit Verma',9812345678,'rohit@gmail.com','56 Sector 15','Noida','UP'),
('Anjali Mehta',9823456789,'anjali@gmail.com','88 Ashram Rd','Ahmedabad','Gujarat'),
('Karthik Raj',9898989898,'karthik@gmail.com','10 Anna Nagar','Chennai','Tamil Nadu'),
('Pooja Patel',9765432109,'pooja@gmail.com','5 Ring Road','Surat','Gujarat'),
('Suresh Babu',9345678901,'suresh@gmail.com','77 Market St','Coimbatore','Tamil Nadu'),
('Neha Kapoor',9012345678,'neha@gmail.com','2 Film City','Mumbai','Maharashtra'),
('Deepak Yadav',9123987654,'deepak@gmail.com','44 Bus Stand Rd','Patna','Bihar'),
('Kiran Nair',9891234567,'kiran@gmail.com','16 Beach Rd','Kochi','Kerala'),
('Amit Shah',9988123456,'amit@gmail.com','1 River View','Vadodara','Gujarat'),
('Lakshmi Devi',9876501234,'lakshmi@gmail.com','90 Flower Rd','Trichy','Tamil Nadu'),
('Mohit Jain',9811198765,'mohit@gmail.com','34 Main Bazaar','Delhi','Delhi'),
('Divya Shetty',9765001122,'divya@gmail.com','7 Hill Road','Mangalore','Karnataka'),
('Ganesh Pawar',9700011223,'ganesh@gmail.com','19 Station Rd','Pune','Maharashtra'),
('Nisha Gupta',9696969696,'nisha@gmail.com','4 Colony Rd','Lucknow','UP'),
('Ajay Kumar',9555512345,'ajay@gmail.com','55 Gandhi Rd','Kanpur','UP'),
('Rekha Pillai',9444412345,'rekha@gmail.com','21 Lake Rd','Trivandrum','Kerala'),
('Harish Rao',9333312345,'harish@gmail.com','9 IT Park','Hyderabad','Telangana'),
('Komal Arora',9222212345,'komal@gmail.com','12 Model Town','Ludhiana','Punjab'),
('Sunil Joshi',9111112345,'sunil@gmail.com','89 Fort Area','Mumbai','Maharashtra'),
('Preeti Saxena',9000012345,'preeti@gmail.com','3 Cantonment','Jhansi','UP'),
('Manoj Tiwari',9888811111,'manoj@gmail.com','6 Market Yard','Nagpur','Maharashtra'),
('Keerthi Kumar',9777711111,'keerthi@gmail.com','18 Temple St','Mysore','Karnataka'),
('Ashok Patil',9666611111,'ashok@gmail.com','77 Shivaji Rd','Kolhapur','Maharashtra'),
('Bhavana Rao',9555511111,'bhavana@gmail.com','14 Residency Rd','Bangalore','Karnataka'),
('Tarun Khanna',9444411111,'tarun@gmail.com','8 Mall Road','Shimla','Himachal'),
('Ritu Malhotra',9333311111,'ritu@gmail.com','6 Garden Rd','Chandigarh','Punjab'),
('Sanjay Dutt',9222211111,'sanjay@gmail.com','45 Hill Top','Mumbai','Maharashtra'),
('Alok Mishra',9111111112,'alok@gmail.com','5 University Rd','Allahabad','UP'),
('Shalini Roy',9000011112,'shalini@gmail.com','22 City Center','Durgapur','WB'),
('Farhan Ali',9888811112,'farhan@gmail.com','90 Old City','Hyderabad','Telangana'),
('Naveen Gowda',9777711112,'naveen@gmail.com','33 MG Circle','Bangalore','Karnataka'),
('Prakash Naidu',9666611112,'prakash@gmail.com','10 Harbour Rd','Vizag','AP'),
('Sonia Gill',9555511112,'sonia@gmail.com','17 Golden Temple Rd','Amritsar','Punjab'),
('Yogesh Kulkarni',9444411112,'yogesh@gmail.com','9 FC Road','Pune','Maharashtra'),
('Chitra Menon',9333311112,'chitra@gmail.com','4 Marine Drive','Kochi','Kerala'),
('Ramesh Gupta',9222211112,'ramesh@gmail.com','78 Cloth Market','Indore','MP'),
('Dinesh Sharma',9111111113,'dinesh@gmail.com','8 Pink City','Jaipur','Rajasthan'),
('Nalini Iyer',9000011113,'nalini@gmail.com','3 Temple View','Chennai','Tamil Nadu'),
('Rajesh Khanna',9888811113,'rajesh@gmail.com','6 Carter Rd','Mumbai','Maharashtra'),
('Anu Thomas',9777711113,'anu@gmail.com','21 Church Rd','Kottayam','Kerala'),
('Satish Reddy',9666611113,'satish@gmail.com','11 Tech Park','Hyderabad','Telangana'),
('Vani Krishnan',9555511113,'vani@gmail.com','29 Lake Area','Salem','Tamil Nadu'),
('Kishore Das',9444411113,'kishore@gmail.com','7 Hill St','Guwahati','Assam'),
('Tejaswini Patil',9333311113,'tejaswini@gmail.com','12 Sugar Mill Rd','Belgaum','Karnataka');

-- table two for automobiles
create table vehicles(
s_id int primary key auto_increment,
vehicle_name text,
vehicle_type varchar(25),
reg_id int,
customer_id int not null,
constraint cust_id_uk unique(customer_id),
constraint check_v_type check (vehicle_type in ('car','bike','truck','boat','bus')),
constraint fk_cust_id foreign key(s_id)references customers(s_no)) ;

insert into vehicles(customer_id,vehicle_name,vehicle_type,reg_id,s_id)
values
(1001,'Swift','car',5678,1),
(1002,'Pulsar','bike',1234,2),
(1003,'Activa','bike',7788,3),
(1004,'Innova','car',9988,4),
(1005,'Eicher','truck',4455,5),
(1006,'City','car',6677,6),
(1007,'Splendor','bike',1122,7),
(1008,'Fortuner','car',3344,8),
(1009,'Volvo Bus','bus',5566,9),
(1010,'Mahindra Boat','boat',7789,10),
(1011,'i20','car',2233,11),
(1012,'Apache','bike',4456,12),
(1013,'Tata 407','truck',8899,13),
(1014,'Verna','car',6678,14),
(1015,'Duke','bike',9900,15),
(1016,'Ashok Leyland','truck',4321,16),
(1017,'Jazz','car',7654,17),
(1018,'Access','bike',8765,18),
(1019,'School Bus','bus',3456,19),
(1020,'Fishing Boat','boat',9876,20),
(1021,'Baleno','car',1111,21),
(1022,'Unicorn','bike',2222,22),
(1023,'Safari','car',3333,23),
(1024,'Truck Pro','truck',4444,24),
(1025,'Rapid','car',5555,25),
(1026,'FZ','bike',6666,26),
(1027,'Mini Bus','bus',7777,27),
(1028,'Cargo Boat','boat',8888,28),
(1029,'Alto','car',9999,29),
(1030,'Shine','bike',1212,30),
(1031,'XUV500','car',2323,31),
(1032,'Discover','bike',3434,32),
(1033,'Dump Truck','truck',4545,33),
(1034,'Creta','car',5656,34),
(1035,'Hornet','bike',6767,35),
(1036,'Tour Bus','bus',7878,36),
(1037,'River Boat','boat',8989,37),
(1038,'Ciaz','car',9090,38),
(1039,'Passion','bike',2121,39),
(1040,'Pickup Truck','truck',3232,40),
(1041,'Harrier','car',4343,41),
(1042,'Glamour','bike',5454,42),
(1043,'Luxury Bus','bus',6565,43),
(1044,'Speed Boat','boat',7676,44),
(1045,'Kwid','car',8787,45),
(1046,'R15','bike',9898,46),
(1047,'Trailer Truck','truck',1478,47),
(1048,'Seltos','car',2589,48),
(1049,'Pleasure','bike',3690,49),
(1050,'Metro Bus','bus',1597,50);

-- table 3 policy
drop table policy;
create table policy(
s_no int primary key auto_increment,
policy_id int not null,
policy_name text,
premium_amount int,
duration int,
coverage_type text,
constraint p_id_uk unique(policy_id));

insert into policy(policy_id,policy_name,premium_amount,duration,coverage_type)
values
(101,'Basic Car',5000,1,'Full'),
(102,'Bike Secure',2500,1,'Third Party'),
(103,'Truck Shield',8000,2,'Full'),
(104,'Boat Care',6000,1,'Partial'),
(105,'Bus Cover',9000,2,'Full'),
(106,'Premium Car',12000,3,'Full'),
(107,'Bike Plus',3500,2,'Full'),
(108,'Truck Heavy',15000,3,'Full'),
(109,'Marine Safe',7000,2,'Partial'),
(110,'Bus Gold',11000,3,'Full'),
(111,'Standard Auto',4500,1,'Partial'),
(112,'Bike Basic',2000,1,'Third Party'),
(113,'Fleet Truck',14000,3,'Full'),
(114,'Boat Basic',5500,1,'Partial'),
(115,'Bus Standard',8500,2,'Full'),
(116,'Car Premium+',13000,3,'Full'),
(117,'Bike Elite',4000,2,'Full'),
(118,'Truck Elite',16000,3,'Full'),
(119,'Boat Elite',7500,2,'Partial'),
(120,'Bus Elite',12000,3,'Full'),
(121,'Economy Car',4200,1,'Third Party'),
(122,'Economy Bike',1800,1,'Third Party'),
(123,'Truck Economy',9000,2,'Partial'),
(124,'Boat Economy',5000,1,'Partial'),
(125,'Bus Economy',7800,2,'Partial'),
(126,'Luxury Car',15000,3,'Full'),
(127,'Sport Bike',5000,2,'Full'),
(128,'Cargo Truck',17000,3,'Full'),
(129,'Luxury Boat',9000,2,'Full'),
(130,'Luxury Bus',14000,3,'Full'),
(131,'Family Car',6500,2,'Full'),
(132,'Daily Bike',3000,2,'Partial'),
(133,'Industrial Truck',18000,3,'Full'),
(134,'Fishing Boat',6200,2,'Partial'),
(135,'School Bus',10000,2,'Full'),
(136,'Car Silver',7000,2,'Full'),
(137,'Bike Silver',3200,2,'Partial'),
(138,'Truck Silver',12500,2,'Full'),
(139,'Boat Silver',6800,2,'Partial'),
(140,'Bus Silver',9500,2,'Full'),
(141,'Car Gold',14000,3,'Full'),
(142,'Bike Gold',4800,3,'Full'),
(143,'Truck Gold',20000,3,'Full'),
(144,'Boat Gold',8500,3,'Full'),
(145,'Bus Gold',15000,3,'Full'),
(146,'Car Platinum',18000,3,'Full'),
(147,'Bike Platinum',6000,3,'Full'),
(148,'Truck Platinum',22000,3,'Full'),
(149,'Boat Platinum',10000,3,'Full'),
(150,'Bus Platinum',17000,3,'Full');

-- table 4 
create table insurance(
i_id int primary key auto_increment,
vehicle_id int,
policy_id int,
st_date date,
end_date date,
ins_status varchar(20),
constraint in_stat_ck check(ins_status in ('active','expired')),
constraint v_id_fk foreign key(vehicle_id) references vehicles(customer_id),
constraint p_id_fk foreign key(policy_id) references policy(policy_id));

insert into insurance(vehicle_id,policy_id,st_date,end_date,ins_status) 
value
(1001,101,'2023-01-01','2024-01-01','expired'),
(1002,102,'2023-02-10','2024-02-10','expired'),
(1003,103,'2024-01-15','2025-01-15','active'),
(1004,104,'2024-03-01','2025-03-01','active'),
(1005,105,'2023-05-20','2024-05-20','expired'),
(1006,106,'2024-06-10','2025-06-10','active'),
(1007,107,'2023-07-05','2024-07-05','expired'),
(1008,108,'2024-02-01','2025-02-01','active'),
(1009,109,'2023-09-12','2024-09-12','expired'),
(1010,110,'2024-04-18','2025-04-18','active'),
(1011,111,'2023-03-10','2024-03-10','expired'),
(1012,112,'2024-05-05','2025-05-05','active'),
(1013,113,'2023-06-15','2024-06-15','expired'),
(1014,114,'2024-07-20','2025-07-20','active'),
(1015,115,'2023-08-08','2024-08-08','expired'),
(1016,116,'2024-09-01','2025-09-01','active'),
(1017,117,'2023-10-12','2024-10-12','expired'),
(1018,118,'2024-11-11','2025-11-11','active'),
(1019,119,'2023-12-01','2024-12-01','expired'),
(1020,120,'2024-01-25','2025-01-25','active'),
(1021,121,'2023-02-18','2024-02-18','expired'),
(1022,122,'2024-03-09','2025-03-09','active'),
(1023,123,'2023-04-22','2024-04-22','expired'),
(1024,124,'2024-05-30','2025-05-30','active'),
(1025,125,'2023-06-17','2024-06-17','expired'),
(1026,126,'2024-07-19','2025-07-19','active'),
(1027,127,'2023-08-25','2024-08-25','expired'),
(1028,128,'2024-09-14','2025-09-14','active'),
(1029,129,'2023-10-03','2024-10-03','expired'),
(1030,130,'2024-11-21','2025-11-21','active'),
(1031,131,'2023-12-15','2024-12-15','expired'),
(1032,132,'2024-01-11','2025-01-11','active'),
(1033,133,'2023-02-07','2024-02-07','expired'),
(1034,134,'2024-03-17','2025-03-17','active'),
(1035,135,'2023-04-29','2024-04-29','expired'),
(1036,136,'2024-05-18','2025-05-18','active'),
(1037,137,'2023-06-09','2024-06-09','expired'),
(1038,138,'2024-07-23','2025-07-23','active'),
(1039,139,'2023-08-30','2024-08-30','expired'),
(1040,140,'2024-09-12','2025-09-12','active'),
(1041,141,'2023-10-18','2024-10-18','expired'),
(1042,142,'2024-11-28','2025-11-28','active'),
(1043,143,'2023-12-24','2024-12-24','expired'),
(1044,144,'2024-01-07','2025-01-07','active'),
(1045,145,'2023-02-20','2024-02-20','expired'),
(1046,146,'2024-03-26','2025-03-26','active'),
(1047,147,'2023-04-11','2024-04-11','expired'),
(1048,148,'2024-05-02','2025-05-02','active'),
(1049,149,'2023-06-13','2024-06-13','expired'),
(1050,150,'2024-07-08','2025-07-08','active');

-- table 5 claims
create table claims(
c_id int primary key auto_increment,
insurance_id int,
claim_date date,
claim_amount int,
claim_status varchar(20),
constraint c_sta_ck check(claim_status in('approved','pending','rejected')),
constraint ins_id_fk foreign key (insurance_id) references insurance(i_id));

insert into claims (claim_date,claim_amount,claim_status)
values
('2024-01-01',15000,'approved'),
('2024-01-01',18000,'pending'),
('2024-01-02',22000,'rejected'),
('2024-01-02',25000,'approved'),
('2024-01-03',27000,'pending'),
('2024-01-03',30000,'approved'),
('2024-01-04',21000,'rejected'),
('2024-01-04',19500,'approved'),
('2024-01-05',26000,'pending'),
('2024-01-05',32000,'approved'),
('2024-01-06',17500,'pending'),
('2024-01-06',28500,'approved'),
('2024-01-07',23000,'rejected'),
('2024-01-07',31000,'approved'),
('2024-01-08',20000,'pending'),
('2024-01-08',26000,'approved'),
('2024-01-09',28000,'approved'),
('2024-01-09',35000,'pending'),
('2024-01-10',16000,'rejected'),
('2024-01-10',29500,'approved'),
('2024-01-11',22000,'pending'),
('2024-01-11',26000,'approved'),
('2024-01-12',24000,'rejected'),
('2024-01-12',21000,'approved'),
('2024-01-13',33000,'pending'),
('2024-01-13',27500,'approved'),
('2024-01-14',29000,'approved'),
('2024-01-14',31000,'pending'),
('2024-01-15',20500,'rejected'),
('2024-01-15',22500,'approved'),
('2024-01-16',27000,'pending'),
('2024-01-16',18000,'approved'),
('2024-01-17',26000,'approved'),
('2024-01-17',24000,'pending'),
('2024-01-18',32000,'rejected'),
('2024-01-18',35000,'approved'),
('2024-01-19',15000,'pending'),
('2024-01-19',21000,'approved'),
('2024-01-20',19000,'approved'),
('2024-01-20',23000,'pending'),
('2024-01-21',30000,'approved'),
('2024-01-21',25000,'rejected'),
('2024-01-22',27500,'approved'),
('2024-01-22',31000,'pending'),
('2024-01-23',26000,'approved'),
('2024-01-23',28000,'pending'),
('2024-01-24',19500,'approved'),
('2024-01-24',20500,'rejected'),
('2024-01-25',22000,'approved'),
('2024-01-25',24000,'pending');


-- table 6 payment

create table payments(
p_id int primary key auto_increment,
customer_id int ,
paid_amount int,
paid_date date,
payment_mode text,
constraint pm_ck check (payment_mode in('cash','upi','card')),
constraint cus_id_fk foreign key (customer_id) references customers(s_no));

insert into payments(paid_amount, paid_date, payment_mode)
values
(1200,'2025-01-02','cash'),
(850,'2025-01-05','upi'),
(2300,'2025-01-08','card'),
(540,'2025-01-10','cash'),
(1999,'2025-01-12','upi'),
(760,'2025-01-15','card'),
(1450,'2025-01-18','cash'),
(3200,'2025-01-20','upi'),
(410,'2025-01-22','card'),
(2750,'2025-01-25','cash'),
(630,'2025-01-28','upi'),
(980,'2025-02-01','card'),
(1500,'2025-02-03','cash'),
(2100,'2025-02-05','upi'),
(890,'2025-02-08','card'),
(3050,'2025-02-10','cash'),
(450,'2025-02-12','upi'),
(1780,'2025-02-14','card'),
(2600,'2025-02-16','cash'),
(720,'2025-02-18','upi'),
(1100,'2025-02-20','card'),
(900,'2025-02-22','cash'),
(1340,'2025-02-24','upi'),
(2890,'2025-02-26','card'),
(560,'2025-03-01','cash'),
(1700,'2025-03-03','upi'),
(990,'2025-03-05','card'),
(2250,'2025-03-07','cash'),
(680,'2025-03-09','upi'),
(3100,'2025-03-11','card'),
(1250,'2025-03-13','cash'),
(880,'2025-03-15','upi'),
(2050,'2025-03-17','card'),
(770,'2025-03-19','cash'),
(1420,'2025-03-21','upi'),
(3300,'2025-03-23','card'),
(620,'2025-03-25','cash'),
(980,'2025-03-27','upi'),
(1560,'2025-03-29','card'),
(2450,'2025-03-31','cash'),
(510,'2025-04-02','upi'),
(1800,'2025-04-04','card'),
(2950,'2025-04-06','cash'),
(760,'2025-04-08','upi'),
(1180,'2025-04-10','card'),
(2650,'2025-04-12','cash'),
(940,'2025-04-14','upi'),
(2100,'2025-04-16','card'),
(670,'2025-04-18','cash'),
(3200,'2025-04-20','upi');

-- table 7 agents

create table agents(
a_id int primary key auto_increment,
agent_name text,
phone varchar(25),
branch text);

insert into agents(agent_name,phone,branch)
values
('Ravi Kumar',9876543210,'Chennai'),
('Arjun Singh',9123456780,'Mumbai'),
('Vikram Rao',9988776655,'Hyderabad'),
('Karthik S',9090909090,'Chennai'),
('Manoj Sharma',9811122233,'Delhi'),
('Suresh Babu',9345678123,'Bangalore'),
('Ajith Kumar',9567890123,'Chennai'),
('Rahul Verma',9871234560,'Pune'),
('Prakash R',9001122334,'Coimbatore'),
('Dinesh K',9789012345,'Madurai'),
('Sunil Patel',9867543210,'Ahmedabad'),
('Ramesh Gupta',9123987654,'Delhi'),
('Kiran Nair',9898989898,'Kochi'),
('Anand Raj',9445566778,'Chennai'),
('Harish P',9556677889,'Trichy'),
('Deepak Yadav',9876501234,'Lucknow'),
('Gokul Krishna',9345612789,'Chennai'),
('Vivek Jain',9812345678,'Jaipur'),
('Senthil Kumar',9098765432,'Salem'),
('Mahesh B',9786504321,'Bangalore'),
('Naveen Reddy',9988123456,'Hyderabad'),
('Tarun Das',9877098765,'Kolkata'),
('Balaji S',9444400001,'Chennai'),
('Abhishek Mishra',9123009876,'Varanasi'),
('Sathish K',9566001122,'Madurai'),
('Vinod N',9345002233,'Coimbatore'),
('Rohit Sharma',9897001122,'Delhi'),
('Kishore P',9003004455,'Chennai'),
('Aravind R',9789005566,'Trichy'),
('Nitin Arora',9811006677,'Delhi'),
('Surya Prakash',9442207788,'Chennai'),
('Ajay Kulkarni',9876508899,'Pune'),
('Hari Krishnan',9567809900,'Kochi'),
('Muthu S',9345612340,'Salem'),
('Ganesh R',9001123456,'Coimbatore'),
('Pradeep K',9789015678,'Madurai'),
('Lokesh Jain',9812346789,'Jaipur'),
('Sanjay Patel',9867544321,'Ahmedabad'),
('Varun Gupta',9123988765,'Delhi'),
('Rajesh Kumar',9898981234,'Chennai'),
('Yogesh B',9556671234,'Bangalore'),
('Murali K',9445561234,'Hyderabad'),
('Krishna Rao',9988771234,'Vizag'),
('Anil Sharma',9811123344,'Delhi'),
('Siva Kumar',9090901122,'Chennai'),
('Prem Anand',9345672233,'Trichy'),
('Karthikeyan',9567893344,'Madurai'),
('Ashok R',9001125566,'Coimbatore'),
('Subash C',9789017788,'Salem'),
('Deepak Raj',9876549988,'Chennai');

-- table 8 relation

create table relations(
u_id int primary key auto_increment,
agent_id int ,
customer_id int ,
gender char(2),
constraint g_ck check(gender in('f','m','t','M','F','T')),
constraint custo_fk foreign key (customer_id) references customers(s_no),
constraint foreign key (agent_id) references agents(a_id));

insert into relations(gender)
values
('M'),('F'),('M'),('F'),('M'),
('F'),('M'),('F'),('M'),('F'),
('M'),('F'),('M'),('F'),('M'),
('F'),('M'),('F'),('M'),('F'),
('M'),('F'),('M'),('F'),('M'),
('F'),('M'),('F'),('M'),('F'),
('M'),('F'),('M'),('F'),('M'),
('F'),('M'),('F'),('M'),('F'),
('M'),('F'),('M'),('F'),('M'),
('F'),('M'),('F'),('M'),('F');

-- table 9 srevice

create table service(
service_id int primary key,
vehicle_id int,
service_date date,
service_type text,
service_cost int,
constraint vehi_fk foreign key (vehicle_id) references vehicles(customer_id));

insert into service (service_id,service_date,service_type,service_cost)
values
(1001,'2025-01-02','Oil Change',800),
(1002,'2025-01-04','General Service',1500),
(1003,'2025-01-06','Brake Check',1200),
(1004,'2025-01-08','Full Service',2200),
(1005,'2025-01-10','Engine Service',3000),
(1006,'2025-01-12','Water Wash',600),
(1007,'2025-01-14','Oil Change',900),
(1008,'2025-01-16','Battery Check',1100),
(1009,'2025-01-18','Tyre Service',1400),
(1010,'2025-01-20','Full Service',2600),
(1011,'2025-01-22','General Service',1700),
(1012,'2025-01-24','Brake Check',1300),
(1013,'2025-01-26','Engine Service',2800),
(1014,'2025-01-28','Oil Change',850),
(1015,'2025-01-30','Water Wash',700),
(1016,'2025-02-01','Battery Check',1500),
(1017,'2025-02-03','Tyre Service',1800),
(1018,'2025-02-05','Full Service',3200),
(1019,'2025-02-07','General Service',1600),
(1020,'2025-02-09','Brake Check',1250),
(1021,'2025-02-11','Engine Service',2900),
(1022,'2025-02-13','Oil Change',950),
(1023,'2025-02-15','Water Wash',750),
(1024,'2025-02-17','Battery Check',1350),
(1025,'2025-02-19','Tyre Service',1750),
(1026,'2025-02-21','Full Service',3100),
(1027,'2025-02-23','General Service',1650),
(1028,'2025-02-25','Brake Check',1400),
(1029,'2025-02-27','Engine Service',3050),
(1030,'2025-03-01','Oil Change',1000),
(1031,'2025-03-03','Water Wash',800),
(1032,'2025-03-05','Battery Check',1500),
(1033,'2025-03-07','Tyre Service',1900),
(1034,'2025-03-09','Full Service',3300),
(1035,'2025-03-11','General Service',1750),
(1036,'2025-03-13','Brake Check',1450),
(1037,'2025-03-15','Engine Service',2950),
(1038,'2025-03-17','Oil Change',900),
(1039,'2025-03-19','Water Wash',700),
(1040,'2025-03-21','Battery Check',1600),
(1041,'2025-03-23','Tyre Service',2000),
(1042,'2025-03-25','Full Service',3400),
(1043,'2025-03-27','General Service',1800),
(1044,'2025-03-29','Brake Check',1500),
(1045,'2025-03-31','Engine Service',3100),
(1046,'2025-04-02','Oil Change',950),
(1047,'2025-04-04','Water Wash',750),
(1048,'2025-04-06','Battery Check',1550),
(1049,'2025-04-08','Tyre Service',2100),
(1050,'2025-04-10','Full Service',3600);

-- table 10 accident

create table accident (
    accident_id int primary key auto_increment,
    vehicle_id int,
    accident_date date,
    location varchar(100),
    damage_cost decimal(10,2),
    constraint vehicle_fk foreign key (vehicle_id) references service(service_id));

insert into accident(accident_id, accident_date, location, damage_cost)
values
(1001,'2025-01-02','Chennai',12500.50),
(1002,'2025-01-04','Mumbai',9800.00),
(1003,'2025-01-06','Delhi',15750.75),
(1004,'2025-01-08','Bangalore',8450.25),
(1005,'2025-01-10','Hyderabad',11200.00),
(1006,'2025-01-12','Pune',7600.90),
(1007,'2025-01-14','Kolkata',13400.40),
(1008,'2025-01-16','Ahmedabad',9200.00),
(1009,'2025-01-18','Jaipur',14350.60),
(1010,'2025-01-20','Lucknow',8800.30),
(1011,'2025-01-22','Chennai',15600.00),
(1012,'2025-01-24','Mumbai',9700.45),
(1013,'2025-01-26','Delhi',10100.00),
(1014,'2025-01-28','Bangalore',12200.75),
(1015,'2025-01-30','Hyderabad',14000.00),
(1016,'2025-02-01','Pune',8300.20),
(1017,'2025-02-03','Kolkata',11900.00),
(1018,'2025-02-05','Ahmedabad',9200.90),
(1019,'2025-02-07','Jaipur',11050.00),
(1020,'2025-02-09','Lucknow',7600.10),
(1021,'2025-02-11','Chennai',13450.00),
(1022,'2025-02-13','Mumbai',8900.00),
(1023,'2025-02-15','Delhi',14500.25),
(1024,'2025-02-17','Bangalore',9700.00),
(1025,'2025-02-19','Hyderabad',12800.60),
(1026,'2025-02-21','Pune',8400.00),
(1027,'2025-02-23','Kolkata',13700.30),
(1028,'2025-02-25','Ahmedabad',9200.00),
(1029,'2025-02-27','Jaipur',11100.90),
(1030,'2025-03-01','Lucknow',7800.00),
(1031,'2025-03-03','Chennai',13600.75),
(1032,'2025-03-05','Mumbai',8900.50),
(1033,'2025-03-07','Delhi',15200.00),
(1034,'2025-03-09','Bangalore',9100.00),
(1035,'2025-03-11','Hyderabad',12100.80),
(1036,'2025-03-13','Pune',8400.00),
(1037,'2025-03-15','Kolkata',13300.60),
(1038,'2025-03-17','Ahmedabad',9700.00),
(1039,'2025-03-19','Jaipur',11500.25),
(1040,'2025-03-21','Lucknow',7900.00),
(1041,'2025-03-23','Chennai',14000.00),
(1042,'2025-03-25','Mumbai',9200.30),
(1043,'2025-03-27','Delhi',15000.00),
(1044,'2025-03-29','Bangalore',9800.00),
(1045,'2025-03-31','Hyderabad',12600.40),
(1046,'2025-04-02','Pune',8700.00),
(1047,'2025-04-04','Kolkata',13500.75),
(1048,'2025-04-06','Ahmedabad',9400.00),
(1049,'2025-04-08','Jaipur',11800.00),
(1050,'2025-04-10','Lucknow',8200.00);

select*from accident;
select*from service;
select*from relations;
select * from agents;
select*from claims;
select*from payments;
select *from insurance;
select * from policy;
select*from vehicles;
select * from customers;


/*1. Customer & Payment Aggregation
List all customers along with:
•	Total payments made
•	Average payment
•	Maximum and minimum payment
Only include customers who have made more than 2 payments. Order by total payments descending.*/
select customer_name as name, sum(premium_amount) as total_payment_made,avg(premium_amount) as average_payment,max(premium_amount)as maximum_payment, min(premium_amount)as minimum_payment from policy inner join customers
on policy.duration=customers.s_no
group by customers.customer_name
having count(policy.duration)>2
order by total_payment_made;

/* 2. Vehicles & Insurance Status
Show each vehicle’s name, customer name, policy name, and insurance status.
Include only vehicles with active insurance.
Sort by customer name alphabetically.*/
select vehicle_name, customer_name,policy_name,ins_status as insurance_status from customers inner join vehicles
on customers.s_no = vehicles.s_id
inner join policy on customers.s_no = policy.s_no
inner join insurance on customers.s_no = insurance.i_id
where ins_status = 'active'
order by customer_name asc;
/* Find the total number of claims, total claim amount, and average claim amount for each claim status (approved, pending, rejected).
Include only statuses with more than 5 claims.
Order by total claim amount descending.*/
select count(c_id) as total_claims,sum(claim_amount) as total_claim_amount, avg(claim_amount) as average_claim_amount, claim_status from claims
group by claim_status
order by total_claim_amount desc;
/* 4. Service & Accident Join
Get a list of all vehicles that had both a service and an accident.
Show vehicle name, service type, service date, accident date, and damage cost.
Order by accident date descending.*/
select vehicle_name,service_type,service_date,accident_date,damage_cost from vehicles 
inner join service on vehicles.customer_id = service.service_id
inner join accident on vehicles.customer_id=accident.accident_id 
where month(service_date)>2
order by accident_date desc;
/* 5. Policy-Based Vehicle Counts
List each policy name along with:
Number of vehicles using that policy
Total premium collected (sum of premium_amount)
Average premium per vehicle
Include only policies with more than 2 vehicles insured */
select policy_name,vehicle_name as vehicles_using_that_policy,sum(premium_amount) as Total_premium_collected,avg(premium_amount) as Average_premium_per_vehicle from policy
inner join vehicles on policy.s_no = vehicles.s_id
where policy.duration > 2
group by policy.policy_name,policy.s_no;


/*6. Agent-Customer Relationships
Find each agent’s name, number of male and female customers assigned to them.
Show agent_id, agent_name, male_count, female_count.
Sort by male_count descending.*/
select agents.agent_name,agents.a_id as agent_id from agents
where agent_name in (select count(gender) as total_customers,gender from relations
group by gender);

-- stored procedure
-- stored procedure with parameter
delimiter //

create procedure get_claims(in amt int)
begin
select claim_date,claim_amount,claim_status
from claims
where claim_amount > amt;
end //

delimiter ;
-- trigger – before insert
delimiter //

create trigger before_payment_insert
before insert on payments
for each row
begin
if new.paid_amount < 0 then
set new.paid_amount = 0;
end if;
end //

delimiter ;

-- window functions (rank + dense_rank + row_number)
select claim_amount,
row_number() over(order by claim_amount desc) as rn,
rank() over(order by claim_amount desc) as rnk,
dense_rank() over(order by claim_amount desc) as drnk
from claims;

-- lead & lag (performance analysis)
select paid_date,
paid_amount,
lag(paid_amount) over(order by paid_date) as previous_payment,
lead(paid_amount) over(order by paid_date) as next_payment
from payments;

select c.customer_name,sum(p.paid_amount) as total_paid
from customers c
inner join payments p on c.s_no=p.customer_id
group by c.customer_name
having sum(p.paid_amount)>5000
order by total_paid desc;
