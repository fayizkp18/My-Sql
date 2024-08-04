create database prg;
use prg;
-- 1,SHOW all columns and rows in the tableL:
select * from salaries;

-- 2,show only the employee name and job title column:
select employeename,jobtitle
from salaries;

-- 3,show the number of employee in the table:
select count(*) from salaries;

-- 4,show the unique job title in the table:
select DISTINCT jobtitle from salaries;
select count(distinct jobtitle) from salaries;

-- 5,show the job title and overtime pay for all employees with overtime pay greater than 1000:
select jobtitle,overtimepay from salaries
where overtimepay > 1000;

-- 6,show the average base pay for all employee:
select AVG(basepay) as 'avg basepay' from salaries;

-- 7,show the top 10 highest paid employee:
select employeename,totalpay from salaries
ORDER BY totalpay desc
limit 10;

-- 8,show the average of base pay overtime pay and other pay for each employee:
select employeename,(basepay + overtimepay + otherpay)/3 from salaries;

-- 9,show all employees who have the word 'manager' in their job title:
select employeename,jobtitle from salaries
where jobtitle like '%manager%';

-- 10,show all the employees with a job title not equal to 'manager:
select employeename,jobtitle from salaries
where jobtitle <>'manager';

-- 11,show all employees with a total pay between 50,000 and 75,000:
select * from salaries
where totalpay between 50000 and 75000;

-- 12,show all employees with a base pay lessthan 50,000or a total pay greather than 100,000:
select * from salaries
where basepay <50000 or totalpay >100000;

-- 13,show all employee with a total pay benifits value between 125,000 and 150,000 and a job title containing the word 'director':
select * from salaries
where totalpaybenefits between 125000 and 150000
and jobtitle like '%director%';

-- 14,show all employees ordered by their total pay benifits in descending order:
select * from salaries
ORDER BY totalpaybenefits desc;

-- 15,show all job titles with an average base pay of atleast 100,000 and order them by the average base pay in descending order:
select jobtitle,avg(basepay) as 'avgbasepay' from salaries
GROUP BY jobtitle
having avg(basepay)>=100000
ORDER BY avgbasepay desc;

-- 16,delete the column:
alter table salaries
drop column notes;
select * from salaries;

-- 17,update the base pay of all employee with the job title containing 'manager' by increasing it by 10%:
update salaries
set basepay= basepay * 1.1
where jobtitle like '%manager%';

-- 18,delete all employee who have no base pay: 
select count(*) from salaries
where overtimepay=0;
delete from salaries
where overtimepay =0;