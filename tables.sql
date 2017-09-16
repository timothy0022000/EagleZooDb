
/*EMPLOYEE TABLE*/
CREATE TABLE EMPLOYEE(
Employee_ID				INT					NOT NULL,
LastName				VARCHAR(50)				NULL,
FirstName				VARCHAR(50)				NULL,
Phone					CHAR(12)				NULL,
Address				VARCHAR(50)				NULL,
ZipCode				VARCHAR(50)				NULL,
CityID				INT					NULL,
TaxPayerID				CHAR(11)				NULL,
DateHired				DATETIME				NULL,
DateReleased			DATETIME				NULL,
ManagerID				INT					NULL,
EmployeeLevel			SMALLINT				NULL,
Title					VARCHAR(50)				NULL	
CONSTRAINT PK_Employee_ID	PRIMARY KEY(Employee_ID)
CONSTRAINT FK_Manager_ID	FOREIGN KEY(ManagerID)
REFERENCES EMPLOYEE (Employee_ID),
CONSTRAINT FK_City_ID		FOREIGN KEY(CityID)
REFERENCES City (CityID) 
);




/*FOOD TABLE*/
CREATE TABLE FOOD(
AnimalID				INT					NOT NULL,
FoodDescripition		VARCHAR(20)					NOT NULL,
CONSTRAINT PK_Animal_FoodDescripition_ID PRIMARY KEY (AnimalID,FoodDescripition),
CONSTRAINT FK_Animal_ID FOREIGN KEY (AnimalID)
REFERENCES Animal (AnimalID)
);





/*SUPPLIER TABLE*/
CREATE TABLE SUPPLIER(
SupplierID				INT					NOT NULL,
Name					VARCHAR(50)				NULL,
ContactName				VARCHAR(50)				NULL,
Phone					CHAR(10)				NULL,
Address				VARCHAR(50)				NULL,
ZipCode				VARCHAR(50)				NULL,
CityID				INT					NULL,
CONSTRAINT	PK_SupplierID	PRIMARY KEY (SupplierID),
CONSTRAINT	FK_CityID		FOREIGN KEY (CityID)
REFERENCES	City	(CityID)
);


