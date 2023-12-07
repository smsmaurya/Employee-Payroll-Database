create database Employee_Payroll_DB;
show databases;
use Employee_Payroll_DB;

create table Employee_Payroll
(
ID          int unsigned not null auto_increment,
Name        varchar(150) not null,
salary      Double Not Null,
Start       Date not null,
Primary Key (ID)
);

Drop Table Employee_Payroll;
describe Employee_Payroll;

INSERT INTO employee_payroll (name, salary, start) VALUES
('Bill', 1000000.00, '2018-01-03'),
('Mark', 2000000.00, '2019-11-13'),
('Charlie', 3000000.00, '2020-05-21');

SELECT * FROM employee_payroll;

SELECT salary
FROM employee_payroll
WHERE name ='Bill';

 DELETE
 FROM employee_payroll
 WHERE name='Bill';
 
INSERT INTO employee_payroll (name, salary, start) VALUES
('Bill', 1000000.08, 2018-01-03);

 SELECT * FROM employee_payroll
WHERE start BETWEEN CAST('2018-01-01' AS DATE) AND DATE (NOW());

ALTER TABLE employee_payroll ADD gender CHAR(1) AFTER name;

SET SQL_SAFE_UPDATES = 0;
 UPDATE employee_payroll SET gender = 'M' WHERE name='Bill' OR name='Charlie';
 
 UPDATE employee_payroll SET gender = 'F' WHERE name='Tersia';
 
 UPDATE employee_payroll SET gender = 'F' WHERE name='Tersia';
 

 SELECT AVG(salary) FROM employee_payroll;
 
 INSERT INTO employee_payroll (name, gender, salary, start) VALUES ('Jenny', 'F', 2300000.00, '2022-10-13');
 
 SELECT AVG(salary) FROM employee_payroll WHERE gender='M' GROUP BY gender;
 
 SELECT AVG(salary) FROM employee_payroll WHERE gender='F' GROUP BY gender;
 
 SELECT gender,AVG(salary) FROM employee_payroll GROUP BY gender;
 
 SELECT gender, SUM(salary) FROM employee_payroll GROUP BY gender;
 
 SELECT gender, MAX(salary), MIN(salary) FROM employee_payroll GROUP BY gender;
 
 SELECT COUNT(id) AS female_count FROM employee_payroll WHERE gender='F' GROUP BY gender;
 
 desc employee_payroll;

#Dropping gender field

ALTER TABLE employee_payroll DROP gender;

DROP DATABASE payroll_service;

create database Employee_Payroll_DB;

