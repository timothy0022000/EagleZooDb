/*Queries*/


UPDATE		Animal
SET		ListPrice   = 165
WHERE		name        = "Rose"

DELETE		
FROM		Customer
WHERE		Lname = 'Cummings'
	AND
			Fname = 'Brent'
/*BY ID*/


SELECT LastName, FirstName, Phone
INTO Merchandise
FROM dbo.Customers
WHERE Phone LIKE '492%'

INSERT INTO Merchandise 
VALUES (45, "gallon aquarium", 20, 130.00, "");
SELECT COUNT(ListPrice * 20)


SELECT		c.customerID, COUNT(sales) AS NumSales, s.SalesTax
FROM		Customer c, Sale s
WHERE		c.customerID = s.customerID
GROUPBY		customerID;


SELECT 		AVG(SalePrice)
FROM		AnimalSale


SELECT		a.Category , COUNT(saleID) AS NumSold
FROM		Animal a, AnimalSale as
GROUPBY		Category


SELECT		s.saleID , c.customer_name, s.saleDate,employee_name,
		a.category, b.breed

FROM		Customer c, Sale s, AnimalSale as, Animal a,
		Employee e, Breed b

WHERE		s.saleID	=	as.saleID
AND		c.customerID	=	s.customerID
AND		as.animalID	=	a.animalID


SELECT		COUNT(SupplierID)
FROM		MerchandiseOrder
WHERE		SupplierID	LIKE %Hughes%


SELECT		employeeID, COUNT(orderID)
FROM		Employee e, AnimalOrder ao
WHERE		e.employeeID	=	oa.employeeID
GROUPBY 	employeeID


SELECT					c.CustomerID , c.LastName 

FROM					Customer c, AnimalOrder ao, MerchandiseOrder mo, 
						City ci, Employee e,Supplier s
						
WHERE					c.CityID  =  ci.CityID 
AND						ci.CityID  = s.CityID 
AND						s.SupplierID = ao.SupplierID 

/*Login and grants*/
--joe login and password
CREATE LOGIN Joe
WITH PASSWORD  = 'bcd123456';
CREATE USER Joe
FOR LOGIN Joe;

--john login and password
CREATE LOGIN John
WITH PASSWORD  = 'cde123456';
CREATE USER John
FOR LOGIN John;

--mary login and password
CREATE LOGIN Mary
WITH PASSWORD  = 'def123456';
CREATE USER Mary
FOR LOGIN Mary;

--paul login and password
CREATE LOGIN Paul
WITH PASSWORD  = 'efg123456';
CREATE USER Paul
FOR LOGIN Paul;

--peter login and password
CREATE LOGIN Peter
WITH PASSWORD  = 'fgh123456';
CREATE USER Peter
FOR LOGIN Peter;


/*GRANTS*/
--grant managers project
GRANT	INSERT,
		SELECT,
		UPDATE ON project
		TO managers;


--grant managers department and joe
GRANT SELECT ON department
TO managers , joe;

--grant managers work_on
GRANT	INSERT,
		SELECT,
		UPDATE ON works_on
		TO managers;

--grant joe works_on
GRANT SELECT ON works_on
TO joe;

--grant peter view research
GRANT	INSERT,
		SELECT,
		UPDATE ON v_emp_research
		TO peter;

--grant  paul view research
GRANT	INSERT,
		SELECT,
		UPDATE ON v_emp_accounting
		TO paul;

--grant  mary and joe view mkt.
GRANT	INSERT,
		SELECT,
		UPDATE ON v_emp_marketing
		TO mary , joe;


--grant  joe view project
GRANT	INSERT,
		SELECT, 
		UPDATE ON v_project
		TO joe;


