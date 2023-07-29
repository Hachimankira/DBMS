--Task7:  Using subqueries to solve queries
--1.Create a report that displays the employee number,last name, and salary of all 
--employees who earn more than the average salary. Sort the results in ascending order 
--by salary. 
select employee_id, last_name,salary
from employees 
where salary >(select avg(salary) from employees)
order by salary;

--2.Write a query that displays the employee number and last name of all employees who 
--work in a department with any employee whose last name contains a u. 
select employee_id,last_name
from employees 
where department_id in (select department_id from employees
where last_name like '%u%');

SELECT employee_id, last_name
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM employees
    WHERE last_name LIKE '%u%'
)
ORDER BY employee_id;


--3.The HR department needs a report that displays the last name, department number, 
--job id of all employees whose department location id is 1700.
select last_name, department_id, job_id
from employees
where department_id in (select department_id 
from departments 
where location_id= 1700);

--4.Create  a  report  for  the  HR  department  that  displays  the  last  name  and  
--salary  of  every employee who reports to King. 
select last_name, salary
from employees 
where manager_id in(select employee_id 
from employees 
where last_name='King');
