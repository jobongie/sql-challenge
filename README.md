# SQL Homework - Employee Database: A Mystery in Two Parts

#### Data Engineering

  * For the primary keys check to see if the column is unique, otherwise create a [composite key](https://en.wikipedia.org/wiki/Compound_key). Which takes to primary keys in order to uniquely identify a row.
  * Be sure to create tables in the correct order to handle foreign keys.

-- CREATE TABLE "departments" 

-- CREATE TABLE "titles" 

-- CREATE TABLE "employees" 

-- CREATE TABLE "dept_emp" 

-- CREATE TABLE "dept_manager" 

-- CREATE TABLE "salaries" 


#### Data Analysis

Once you have a complete database, do the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

-- SELECT employees.emp_num, last_name, first_name, sex, salary
-- FROM employees
-- INNER JOIN salaries ON salaries.emp_num = employees.emp_num;

2. List first name, last name, and hire date for employees who were hired in 1986.

-- SELECT first_name, last_name, hire_date
-- FROM employees
-- WHERE hire_date BETWEEN '01/01/1986' AND '01/01/1987';

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

-- SELECT departments.dept_num, departments.dept_name, dept_manager.emp_num, employees.last_name, employees.first_name

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

-- SELECT dept_emp.emp_num, employees.last_name, employees.first_name, departments.dept_name

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- SELECT first_name, last_name, sex

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- SELECT dept_emp.emp_num, employees.last_name, employees.first_name, departments.dept_name

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- SELECT dept_emp.emp_num, employees.last_name, employees.first_name, departments.dept_name

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

-- SELECT last_name,
-- COUNT(last_name) AS "frequency"
-- FROM employees
-- GROUP BY last_name
-- ORDER BY
-- COUNT(last_name) DESC;


## Epilogue

Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

"April Fools"


## Submission

* Create an image file of your ERD.
- Images Folder "QuickDBD-SQL_HWK.png"

* Create a `.sql` file of your table schemata.
- Main folder "schema.sql"

* Create a `.sql` file of your queries.
- Main Folder "queries.sql"

* (Optional) Create a Jupyter Notebook of the bonus analysis.
- "sql_challenge.ipynb"


