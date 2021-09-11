WITH makeInspectionInEilat AS(
SELECT distinct iid as id
FROM inspection
where lno in (select lno
from restaurant 
where city='eilat')),

totalIinspectionToIid as (SELECT count(iid)as total, iid
FROM inspection,makeInspectionInEilat
where passed=0 and inspection.iid<>makeInspectionInEilat.id
group by iid)

select iname, inspector.iid ,totalIinspectionToIid.total
from inspector,totalIinspectionToIid 
where inspector.iid=totalIinspectionToIid.iid and total=(select  max(total) as maxi
from totalIinspectionToIid, inspector
where inspector.iid=totalIinspectionToIid.iid)




