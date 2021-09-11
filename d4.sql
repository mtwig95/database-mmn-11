with q as (select mid
from manager 
where city = 'karmiel'
except
select mid 
from restaurant
where city = 'karmiel')

select mname, mobile
from manager , q
where q.mid=manager.mid;