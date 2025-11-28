USE tutedude;

DROP TABLE Employees;


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DepartmentID INT
);
 
  INSERT INTO Employees (EmpID, EmpName, DepartmentID) VALUES
   (1, 'Alice',   101),
   (2, 'Bob', 	102),
   (3, 'Charlie', 103),
   (4, 'Diana',   NULL),
   (5, 'Eve', 	101);

DROP TABLE Departments;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);
 
 INSERT INTO Departments (DepartmentID, DeptName, Location) VALUES
   (101, 'HR',   	'New York'),
   (102, 'IT',   	'San Francisco'),
   (103, 'Finance',  'Chicago'),
   (104, 'Sales',	'Boston');
   
   
SELECT 
    *
FROM
    employees;
SELECT 
    *
FROM
    departments;
   
SELECT 
    A.EmpID, A.EmpName, B.DeptName
FROM
    Employees A
        INNER JOIN
    Departments B ON A.DepartmentID = B.DepartmentID;
    
SELECT 
    A.EmpID, A.EmpName, B.DeptName
FROM
    Employees A
        LEFT JOIN
    Departments B ON A.DepartmentID = B.DepartmentID;

SELECT 
    D.DepartmentID, D.DeptName, E.EmpName
FROM
    Employees E
        RIGHT JOIN
    Departments D ON E.DepartmentID = D.DepartmentID;
    
SELECT 
    E.EmpID, E.EmpName, D.DeptName
FROM
    Employees E
        LEFT JOIN
    Departments D ON E.DepartmentID = D.DepartmentID 
UNION SELECT 
    E.EmpID, E.EmpName, D.DeptName
FROM
    Employees E
        RIGHT JOIN
    Departments D ON E.DepartmentID = D.DepartmentID;

SELECT 
    E.EmpName, D.DeptName
FROM
    Employees E
        CROSS JOIN
    Departments D;
 
SELECT 
    EmpName AS Name
FROM
    Employees 
UNION ALL SELECT 
    DeptName
FROM
    Departments;
 
SELECT 
    DepartmentID
FROM
    Employees
WHERE
    DepartmentID IN (SELECT 
            DepartmentID
        FROM
            Departments);

SELECT 
    DepartmentID
FROM
    Departments
WHERE
    DepartmentID NOT IN (SELECT 
            DepartmentID
        FROM
            Employees);




