Activity 01:

SELECT last_name, hire_date
FROM emps
WHERE department_id = (SELECT department_id
			       FROM emps
			       WHERE last_name = 'Zlotkey')
AND last_name != "Zlotkey";


Activity 02:

SELECT employee_id, last_name,salary
FROM emps
WHERE salary > (SELECT AVG(salary)
		FROM emps)
ORDER BY salary;


Activity 03:

SELECT last_name, salary
FROM emps
WHERE manager_id = (SELECT employee_id
		    FROM emps
		    WHERE last_name = 'King')


Activity 04

SELECT employee_id, last_name, salary 
FROM emps 
WHERE salary > (SELECT AVG(salary)
		FROM emps) 
AND last_name LIKE "%u%";


Activity 05

CREATE TABLE empnew (id INT(4) NOT NULL PRIMARY KEY, fname VARCHAR(20), lname VARCHAR(20) )
INSERT INTO empnew (id, fname, lname)
VALUES 
(701, "Newaz", "Sharif"),
(702, "Sibghat", "Shaikh"),
(703, "Saeed", "Harun");
INSERT INTO empnew(id, fname, lname) SELECT Employee_Id, First_Name, Last_Name FROM emps


Activity 06

CREATE TABLE emp (ID INTEGER(7), LAST_NAME VARCHAR(25), FIRST_NAME VARCHAR(25), DEPT_ID INTEGER(7));
	
a)ALTER TABLE EMP
  MODIFY LAST_NAME VARCHAR (50);
	
b)CREATE TABLE EMPLOYEES2 (ID INTEGER(7), FIRST_NAME VARCHAR(25), LAST_NAME VARCHAR(50), SALARY FLOAT(10,2), DEPT_ID INTEGER(7));
	
c)DROP TABLE emp;
	
d)RENAME TABLE employees2 TO emp;
	
e)ALTER TABLE emp
  DROP COLUMN FIRST_NAME;