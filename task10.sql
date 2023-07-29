--LAB 10
--CREATING VIEW
CREATE VIEW EMPLOYEE_VU
AS SELECT EMPLOYEE_ID, LAST_NAME, DEPARTMENT_ID
FROM HR.EMPLOYEES;

--DISPLAY THE CONTENT OF THE VIEW
SELECT * FROM EMPLOYEES_VU;


--SELECTING ONLY EMPLOYEE_ID, DEPARTMENT_ID FROM VIEW
SELECT EMPLOYEE_ID, DEPARTMENT_ID FROM EMPLOYEE_VU;

-- CREATING SYNONYM 
CREATE SYNONYM EMPL FOR HR.EMPLOYEES;

--CHECKING IF SYNONYM WORKS
SELECT * FROM EMPL;