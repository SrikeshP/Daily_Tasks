CREATE DATABASE employees;

use employees;

CREATE TABLE Employee(
EmployeeID INT primary key,
FirstName VARCHAR(50) Not Null,
LastName VARCHAR(50) Not Null,
Email VARCHAR(100) Not Null unique,
Salary INT Not Null,
DepartmentID INT
);

drop table Employee;

CREATE TABLE Department(
DepartmentID INT Primary Key,
DepartmentName VARCHAR(50) Not Null
);

CREATE TABLE Project(
ProjectID INT Primary Key,
ProjectName VARCHAR(100) Not Null,
DepartmentID INT, Foreign key(DepartmentID) references Department(DepartmentID) 
);

ALTER TABLE Employee 
ADD CONSTRAINT fk_employee Foreign key (DepartmentID) references Department (DepartmentID);

INSERT INTO Department values(1,"Marketing");
INSERT INTO Department values(2,"Sales");
INSERT INTO Department values(3,"IT");
INSERT INTO Department values(4,"Finance");
INSERT INTO Department values(5,"HR");

INSERT INTO Employee values(1,"John","Doe","john.doe@company.com",60000,1);
INSERT INTO Employee values(2,"Janw","Smith","jane.smith@company.com",75000,2);
INSERT INTO Employee values(3,"Micheal","Johnson","micheal.johnson@company.com",85000,1);
INSERT INTO Employee values(4,"Emily","Williams","emily.willams@company.com",72000,3);
INSERT INTO Employee values(5,"David","Brown","David.brown@company.com",65000,2);
INSERT INTO Employee values(6,"Sarah","Davis","sarah.davis@company.com",90000,3);

INSERT INTO Project values(1,"Project A",1);
INSERT INTO Project values(2,"Project B",2);
INSERT INTO Project values(3,"Project C",3);
INSERT INTO Project values(4,"Project D",4);
INSERT INTO Project values(5,"Project E",5);

ALTER TABLE Employee ADD CONSTRAINT ck_salary CHECK(salary>0);

ALTER TABLE Employee 
ADD CONSTRAINT fk_employee Foreign key (DepartmentID) references Department (DepartmentID);

INSERT INTO Employee values(7,"Asta","Yuno","asta.yuno@company.com",91000,10);

INSERT INTO Employee values(8,"Sasuke","Uchiha","jane.smith@comapny.com",72000,2);

DELETE FROM Department WHERE DepartmentID ="1";

UPDATE  Employee
SET DepartmentID=10
WHERE DepartmentID=1;