
-- DROP TABLE dept_manager;
-- DROP TABLE titles;
-- DROP TABLE employees;
-- DROP TABLE salaries;
-- DROP TABLE departments;
-- DROP TABLE dept_emp;

-- CREATE TABLE "departments" (
--     "dept_num" VARCHAR   NOT NULL,
--     "dept_name" VARCHAR   NOT NULL
-- );

-- CREATE TABLE "dept_emp" (
--     "emp_num" INTEGER   NOT NULL,
--     "dept_num" VARCHAR   NOT NULL
-- );

-- CREATE TABLE "dept_manager" (
--     "dept_num" VARCHAR   NOT NULL,
--     "emp_num" INTEGER   NOT NULL
-- );

-- CREATE TABLE "titles" (
--     "title_id" VARCHAR   NOT NULL,
--     "title" VARCHAR   NOT NULL
-- );

-- CREATE TABLE "employees" (
--     "emp_num" INTEGER   NOT NULL,
--     "title_id" VARCHAR   NOT NULL,
--     "birth_date" VARCHAR   NOT NULL,
--     "first_name" VARCHAR   NOT NULL,
--     "last_name" VARCHAR   NOT NULL,
--     "sex" CHAR(1)   NOT NULL,
--     "hire_date" VARCHAR   NOT NULL
-- );

-- CREATE TABLE "salaries" (
--     "emp_num" INTEGER   NOT NULL,
--     "salary" INTEGER   NOT NULL
-- );


-- # FIgure out composite keys and redo PK and FK
-- ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_num" FOREIGN KEY("dept_num")
-- REFERENCES "departments" ("dept_num");

-- ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_num" FOREIGN KEY("dept_num")
-- REFERENCES "departments" ("dept_num");

-- ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_num" FOREIGN KEY("emp_num")
-- REFERENCES "dept_emp" ("emp_num");

-- ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_num" FOREIGN KEY("emp_num")
-- REFERENCES "dept_emp" ("emp_num");

-- ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_title_id" FOREIGN KEY("title_id")
-- REFERENCES "titles" ("title_id");

-- ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_num" FOREIGN KEY("emp_num")
-- REFERENCES "dept_emp" ("emp_num");

-- SELECT * FROM dept_emp;

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

-- SELECT employees.emp_num, last_name, first_name, sex, salary
-- FROM employees
-- INNER JOIN salaries ON salaries.emp_num = employees.emp_num;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date = 1986;

-- # USE CTE to pull from tables departments, dept_manager, employees. NOTE: I changed man_emp_num to emp_num as designator m is man specific
-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.



-- # USE CTE employees and dept_emp NOTE: this one may require the use of nested Query, check if logic driven or efficiency
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.


-- # USE filter SELECT (columns) FROM employees NOTE: all Hercs ONE B is probably an HR designator for H-1B visas as nothing else fits
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


-- # CTE departments and employees and filter (these types require joins and one to many groupby's, use orderby as well)
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- # Dovetails 6 and 7 so repeat code with and/or conditional on where statement
-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- equvalent of .nunique(), .count(), use employees table and refer to 09-sql-02 or -03 INS in class examples Chris used of # instances
-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
