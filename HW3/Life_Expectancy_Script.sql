select * from Life_Expectancy;
SET SQL_SAFE_UPDATES = 0;
delete from Life_Expectancy where population=0;
delete from Life_Expectancy where country="India" and Year=2014;
select * from Life_Expectancy;

set @avg_life_expect = (select avg(`Life_Expectancy`) from Life_Expectancy);
update Life_Expectancy set `Life_Expectancy`=@avg_life_expect where `Life_Expectancy`=0 or `Life_Expectancy` is null;

set @avg_adult_mort = (select avg(`Adult_Mortality`) from Life_Expectancy);
update Life_Expectancy set `Adult_Mortality`=@avg_adult_mort where `Adult_Mortality`=0 or `Adult_Mortality` is null;

set @avg_alc = (select avg(Alcohol) from Life_Expectancy);
update Life_Expectancy set Alcohol=@avg_alc where Alcohol=0 or Alcohol is null;

set @avg_bmi = (select avg(BMI) from Life_Expectancy);
update Life_Expectancy set bmi=@avg_bmi where bmi = 0;

set @avg_gdp = (select avg(gdp) from Life_Expectancy);
update Life_Expectancy set gdp=@avg_gdp where gdp = 0;

select country, avg(Adult_Mortality) as "Avg Adult Mortality" from Life_Expectancy where year>=2010 group by country order by avg(Adult_Mortality);
select country, avg(Adult_Mortality) as "Avg Adult Mortality" from Life_Expectancy where year>=2010 group by country order by avg(Adult_Mortality) desc;

select country, avg(Population) as "Avg population" from Life_Expectancy where year>=2010 group by country order by avg(Population);
select country, avg(Population) as "Avg population" from Life_Expectancy where year>=2010 group by country order by avg(Population) desc;

select country, avg(gdp) as "Avg gdp" from Life_Expectancy where year>=2010 group by country order by avg(gdp);
select country, avg(gdp) as "Avg gdp" from Life_Expectancy where year>=2010 group by country order by avg(gdp) desc;

select country, avg(Schooling) as "Avg schooling" from Life_Expectancy where year>=2010 group by country order by avg(schooling);
select country, avg(schooling) as "Avg schooling" from Life_Expectancy where year>=2010 group by country order by avg(schooling) desc;

select country, avg(Alcohol) as "Avg alc consumption" from Life_Expectancy where year>=2010 group by country order by avg(Alcohol);
select country, avg(Alcohol) as "Avg alc consumption" from Life_Expectancy where year>=2010 group by country order by avg(Alcohol) desc;

select country, population, Life_Expectancy from Life_Expectancy order by population;

