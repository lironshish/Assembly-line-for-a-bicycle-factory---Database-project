/*
Liron Shish 315238915
Ohad Saada 204624209
*/

USE assemblyLine;

/* Insert values to Tables */
insert into BicycleModel values
(10001,1500,'BBB','RT8',2019),
(10002,600,'BBB','HE66',2014),
(10003,2000,'CCC','RC5',2021),
(10004,1400,'DDD','K2K',2019),
(10005,1250,'DDD','D4F',2018),
(10006,550,'DDD','FFT6',2013),
(10007,950,'EEE','BJ8',2016);

insert into BicycleInventory values
(1001,10001,22),
(1002,10002,15),
(1003,10003,3),
(1004,10004,36),
(1005,10005,9),
(1006,10006,0),
(1007,10007,100);

insert into part values
(101,100,'wheel',1001),
(105,80,'bell',1001),
(106,90,'brake',1001),
(107,200,'seat',1001),
(102,75,'bell',1002),
(103,150,'brake',1003),
(104,500,'seat',1004);

insert into supplier value
(100000001,'gogo',101),
(100000002,'momo',102),
(100000003,'lolo',104),
(100000004,'popo',101),
(100000005,'fofo',101),
(100000006,'yoyo',103),
(100000007,'vovo',102);

insert into employee values
(111111111,2500,'nono'),
(222222222,5000,'roro'),
(333333333,4000,'wowo'),
(444444444,1500,'soso'),
(555555555,3500,'zozo');


insert into store values
(111111,'like bike','0517777777','Tel aviv','Dizingof',4),
(222222,'love bike','0518888888','Holon','Herzel',4),
(333333,'all bicycle','0519999999','Ramat gan','Smilanski',4),
(444444,'bicycle b','0513333333','Netanya','Alenbi',4),
(555555,'bicycle baba','0514444444','Dimona','Rotchild',4);

insert into packege values
(123456789,1001,111111),
(123456666,1002,222222),
(123456777,1003,333333),
(123456788,1004,444444);

insert into deliveryPerson values
(444444444,123456789,'0521111111'),
(555555555,123456666,'0522222222');

insert into maker values
(111111111,1001),
(222222222,1002),
(333333333,1003);
