USE tutedude;

DROP TABLE Employees;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Email VARCHAR(50)
);

 INSERT INTO Employees (EmpID, Name, Department, Email) VALUES
   (1, 'Alice Johnson',  'HR',      'alice.johnson@example.com'),
   (2, 'Bob Smith',  	'IT',      'bob.smith@example.com'),
   (3, 'Charlie Brown',  'Finance','charlie.brown@example.com'),
   (4, 'Diana Prince',   'HR',      'diana.prince@example.com'),
   (5, 'Eve Adams',  	'IT',      'eve.adams@example.org');

SELECT 
    *
FROM
    Employees
WHERE
    Email LIKE '%@example.com';
    
SELECT 
    *
FROM
    Employees
WHERE
    Name LIKE 'A%';
    
SELECT 
    *
FROM
    Employees
WHERE
    Name LIKE '%son';
    
SELECT 
    *
FROM
    Employees
WHERE
    Name LIKE '%son';

SELECT 
    *
FROM
    Employees
WHERE
    SUBSTRING(Name,2,1) = 'v';

SELECT 
    *
FROM
    Employees
WHERE
    Department LIKE '%IT%';


SELECT 
    *
FROM
    Employees
WHERE
    LOWER(Department) LIKE '%hr%';
