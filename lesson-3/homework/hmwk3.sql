Use lesson1
Go

Create table Products(
ProductID int PRIMARY KEY,
ProductName varchar(50),
Price decimal(10,2)
) 
INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1, 'Laptop', 1200.50),
(2, 'Smartphone', 750.00),
(3, 'Headphones', 85.99);
Alter table Products
Add Constraint UQ_ProductName UNIQUE (ProductName);
--comment
Alter table Products
Add  CategoryID int;

Create table Categories
( 
CategoryID int PRIMARY KEY,
CategoryName varchar UNIQUE
)

Alter table Products
add constraint fk_Products_Categories
Foreign key(CategoryID) references Categories(CategoryID)

Alter table Products
Add Constraint chk_price_positive
Check(Price>0)

Alter table Products
Add  Stock int ;

SELECT 
    ProductID,
    ProductName,
    ISNULL(Price, 0) AS Price
FROM Products;

Create table Customers
(CustomerID int primary key,
FullName nvarchar(100) not null,
Age int Check(Age>=18));

CREATE TABLE Orders (
    OrderID INT IDENTITY(100, 10) PRIMARY KEY,
    ProductName NVARCHAR(100),
    Quantity INT
);

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    PRIMARY KEY (OrderID, ProductID)
);

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Position VARCHAR(50)
);

DELETE FROM Customers WHERE CustomerID = 1;
UPDATE Customers SET CustomerID = 5 WHERE CustomerID = 1;



Bulk Insert BMW_Car_Sales_Classification
from 'C:\Users\user\Downloads\BMW_Car_Sales_Classification.csv'
with
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n', 
 FIRSTROW = 2
 );

 CREATE TABLE BMW_Car_Sales_Classification (
    Model NVARCHAR(50),
    Year INT,
    Region NVARCHAR(50),
    Color NVARCHAR(30),
    Fuel_Type NVARCHAR(20),
    Transmission NVARCHAR(20),
    Engine_Size_L FLOAT,
    Mileage_KM INT,
    Price_USD INT,
    Sales_Volume INT,
    Sales_Classification NVARCHAR(20)
);

BULK INSERT BMW_Car_Sales_Classification
FROM 'C:\Users\user\Downloads\BMW_Car_Sales_Classification.csv'
WITH
(
    FIELDTERMINATOR = ',',  -- Ustun ajratgich
    ROWTERMINATOR = '\n',   -- Qator ajratgich
    FIRSTROW = 2,           -- Sarlavha qatorini o‘tkazib yuborish
    TABLOCK
);

CREATE TABLE BMW_Car_Sales_Classificationn (
    Model NVARCHAR(100),
    Year INT,
    Region NVARCHAR(100),
    Color NVARCHAR(50),
    Fuel_Type NVARCHAR(50),
    Transmission NVARCHAR(50),
    Engine_Size_L FLOAT,
    Mileage_KM INT,
    Price_USD INT,
    Sales_Volume INT,
    Sales_Classification NVARCHAR(255)  -- 20 dan 255 ga oshirdik
);

BULK INSERT BMW_Car_Sales_Classificationn
FROM 'C:\Users\user\Downloads\BMW_Car_Sales_Classification.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',   -- Yoki ';'
    ROWTERMINATOR = '\r\n',  -- Windows format
    TABLOCK
);

