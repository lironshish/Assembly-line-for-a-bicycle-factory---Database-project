/*
Liron Shish 315238915
Ohad Saada 204624209
*/

USE assemblyLine;

/*1) Show all bikes whose model year is 2019*/
select b.bicycleID, b.mID, b.quantityAvailableInStock
from BicycleInventory b 
join BicycleModel bm 
on(b.mID = bm.modelID)
where bm.modelYear = 2019;

/*2) show all suppliers who supply wheels*/
select s.supplierName, s.supplierID
from supplier s
join part p
on(s.pID = p.partID)
where partName = 'wheel';

/*3) How many orders are there?*/
select count(packege.orderNumber) as 'packegesCount'
from packege;

/*4) What is the average amount per order?*/
select avg(price)
from BicycleModel bm
join BicycleInventory b 
on(b.mID = bm.modelID)
join packege p 
on(p.bID = b.bicycleID);

/*5) Who is the store that bought the order with the highest amount?*/
select s.storeID, s.shopName
from store s
join packege p 
on(p.sID = s.storeID)
join BicycleInventory b 
on(b.bicycleID = p.bID)
join BicycleModel bm
on(b.mID = bm.modelID)
order by price desc
limit 1;

/*6)What is the cheapest part?*/
select p.partID, p.partName,p.price
from part p
order by price
limit 1;

/*7) Show all stores in Tel Aviv*/
select * from store 
where city = 'Tel Aviv';

/*8)Select all makers who produce bicycle number 1003 */
select e.employeeName,m.eID
from maker m
join employee e
on(e.employeeID = m.eID)
where bID = 1003;

/*9) Receive information about the courier by order number.*/
select dp.phoneNumber, e.employeeName, e.employeeID
from deliveryPerson dp
join packege p 
on(dp.orderNumber = p.orderNumber)
join employee e
on(e.employeeID = dp.eID);

/*10) Get information on all the bikes in stock.*/
select * from BicycleInventory
having quantityAvailableInStock > 0;

/*11) View the phone number of the store whose order number is 123456777*/
select s.phoneNumber
from store s 
join packege p 
on(p.sID = s.storeID)
and (p.orderNumber = 123456777);



