/*
Liron Shish 315238915
Ohad Saada 204624209
*/

use assemblyLine;

/*A trigger that checks that are not update a negative quantity of inventory of bikes*/

DELIMITER $$
 
CREATE TRIGGER before_bicycleinventory_update
BEFORE UPDATE
ON bicycleinventory FOR EACH ROW
BEGIN
    DECLARE errorMessage VARCHAR(255);
    SET errorMessage = CONCAT('The new quantity ',
                        NEW.quantityAvailableInStock,
                        ' can not be negative');
                        
    IF new.quantityAvailableInStock < 0 THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = errorMessage;
    END IF;
END $$
 
DELIMITER ;

/* Query 12).*/
UPDATE bicycleinventory 
SET quantityAvailableInStock = 7
WHERE bicycleID = 1006;

select * from bicycleinventory;

/*Example that the trigger does not allow to update the quantity available in stock to a negative number*/
/*
UPDATE bicycleinventory 
SET quantityAvailableInStock = -5
WHERE bicycleID = 1005;
*/
/*Error Code: 1644.  The new quantity -5 can not be negative*/

/*A trigger that checks that are not update a negative salary to employee*/

DELIMITER $$
 
CREATE TRIGGER before_employee_update
BEFORE UPDATE
ON employee FOR EACH ROW
BEGIN
    DECLARE errorMessage VARCHAR(255);
    SET errorMessage = CONCAT('The new salary ',
                        NEW.salary,
                        ' can not be negative');
                        
    IF new.salary < 0 THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = errorMessage;
    END IF;
END $$
 
DELIMITER ;

/* Query 13).*/
UPDATE employee 
SET salary = 5000
WHERE employeeID = 444444444;

select * from employee;

/*Example that the trigger does not allow to update the salary to a negative number*/
/*
UPDATE employee 
SET salary = -4000
WHERE employeeID = 444444444;
*/
/*Error Code: 1644.  The new salary -4000 can not be negative*/

/*A trigger that checks that are not update a negative price to bicycle*/

DELIMITER $$
 
CREATE TRIGGER before_bicyclemodel_update
BEFORE UPDATE
ON bicyclemodel FOR EACH ROW
BEGIN
    DECLARE errorMessage VARCHAR(255);
    SET errorMessage = CONCAT('The new price ',
                        NEW.price,
                        ' can not be negative');
                        
    IF new.price < 0 THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = errorMessage;
    END IF;
END $$
 
DELIMITER ;

/* Query 14).*/
UPDATE bicyclemodel 
SET price = 400
WHERE modelID = 10002;

select * from bicyclemodel;

/*Example that the trigger does not allow to update the salary to a negative number*/
/*
UPDATE bicyclemodel 
SET price = -400
WHERE modelID = 10002;
*/
/*Error Code: 1644.  The new price -400 can not be negative*/


