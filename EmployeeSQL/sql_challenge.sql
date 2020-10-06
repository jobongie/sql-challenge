
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