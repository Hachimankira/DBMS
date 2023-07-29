--Task2:  Restricting and sorting data
--The HR department needs your assistance with creating some queries
--1.Becauseof budget issues, the HR department needs a report that displays the last name 
--and salary employees earning more than $12,000. 
select last_name, salary
from employees
where salary>12000;

--2.Write a query that displays the last name and department number for employee number 176.
select last_name,department_id
from employees
where employee_id=176;

--3.Run  a  query  to  display  the  last name,  job  ID,  and  start  date  for  the  
--employees  whose  last names are Matos and Taylor. Order the query in ascending order by 
--start date.
select last_name, job_id, hire_date
from employees
where last_name='Matos' or last_name='Taylor'
order by hire_date;

--4.Display the last name  and department number of  all employees in departments 20 or 50 
--in ascending alphabetical order by name.
select last_name, department_id
from employees
where department_id=20 or department_id=50
order by first_name;

--5.Modify task_2_3 to list the last name and salary of employees who earn between $5,000 
--and $12,000 and are in department 20 or 50. Label the columns Employee and Monthly salary, 
--respectively. 
select last_name as emloyee, salary as monthly_salary
from employees 
where (salary between 5000 and 12000)
and (department_id =20 or department_id=50);
--and department_id in(20,50)

--6.The HR department needs a report that displays the last name and hire date for all employees
--who were hired in 1994.
select last_name, hire_date
from employees 
where hire_date like '%94';

--7.Display the last name and job title of all employees who do not have a manager.
select last_name, job_id
from employees
where manager_id is null;

--8.Display the last name, salary and commission for all employees who earn commissions. 
--sort data in descending order ofsalary and commissions. 
select last_name, salary, commission_pct
from employees
where commission_pct is not null
order by salary, commission_pct;

--9.Display all employee last names in which the third letter of the name is a.
select last_name
from employees
where last_name like '__a%';

--10.Display the last names of all employees who have both an aand ein their last names.
select last_name
from employees
where last_name like '%a%' and last_name like '%e%';

--11.Display  the  last  name,  job  and  salary  for  all  employees  whose  job  is either
--that  of  a  sales representative  (SA_REP)  or  a  stock  clerk  (ST_CLERK),  and  whose 
--salary  is  not  equal  to $2,500, $3,500, or $7,000.
select last_name, job_id, salary
from employees
where(job_id='SA_REP' or job_id='ST_CLERK') and salary not in (2500,3500,7000);

--12.Modify  lab_02_06.sql to  display  the  last  name,  salary  and  commission  for 
--all  employees whose commission amount is 20%. 
select last_name as Employee, salary as Monthly_salary, commission_pct
from employees
where commission_pct=0.2;


