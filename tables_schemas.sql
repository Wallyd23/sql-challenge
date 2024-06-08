CREATE TABLE dept_emp (
    emp_no VARCHAR NOT NULL,
    dept_no VARCHAR NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES public."Empolyees" (emp_no),
    FOREIGN KEY (dept_no) REFERENCES public."Departments " (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE IF NOT EXISTS public."Departments "
(
    dept_no character varying COLLATE pg_catalog."default" NOT NULL,
    dept_name character varying COLLATE pg_catalog."default",
    CONSTRAINT "Departments _pkey" PRIMARY KEY (dept_no)
)

CREATE TABLE IF NOT EXISTS public."Dept_mangement"
(
    dept_no character varying COLLATE pg_catalog."default",
    emp_no character varying COLLATE pg_catalog."default"
)


