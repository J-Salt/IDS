set SQL_SAFE_UPDATES = 0;
set @average=(select avg(Assault) from usarrests);
update usarrests set Assault=@average where Assault=0;
select * from usarrests;
select min(Assault) as "MIN", 
   max(Assault) as "MAX", avg(Assault) as "AVG", format(variance(assault),2) as "VARIANCE"
from usarrests;
select min(Murder) as "MIN", 
   max(Murder) as "MAX", avg(Murder) as "AVG", format(variance(Murder),2) as "VARIANCE"
from usarrests;
select min(urbanpop) as "MIN", 
   max(urbanpop) as "MAX", avg(urbanpop) as "AVG", format(variance(urbanpop),2) as "VARIANCE"
from usarrests;
set @maximum=(select max(murder) from usarrests);							#sets max murder rate to maximum
select state, murder from usarrests where murder = @maximum; 				#gets the state with the highest murder rate

select state, urbanpop from usarrests order by UrbanPop;

set @arizona_murder_rate=(select murder from usarrests where state="Arizona");
select state, murder from usarrests where murder > @arizona_murder_rate;
select count(*) from usarrests where murder > @arizona_murder_rate;
