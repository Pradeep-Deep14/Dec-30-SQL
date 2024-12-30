CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    manager_id INT
);

INSERT INTO Employees (employee_id, employee_name, manager_id) VALUES
(1, 'Alice', 3),
(2, 'Bob', 3),
(3, 'Charlie', 4),
(4, 'David', 5),
(5, 'Eve', 5),
(6, 'Frank', 5),
(7, 'Grace', 5),
(8, 'Hannah', 5),
(9, 'Ivan', 5),
(10, 'Jack', 5),
(11, 'Karen', 4),
(12, 'Leo', 4),
(13, 'Mike', 5),
(14, 'Nina', 5),
(15, 'Olivia', 5);


SELECT * FROM EMPLOYEES

/*
Find out Managers who have more than 7 reporting people under them
*/

SELECT E.EMPLOYEE_NAME AS MANAGER_NAME,
	   COUNT(E1.EMPLOYEE_ID) AS REPORT_COUNT
FROM EMPLOYEES E1
JOIN EMPLOYEES E
ON E1.MANAGER_ID = E.EMPLOYEE_ID
GROUP BY 1
HAVING COUNT(E1.EMPLOYEE_ID) > 7;


