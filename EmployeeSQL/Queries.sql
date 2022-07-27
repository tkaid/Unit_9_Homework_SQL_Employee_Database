-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT 
      salaries.emp_no, 
      last_name, 
      first_name, 
      sex,
      salary
From 
       salaries 

INNER JOIN employees

  ON employees.emp_no = salaries.emp_no;



--- List first name, last name, and hire date for employees who were hired in 1986.
SELECT *
FROM employees
WHERE "hire_Date"  BETWEEN '1986-01-01' AND '1986-12-31';



--- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT 
      departments.dept_no, 
      employees.emp_no,
      dept_name,
      first_name,
      last_name 
From 
       departments  

INNER JOIN dept_manager

  ON dept_manager.dept_no = departments.dept_no
  
INNER JOIN employees 

  ON employees.emp_no = Dept_manager.emp_no;
  
  
  
---List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT * 
FROM employees 
WHERE 
     first_name = 'Hercules'
AND  
     last_name like 'B%'


---List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
       employees.emp_no, 
       employees.last_name, 
       employees.first_name, 
       departments.dept_name
FROM 
     employees

INNER JOIN dept_emp 
    ON employees.emp_no = dept_emp.emp_no
    
INNER JOIN departments 
    ON dept_emp.dept_no = departments.dept_no

WHERE departments.dept_name = 'Sales'


---List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
       employees.emp_no, 
       employees.last_name, 
       employees.first_name, 
       departments.dept_name
FROM 
     employees

INNER JOIN dept_emp 
    ON employees.emp_no = dept_emp.emp_no
    
INNER JOIN departments 
    ON dept_emp.dept_no = departments.dept_no

WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'


--- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT
       last_name, count(last_name) as "Total Last Name Count" 
FROM
     employees

GROUP BY last_name;



