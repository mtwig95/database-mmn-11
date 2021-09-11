create table manager
(mid int,
mname varchar(20),
address varchar(20),
city varchar(10),
mobile numeric(9,0),
email varchar(20),
primary key (mid));


create table inspector
(iid int,
iname varchar(20),
bdate date,
sdate date,
mobile numeric(9,0),
primary key (iid));

create table restaurant
(lno int,
rname varchar(20),
address varchar(20),
city varchar(10),
phone numeric(9,0),
odate date,
mid int not null,
primary key (lno),
foreign key (mid) references manager);

create table inspection
(lno int,
idate date,
iid int,
stime time,
passed int,
violations varchar(100),
primary key (lno, idate),
foreign key (lno) references restaurant,
foreign key (iid) references inspector,
check (passed in ('0', '1')));
