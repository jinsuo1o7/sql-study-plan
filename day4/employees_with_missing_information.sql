# Write your MySQL query statement below
select e.employee_id
from employees e
where e.employee_id not in (select s.employee_id from salaries s)
union
select s.employee_id
from salaries s
where employee_id not in (select e.employee_id from employees e)
order by employee_id;