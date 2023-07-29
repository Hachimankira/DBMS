--Task6:  Displaying Data from Multiple Tables
--1.Write a query for the HR department to produce the addresses of all the departments.
--Use the LOCATIONS and COUNTRIES tables. Show the location Id, street address, city, 
--state or province and country in the output. Using inner join.
select location_id, street_address, city, state_province, country_name
from locations l
inner join countries c
on(l.country_id=c.country_id);
--2.The HR department need a report of all employees. Write a query to display the last name,
--department number, and departmentname for all employees.
select e.last_name, e.department_id, d.department_name
from employees e
join departments d
on e.department_id = d.department_id;

--3.The  HR department  needs  a  report  of  employees  in  Toronto.  Display  the  last
--name,  job, department number, department name and city for all employees who work in Toronto. 
select e.last_name, e.job_id, e.department_id, d.department_name,l.city
from employees e
join departments d
on(e.department_id=d.department_id) 
join locations l 
on(d.location_id=l.location_id)
where l.city='Toronto'; 

