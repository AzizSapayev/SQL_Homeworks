Create database lesson1
--1) Define the following terms: data, database, relational database, and table.
--Data bu raqamlar, matn, tasvirlar, ovozlar yoki boshqa shakldagi axborot
--Databse- tartiblangan va tuzilgan holda saqlanadigan ma’lumotlar to‘plam
--relational Database ma’lumotlar jadval ko‘rinishida saqlanadigan va jadvallar o‘zaro aloqalar orqali bog‘langan bo‘ladigan ma’lumotlar
-- Table- ma’lumotlar satr (qator) va ustun (kolonka) ko‘rinishida saqlanadigan tuzilma
-- 2) List five key features of SQL Server.
--Ma’lumotlarni boshqarish va saqlash
--Aloqador ma’lumotlar bazasi (Relational Database) modeli
--SQL tilini qo‘llab-quvvatlash
--Xavfsizlik (Security) tizimi
--Zaxira olish va tiklash (Backup & Restore)
-- 3) What are the different authentication modes available when connecting to SQL Server?
-- Windows Authentication (Windows autentifikatsiyasi)--
--SQL Server Authentication (SQL Server autentifikatsiyasi)
-- 4) Create a new database in SSMS named SchoolDB.
-- 5) Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
Create Database SchoolDb
use SchoolDB
Go
Create table Students (
StudentID int PRIMARY KEY,
Name varchar(50),
Age int)
 Select * from Students
 -- 6) Describe the differences between SQL Server, SSMS, and SQL.
 -- SQL server -Microsoft tomonidan ishlab chiqilgan ma’lumotlar bazasi boshqaruv tizimi
 -- SSMS (SQL Server Management Studio)-SQL Server bilan ishlash uchun yaratilgan grafik boshqaruv dasturi.
--U orqali foydalanuvchilar SQL Server bazalarini ko‘rish, yaratish, tahrirlash va boshqarishadi.
--SQL-Ma’lumotlar bazasi bilan ishlash uchun buyruqlar tili.
--8)Write a query to insert three records into the Students table.
Insert into Students(StudentID,Name,Age) Values
(1,'Azizbek',22),
(2,'Rustam',25),
(3,'Madina',24)
 --9 )Restore AdventureWorks2022
Use AdventureWorks2022
Go
