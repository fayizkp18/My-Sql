use Richiest;
select * from billionaires;

-- 1.show the name and their networth
select personName,finalWorth
from billionaires;

select DISTINCT country
from billionaires;

select count(DISTINCT country)
from billionaires;

select count(DISTINCT personname)
from billionaires;

select AVG(finalworth)
from billionaires;

select * from billionaires
where country in('spain','india','usa');

select * from billionaires
where country = 'india' and city = 'mumbai';

select * from billionaires
where country = 'india';

select DISTINCT personname from billionaires
where selfmade = 'TRUE';

select industries, count(personname)as billionaire_count from billionaires
GROUP BY industries
order by count(personname) desc;

select birthmonth, count(personname)from billionaires
GROUP BY birthmonth
order by birthmonth asc;

select * from billionaires
where country regexp '^u';

select personname, finalworth,
if (finalworth < 10000, 'low','high') as category
from billionaires;

select personname, finalworth,
case
when finalworth <10000 then 'low'
when finalworth between 100000 and 300000 then 'medium'
when finalworth > 300000 then 'high'
end as category
from billionaires;

select personname, finalworth,
case
when finalworth <10000 then 'low'
when finalworth between 100000 and 300000 then 'medium'
else'high'
end as category
from billionaires;

-- subqurey
select personname, finalworth,
(select avg(finalworth) from billionaires)
from billionaires;