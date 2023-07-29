--Task8:  Using Set Operators
--1.The HR department needs a list of departments for departments that do not 
--contain the job ID ST_CLERK. Use set operators to create this report.
select department_id
from departments
minus
select department_id
from employees
where job_id='ST_CLERK';

--2.Create  a  report  that  lists  the  employee  ID  and  job  ID  of  those  
--employees  who  currently have  a  job  title  that  is  the  same  as  their 
--job  title  when  they  were  initially  hired  by  the company (they changed 
--jobs but have now gone back to doing their original job). 
select employee_id, job_id
from employees
intersect 
select employee_id, job_id
from job_history;
