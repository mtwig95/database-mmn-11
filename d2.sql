select rname,mname
from manager ,restaurant 
where manager.mid=restaurant.mid and
manager.city=restaurant.city and manager.address<>restaurant.address;
