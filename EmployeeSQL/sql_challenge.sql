
/*DROP TABLE IF EXISTS dept_manager 
DROP TABLE IF EXISTS employees
DROP TABLE IF EXISTS salaries
DROP TABLE IF EXISTS titles
DROP TABLE IF EXISTS dept_emp
DROP TABLE IF EXISTS departments*/


-- CREATE TABLE "departments" (
--     "dept_num" VARCHAR   NOT NULL,
--     "dept_name" VARCHAR   NOT NULL,
--     CONSTRAINT "pk_departments" PRIMARY KEY (
--         "dept_num"
--      )
-- );

-- CREATE TABLE "dept_emp" (
--     "emp_num" INTEGER   NOT NULL,
--     "dept_num" VARCHAR   NOT NULL,
--     CONSTRAINT "pk_dept_emp" PRIMARY KEY (
--         "emp_num"
--      )
-- );

-- CREATE TABLE "dept_manager" (
--     "dept_num" VARCHAR   NOT NULL,
--     "emp_num" INTEGER   NOT NULL
-- );

-- CREATE TABLE "titles" (
--     "title_id" VARCHAR   NOT NULL,
--     "title" VARCHAR   NOT NULL,
--     CONSTRAINT "pk_titles" PRIMARY KEY (
--         "title_id"
--      )
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


-- SELECT * FROM dept_emp

