select 'There are ' || count(*) || ' departments' as "Total departments"
from departments;
 
 select 'There are ' || count(*) || ' employees in this department.' as "Total employees"
 from employees where d_id='AF_001';
 
 select e_id, e_name, e_phone, e_email, e_address, e_gender, pay_id, job_id from employees where d_id = 'AF_001';

select 'There are total ' || count(*) || ' employees in our company.' as "Total Employees"  from employees;

select * from employees where e_gender='M';

select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details 
where employees.e_id = 101 and job_details.e_id = 101 and employees.job_id = jobs.job_id;

select 'There are ' || count(*) || ' job positions' as "Jobs"
from jobs;

select job_title,min_salary, max_salary
from jobs;

select  e.e_id, e.e_name, j.job_title, d.d_name
from employees e, jobs j, departments d
where e.job_id = 'AMB' and e.job_id = j.job_id and e.d_id = d.d_id;

select 'There are ' || count(*) || ' employees having salary below 40k' as "Employees"  
from payments
where salary < 40000; 

select e.e_id, e.e_name, e.e_phone, e.e_email, e.e_address, e.e_gender, e.pay_id, e.job_id, e.d_id
from employees e, job_details j
where e.e_id = j.e_id and j.start_date < '30-JAN-17';

select MAX(salary) as "MAX", MIN(salary) as "MIN", ROUND(AVG(salary),2) as "AVG"
from payments;

select e.e_id, e.e_name, e.e_phone, e.e_email, e.e_address, e.e_gender, e.pay_id, e.job_id, e.d_id
from employees e, job_details j
where e.e_id = j.e_id and j.start_date = '01-JAN-17';

select e.e_id, e.e_name, p.salary
from employees e, payments p
where e.pay_id = p.pay_id and p.salary = 50000;

select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
from employees e, payments p, bonuses b
where e.e_id = 100 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;

select e.e_id, e.e_name, p.pay_id, b.bonus_id, b.bonus, b.allowances
from  bonuses b, employees e, payments p
where b.bonus > 0 and b.bonus_id = p.bonus_id and p.pay_id = e.pay_id ;

select e.e_name, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
from employees e, payments p, bonuses b
where e.e_id = 100 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;

select e.e_id, e.e_name , (j.end_date - j.start_date) as "Duration Of work"
from employees e, job_details j
where e.e_id = j.e_id;

select e.e_id, e.e_name , e_phone, e_email
from employees e
where e.e_name LIKE 'A%';

select 'There are ' || count(*) || ' employees getting bonuses.' as "Employees getting bonuses"
from bonuses
where bonus > 0;


select 'The last date of induction of an employee was ' || MAX(start_date) 
from job_details;

select count(*) 
from payments
where loan >0;

select 'The maximum tax rate is ' || MAX(tax) 
from payments;

select count(*) 
from payments
where leave >0;

select e.e_name, ((p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) * 12 ) as "YearlySalary"
from employees e, payments p, bonuses b
where e.e_id = 100 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;




















