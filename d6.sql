with haifa as (select lno,rname
from restaurant 
where city='haifa')

SELECT iname
FROM inspector
where iid in (select  distinct iid
from inspection ,haifa
where inspection.lno=haifa.lno)
