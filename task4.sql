-- Using the CASE function, write a query that displays the grade of all 
--employees based on the value of the column JOB_ID, using the following data: 

select first_name, salary, department_id, 
CASE department_id 
	when 10 then salary*1.1 
    when 20 then salary*1.2 
    when 50 then salary*1.3 
	ELSE salary 
END as "New Salary" 
from hr.employees;