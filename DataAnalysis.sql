-- #1
select e.emp_no
	,e.last_name
	,e.first_name
	,e.sex
	,s.salary
from employees e
	inner join salaries s on e.emp_no = s.emp_no;


-- #2
select e.first_name
	,e.last_name
	,e.emp as hiredate
from employees e
where date_part('year', e.emp) = 1986;

-- #3
select d.dept_no
	,d.dept_name
	--,dm.dept_no as dm_dept_no
	--,dm.emp_no as dm_emp_no
	,e.emp_no
	,e.last_name
	,e.first_name
from departments d
	inner join dept_manager dm on d.dept_no = dm.dept_no
	inner join employees e on dm.emp_no = e.emp_no;
	
-- #4
select d.dept_no
	,d.dept_name
	--,dm.dept_no as dm_dept_no
	--,dm.emp_no as dm_emp_no
	,e.emp_no
	,e.last_name
	,e.first_name
from departments d
	inner join dept_emp de on d.dept_no = de.dept_no
	inner join employees e on de.emp = e.emp_no;
	
-- #5
select first_name
	,last_name
	,sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

-- #6
select d.dept_no
	,d.dept_name
	--,dm.dept_no as dm_dept_no
	--,dm.emp_no as dm_emp_no
	,e.emp_no
	,e.last_name
	,e.first_name
from departments d
	inner join dept_emp de on d.dept_no = de.dept_no
	inner join employees e on de.emp = e.emp_no
where d.dept_name = 'Sales'

-- #7
select d.dept_no
	,d.dept_name
	--,dm.dept_no as dm_dept_no
	--,dm.emp_no as dm_emp_no
	,e.emp_no
	,e.last_name
	,e.first_name
from departments d
	inner join dept_emp de on d.dept_no = de.dept_no
	inner join employees e on de.emp = e.emp_no
where d.dept_name = 'Sales'
 	or d.dept_name = 'Development'
	
-- #8
select last_name
	,count(last_name) as frequency
from employees
group by last_name
order by frequency desc;









