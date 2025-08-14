--1 task
Create table Employees
(
EmpID int,
Name varchar(50),
Salary decimal(10,2)
)
--2 task Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).
Insert into Employees values(1,'Azizbek',234.45) 
Insert into Employees (EmpID,Name,Salary) Values
(2,'Rustam',345.56),
(3,'Madina',456.67)
--3) Update the Salary of an employee to 7000 where EmpID = 1.
Update Employees set Salary=7000 where EmpID=1
--4) Delete a record from the Employees table where EmpID = 2.
Delete from Employees where EmpID=2
-- delete Jadvaldagi ma’lumotlarni shart asosida yoki hammasini o‘chirish
-- truncate Jadvaldagi barcha ma’lumotlarni bir yo‘la o‘chirish
-- Drop Jadvalni butunlay o‘chirish (tuzilishi bilan birga)
-- Modify the Name column in the Employees table to VARCHAR(100).
Alter table Employees
Alter column Name varchar(100)
--Add a new column Department (VARCHAR(50)) to the Employees table.
Alter table Employees
Add  Department varchar(100)
--Change the data type of the Salary column to FLOAT.
Alter table Employees
Alter column Salary float
--9) Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).
Create table Departments
(
DepartmentID int PRIMARY KEY,
DepartmentName varchar(50)
)
Truncate  table Employees

--11)
Insert into Departments(DepartmentID,DepartmentName) Values
(1,'Soliq'),
(2,'MIB'),
(3,'Hokimyat'),
(4,'Bank'),
(5,'Sud')
--12)Update the Department of all employees where Salary > 5000 to 'Management'.
INSERT INTO Employees (EmpID, Name, Salary,Department)
VALUES 
(1, 'Azizbek', 6000, 'IT'),
(2, 'Javlon', 4500, 'Sales'),
(3, 'Dilshod', 8000, 'Finance');

UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;

Truncate table Employees
Alter table Employees
Drop column Department
--15)
sp_rename 'Employees','StaffMembers';
--16)
Drop table Departments
-- 17)Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)
Create table Products
(
ProductID int Primary Key,
ProductName varchar(50),
Category varchar(50),
Price Decimal(10,2),
DeliverDay int
)
Alter table Products
Add Constraint chk_price_positive
Check(Price>0)

Alter table Products
Add StockQuantity int Default 50;

Update Products
Set Category='ProductCategory'
sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';
Select * from Products
--Insert into Products(ProductID,ProductID,ProductCategory,Price,DeliverDay,StockQuantity) Values
--(1,'Shlapa','Bosh kiyim'
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, DeliverDay, StockQuantity)
VALUES (1, 'Laptop', 'Electronics', 1200.00, 5, 50);

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, DeliverDay, StockQuantity)
VALUES (2, 'Smartphone', 'Electronics', 800.00, 3, 50);

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, DeliverDay, StockQuantity)
VALUES (3, 'Office Chair', 'Furniture', 150.00, 7, 50);

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, DeliverDay, StockQuantity)
VALUES (4, 'Washing Machine', 'Home Appliances', 600.00, 10, 50);

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, DeliverDay, StockQuantity)
VALUES (5, 'Microwave Oven', 'Home Appliances', 200.00, 4, 50);

Select* into Products_Backup from Products
sp_rename 'Products','Inventory';

Alter table Inventory
Alter column Price float

-- 1. Yangi jadval yaratish
CREATE TABLE Inventory_New
(
    ProductCode INT IDENTITY(1000,5) PRIMARY KEY,
    ProductName VARCHAR(50),
    Category    VARCHAR(50),
    Price       DECIMAL(10,2),
    StockQuantity INT
);

-- 2. Eski jadvaldan ma’lumotlarni ko‘chirish
INSERT INTO Inventory_New (ProductName, Category, Price, StockQuantity)
SELECT ProductName, ProductCategory, Price, StockQuantity
FROM Inventory;

-- 3. Eski jadvalni o‘chirib, yangi nom berish
DROP TABLE Inventory;
EXEC sp_rename 'Inventory_New', 'Inventory';
