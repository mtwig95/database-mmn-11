CREATE or replace function trigf1() returns trigger as $$
begin
	if  NEW.violations IS NULL 
	then begin
	 raise exception 'no violations, record will not insert';
	 return null;
end;
else 
return new;
end if;
end;
$$language plpgsql;


create trigger T1
before insert on inspection
for each row
when (new.passed=0)
execute procedure trigf1();
