--Task1: Retrieving Data using SQL SELECT statement
--1.Determine the structure of DEPARTMENTS table and contents.
select * from departments;

--2.Determine the structure of Employees table.
select * from employees;

--3.The HR department wants a query to display the last name,job code, hire date
--and employee number  for  each  employee,  with  the  employee  number  appearing  first.
--Provide  an  alias STARTDATE for the HIRE_DATE column.
select last_name,job_id,hire_date as "Start_date",employee_id
from employees;


--4.The  HR  department  needs a  query  to  display  all  unique  job  codes  from the  EMPLOYEES table.
select DISTINCT job_id 
from employees;

--5.The  HR  department  wants  more  descriptive  column  heading  for  its  report  on 
--employees. Modify the Task_1_3toName the  column heading 
--EMP #, Employee, Job and  Hire Date, respectively.
select employee_id "Emp#",last_name "Employee",job_id "job", hire_date "Hire Date"
from employees;


--6.The HR department has requested a report of all employees and their job IDs. 
--Display the last name concatenated  with the job ID (Separated by a comma and space)
--and name the column Employee and Title.
select last_name ||', '||job_id "Employee and Title"
from employees;