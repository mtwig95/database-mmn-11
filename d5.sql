with q as (select iname, count(iname) as total, date_part('month', idate) as month
from inspection inner join inspector on inspection.iid = inspector.iid
where date_part('year', idate) = '2021'
group by month, iname),

t as (select max(total), month
from q
group by month)

select  q.month,q.iname, q.total
from q inner join t on t.month=q.month
where total>=max