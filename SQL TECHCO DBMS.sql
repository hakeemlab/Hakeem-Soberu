/*Department table*/
CREATE TABLE Department (
DepartmentID INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Location VARCHAR(200) NOT NULL
);
INSERT INTO Department (DepartmentID, NAME, LOCATION)
VALUES
  (301, 'ACCOUNTING', 'Texas'),
  (302, 'Marketing', 'California'),
  (303, 'Engineering', 'Indiana'),
  (304, 'Administration', 'Texas'),
  (305, 'Human Resources', 'California'),
  (306, 'Management', 'Texas'),
  (307, 'IT', 'Indiana');


/*Employee table*/
CREATE TABLE Employee (
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Email VARCHAR(100) NOT NULL,
PhoneNumber VARCHAR(20) NOT NULL,
Salary DECIMAL(10, 2) NOT NULL,
DepartmentID INT,
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, PhoneNumber, Salary, DepartmentID)
VALUES('401', 'Morales', 'Bonita', 'mbonita@techo.com', '2247911928', '70000.00', '301'),
      ('402', 'Nelson',  'Becca', 'nbecca@techo.com', '773999814', '75000.01', '302'),
	  ('403', 'Smith', 'Jennifer', 'sjennifer1@techo.com', '312156441', '80000.00', '303'),
	  ('404', 'Andrew', 'Pirlo', 'apirlo@techo.com', '312856145', '83000.00', '304'),
	  ('405', 'Kaka', 'Pato', 'kpato@techo.com', '0802314935', '60000.00', '305'),
	  ('406', 'Harry', 'Kane', 'hkane@techo.com', '2249801020', '70000.00', '306'),
	  ('407', 'Sadio', 'Mane', 'smane@techo.com', '7731290875', '85000.200', '307');



/*Customer table*/
CREATE TABLE Customer (
CustomerID INT PRIMARY KEY,
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Email VARCHAR(100) NOT NULL,
PhoneNumber VARCHAR(20) NOT NULL,
FaxNumber VARCHAR(20) NOT NULL
);

INSERT INTO Customer (CustomerId, FirstName, LastName, Email, PhoneNumber, FaxNumber)
VALUES('2001','DAUM', 'MICHELL', 'mic@hotmail.com', '773-713-4161', '1-907-000-2130'),
      ('2002', 'GIANA', 'TAMMY', 'tammygi@erlu.com', '773-090-8777', '1-907-713-5023'),
	  ('2003', 'GIRARD', 'CINDY', 'cindy85@slack.com', '224-318-1111', '1-907-630-3780'),
	  ('2004', 'SMITH', 'LEILA', 'leila95@outlook.com', '224-811-4761', '1-907-100-2611'),
	  ('2005', 'MCKENZIE', 'WILLIAM', 'mcwill98@slack.com', '224-000-1712','1-907-378-9854'),
	  ('2006', 'MCGOVERN', 'REESE', 'mcreese04@miniman.com', '773-456-1234', '1-907-111-3100'),
	  ('2007', 'LEE', 'JASMINE', 'lee@laware.com', '773-612-4870', '1-907-300-0018');



/*Supplier table*/
CREATE TABLE Supplier (
SupplierID INT PRIMARY KEY,
CompanyName VARCHAR(200) NOT NULL,
ContactName VARCHAR(100) NOT NULL,
Email VARCHAR(100) NOT NULL,
PhoneNumber VARCHAR(20) NOT NULL,
FaxNumber VARCHAR(20) NOT NULL
);

INSERT INTO Supplier (SupplierID, CompanyName, ContactName, Email, PhoneNumber, FaxNumber)
VALUES('201', 'Panasonic', 'THOMPSON', 'ryanpa@gmail.com', '312-777-999', '1-907-555-1616'),
      ('202', 'Ugocgo&CO', 'Riyad', 'ugori@gmail.com', '312-221-1731', '1-907-450-6060'),
	  ('203', 'Bash', 'Roberto',  'bash4@yahoo.com', '224-790-1671', '1-907-548-5832'),
	  ('204', 'Cannon', 'Carlos', 'cannon@gmail.com', '312-224-0389', '1-907-256-3311'),
	  ('205', 'Bob$&Co', 'Bob','bob32@yahoo.com', '773-844-9990', '1-907-266-2000'),
	  ('206', 'Sly&Co', 'Diaz', 'dsly@yahoo.com', '773-701-7134', '1-907-040-3081'),
	  ('207', 'DamDambiz', 'Carlo', 'damco@gmail.com', '224-362-6441', '1-907-535-2233');



/*Product Category table*/
CREATE TABLE ProductCategory (
CategoryID INT PRIMARY KEY,
Name VARCHAR(30) NOT NULL
);
INSERT INTO ProductCategory (CategoryID, Name)
VALUES('1001', 'Accesories'),
      ('1002', 'Grocery Store'),
	  ('1003', 'TireShop'),
	  ('1004', 'BabyProduct'),
	  ('1005', 'SportWears'),
	  ('1006', 'Electrical Appliances'),
	  ('1007', 'Phone&Tabs');



/*Product table*/
CREATE TABLE Product (
ProductID INT PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
Description TEXT,
Price DECIMAL(10, 2) NOT NULL,
StockQuantity INT NOT NULL,
CategoryID INT,
FOREIGN KEY (CategoryID) REFERENCES ProductCategory(CategoryID)
);

INSERT INTO Product (ProductID, Name, Description, Price, StockQuantity, CategoryID)
VALUES(501, 'Airpod', 'Wireless Speaker', 250.00, 25, 1001),
      (502, 'Soda', 'Drinks', 1.50, 100, 1002),
	  (503, 'Duralast', 'TruckTire', 150.99, 40, 1003),
	  (504, 'Babyoil', 'SkinCare', 10.85, 100, 1004),
	  (505, 'Jersey', 'TopWears', 30.45, 20, 1005),
	  (506, 'Television', 'FlatScreen TV', 600.99, 15, 1006),
	  (507, 'Iphone11', 'MakingCalls', 899.99, 8, 1007);


/*Sales Order table*/
CREATE TABLE SalesOrder (
OrderID INT PRIMARY KEY,
OrderDate DATE NOT NULL,
TotalAmount DECIMAL(10, 2) NOT NULL
);

INSERT INTO SalesOrder (OrderID, OrderDate, TotalAmount)
VALUES(001, '2021-01-15', '1750.00'),
      (002, '2021-01-17', '45.00'),
	  (003, '2021-02-05', '5284.65'),
	  (004, '2021-02-11', '542.5'),
	  (005, '2021-02-17', '304.5'),
	  (006, '2022-04-13', '3004.95'),
	  (007, '2022-08-23', '8999.9');



/*Order Line table*/
CREATE TABLE OrderLine (
OrderLineID INT PRIMARY KEY,
Quantity INT NOT NULL,
LineTotal DECIMAL(10, 2) NOT NULL,
OrderID INT,
ProductID INT,
FOREIGN KEY (OrderID) REFERENCES SalesOrder(OrderID),
FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
INSERT INTO OrderLine (OrderLineID, Quantity, LineTotal, OrderID, ProductID)
VALUES(800, 7, 1750.00, 001, 501),
      (801, 30, 45.00, 002, 502),
	  (802, 35, 5284.65, 003, 503),
	  (803, 10, 542.5, 004, 504),
	  (804, 10, 304.5, 005, 505),
	  (806, 5, 3004.95, 006, 506),
	  (807, 10, 8999.99, 007, 507);

/*Payment table*/
CREATE TABLE Payment (
PaymentID INT PRIMARY KEY,
PaymentDate DATE NOT NULL,
Amount DECIMAL(10, 2) NOT NULL,
CustomerID INT,
OrderID INT,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
FOREIGN KEY (OrderID) REFERENCES SalesOrder(OrderID)
);

INSERT INTO Payment (PaymentID, PaymentDate, Amount, CustomerID, OrderID)
VALUES(511, '2021-01-15', 1750.00, 2001, 001),
      (512, '2021-01-17', 45.00, 2002, 002),
	  (513, '2021-02-05', 5284.65, 2003, 003),
	  (514, '2021-02-11', 542.5, 2004, 004),
	  (515, '2021-02-17', 304.5, 2005, 005),
	  (516, '2022-04-13', 3004.95, 2006, 006),
	  (517, '2022-08-23', 8999.9, 2007, 007);
SELECT*
FROM Payment




/*List Employees and their department names*/ 
SELECT Employee.FirstName, Employee.LastName, Department.Name AS DepartmentName
FROM Employee
JOIN Department ON Employee.DepartmentID = Department.DepartmentID;

/* Calculate the total for each sales order*/
SELECT
    SalesOrder.OrderID,
    SUM(Payment.Amount) AS TotalPayment
FROM
    SalesOrder
LEFT JOIN
    Payment ON SalesOrder.OrderID = Payment.OrderID
GROUP BY
    SalesOrder.OrderID;

/*Find the customer who spend the less*/
SELECT Customer.FirstName, Customer.LastName, COALESCE(SUM(Payment.Amount), 0) AS TotalSpent
From Customer
LEFT Join Payment ON Customer.CustomerID = Payment.CustomerID
GROUP BY Customer.CustomerID, Customer.FirstName, Customer.LastName
ORDER BY TotalSpent;

/*Find the top 3 customers who spent the most*/
SELECT Customer.FirstName, Customer.LastName, SUM(Payment.Amount) AS TotalSpent
FROM Customer
JOIN Payment ON Customer.CustomerID = Payment.CustomerID
GROUP BY Customer.CustomerID, Customer.FirstName, Customer.LastName
ORDER BY TotalSpent DESC;

/*Calculate the total Amount for each customer*/
SELECT CustomerID, SUM(Amount) AS TotalPayment
FROM Payment
GROUP BY CustomerID;

/*find the Average Payment*/
SELECT AVG(Payment.Amount)AS AveragePaymentAmount
fROM Payment;

/*Find the product with the highest stock quantity*/
SELECT Name, StockQuantity
FROM Product 
ORDER BY StockQuantity DESC;

/*Identify products with low stock (quantity less than 50)*/
SELECT Product.Name AS ProductName, Product.StockQuantity
FROM Product
WHERE Product.StockQuantity < 30;



