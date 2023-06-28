CREATE DATABASE ORG;
USE ORG;

CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,
DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

select * from worker;
   
# Question 1:
# Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.

SELECT FIRST_NAME AS WORKER_NAME FROM WORKER;


# Question 2:
# Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.

SELECT DISTINCT DEPARTMENT AS DEPARTMENT FROM WORKER;

#Question 3:
# Write an SQL query to print the first three characters of FIRST_NAME from the Worker table.

SELECT substring(FIRST_NAME, 1,3) AS THREE_CHAR_NAME FROM WORKER;

# Question 4:
# Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length.

SELECT DISTINCT DEPARTMENT ,lenhth(Department) AS LENGTH FROM WORKER;

# Question 5:
# Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and 
# DEPARTMENT Descending.

SELECT * FROM WORKER ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

# Question 6:
# Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.

SELECT * FROM WORKER WHERE DEPARTMENT ="Admin";

# Question 7:
# Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.

SELECT * FROM WORKER WHERE Salary between 100000 AND 500000;

# Question 8:
# Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.

SELECT WORKER_ID,CONCAT(FIRST_NAME," ",LAST_NAME) AS FULL_NAME,SALARY FROM WORKER WHERE SALARY between 50000 AND 100000;

# Question 9:
# Write an SQL query to show only even rows from the WORKER table.

SELECT * FROM WORKER WHERE WORKER_ID%2=0;

# Question 10:
# Write an SQL query to print details of the Workers who joined in Feb’2014.

SELECT * FROM WORKER WHERE YEAR(JOINING_DATE)=2014 AND monthname(JOINING_DATE)="FEBRUARY";
