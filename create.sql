/*
Liron Shish 315238915
Ohad Saada 204624209
*/

/* Create Schema */
CREATE SCHEMA assemblyLine;

USE assemblyLine;

/* Create Tables */
create table BicycleModel(
modelID int not null,
price int not null,
brandName varchar(45) not null,
modelName varchar(45) not null,
modelYear int  not null,
primary key(modelID)
);

create table BicycleInventory(
bicycleID int not null,
mID int not null,
quantityAvailableInStock int not null,
primary key(bicycleID),
foreign key(mID) references BicycleModel(modelID)
);

create table part(
partID int not null,
price int not null,
partName varchar(45) not null,
bID int not null,
primary key(partID),
foreign key(bID) references BicycleInventory(bicycleID)
);

create table supplier(
supplierID int not null,
supplierName varchar(45) not null,
pID int,
foreign key(pID) references part(partID),
primary key(supplierID)
);

create table employee(
employeeID int not null,
salary int not null,
employeeName varchar(45) not null,
primary key(employeeID)
);

create table store(
storeID int not null,
shopName varchar(45) not null,
phoneNumber varchar(45) not null,
city varchar(45) not null,
street varchar(45) not null,
streetNumber int not null,
primary key(storeID)
);

create table packege(
orderNumber int not null,
bID int not null,
sID int not null,
primary key(orderNumber),
foreign key(bID) references BicycleInventory(bicycleID),
foreign key(sID) references store(storeID)
);

create table deliveryPerson(
eID int not null,
orderNumber int not null,
phoneNumber varchar(45) not null,
foreign key(eID) references employee(employeeID),
foreign key(orderNumber) references packege(orderNumber)
);

create table maker(
eID int not null,
bID int not null,
foreign key(bID) references BicycleInventory(bicycleID),
foreign key(eID) references employee(employeeID)
);
