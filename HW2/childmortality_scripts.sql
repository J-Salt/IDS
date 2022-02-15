set SQL_SAFE_UPDATES = 0;
select * from childmortality;
update childmortality set `under five mortality rate`=69.2 where `under five mortality rate`=0;
update childmortality set `infant mortality rate`=48.6 where `infant mortality rate`=0;
update childmortality set `neonatal mortality rate`=28 where `neonatal mortality rate`=0;
select * from childmortality;


select year, `under five mortality rate` from childmortality where `under five mortality rate`=(select min(`under five mortality rate`) from childmortality);
select year, `infant mortality rate` from childmortality where `infant mortality rate`=(select min(`infant mortality rate`) from childmortality);
select year, `neonatal mortality rate` from childmortality where `neonatal mortality rate`=(select min(`neonatal mortality rate`) from childmortality);

select year, `under five mortality rate` from childmortality where `under five mortality rate`=(select max(`under five mortality rate`) from childmortality);
select year, `infant mortality rate` from childmortality where `infant mortality rate`=(select max(`infant mortality rate`) from childmortality);
select year, `neonatal mortality rate` from childmortality where `neonatal mortality rate`=(select max(`neonatal mortality rate`) from childmortality);

select year, `neonatal mortality rate` from childmortality where `neonatal mortality rate`>(select avg(`neonatal mortality rate`) from childmortality);

select year, `infant mortality rate` from childmortality order by `infant mortality rate` desc;

select min(`infant mortality rate`) ,avg(`infant mortality rate`), max(`infant mortality rate`), variance(`infant mortality rate`), std(`infant mortality rate`) from childmortality;
select min(`under five mortality rate`), avg(`under five mortality rate`), max(`under five mortality rate`), variance(`under five mortality rate`), std(`under five mortality rate`) from childmortality;
select min(`neonatal mortality rate`), avg(`neonatal mortality rate`), max(`neonatal mortality rate`), variance(`neonatal mortality rate`), std(`neonatal mortality rate`) from childmortality;

alter table childmortality add column `Above Five Mortality Rate` double;

select * from childmortality;
update childmortality set `Above Five Mortality Rate`=100000-`under five mortality rate`;