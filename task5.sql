-- 1.Find the highest, lowest, sum, and average salary of all employees. Label the columns Maximum, 
--Minimum, Sum, and Average respectively. Round your results to the nearest whole number.  
SELECT MAX(SALARY) "MAXIMUN", MIN(SALARY) "MINIMUM", SUM(SALARY) "SUM", ROUND(AVG(SALARY)) "AVERAGE_SALARY"
FROM HR.EMPLOYEES;
-- 2.Modify the query in task_5_1 to display the minimum, maximum, sum, and average salary for each job type.  
SELECT JOB_ID, MAX(SALARY) "MAXIMUN", MIN(SALARY) "MINIMUM", SUM(SALARY) "SUM", ROUND(AVG(SALARY)) "AVERAGE_SALARY"
FROM HR.EMPLOYEES
GROUP BY JOB_ID;
-- 3.Write a query to display the number of people with the same job. 
SELECT JOB_ID, COUNT(*) "COUNT" FROM HR.EMPLOYEES
GROUP BY JOB_ID;
-- 4.Find the difference between the highest and lowest salaries. Label the column DIFFERENCE. 
SELECT MAX(SALARY)-MIN(SALARY) "DIFF"
FROM HR.EMPLOYEES;
-- 5.Create a query to display the manager number and the salary of the lowest-paid employee for the manager. 
--Exclude anyone whose manager is not known. Exclude any groups where the minimum salary is $6,000 or less. 
--Sort the output in descending order of salary. 
SELECT MANAGER_ID, MIN(SALARY) AS LOWEST_PAID_SALARY
FROM HR.EMPLOYEES
WHERE MANAGER_ID IS NOT NULL
GROUP BY MANAGER_ID
HAVING MIN(SALARY)>6000
ORDER BY LOWEST_PAID_SALARY DESC;
