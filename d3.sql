select restaurant.rname, count(inspection) as inspectionsNumber   
from restaurant natural join inspection
where date_part('year', inspection.idate)+1=date_part('year', current_date)
group by lno;
