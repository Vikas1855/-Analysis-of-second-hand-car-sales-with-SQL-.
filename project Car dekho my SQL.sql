create schema cars;
use cars;
Select * from car_dekho;

--	----------------------------------------------cardekho project------------------------------------------------------------------------------------------------
-- READ DATA--
SELECT * FROM car_dekho;
-- total cars: To get a count of total records --
select count(*) from car_dekho; #7927
  /*   */
---- The manager ask the employee how many cars will be available in 2023? ---------------------
select count(*) from car_dekho where year = 2023; #6
select name,year, count(*) from car_dekho where year = 2023 group by name;

select count(*) from car_dekho where year = 2023;

-- The manager ask the employee how many cars available in 2020,2021,2022? --
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7

select name, year , count(*) from car_dekho where year in (2020,2021,2022) group by 1,2;
-- Groupby --
select year,count(*) from car_dekho where year in(2020,2021,2022) group by year;
select count(*) from car_dekho where year in (2020,2021,2022) group by year; -- without year label column--

select name, year, count(*) from car_dekho where year in (2020,2021,2022) group by 1,2; -- with year lebel column--

select year,count(*) from car_dekho where year in (2020,2021,2022) 
group by 1;
-- client asked me to print the total of all cars by year. I don't see all the datails. --
select year, count(*) from car_dekho group by year;

select name, year, count(*) from car_dekho group by 1,2;
select year,count(*) from car_dekho group by year;
select year, count(*) from car_dekho group by 1;

-- client asked to car dealer  agent How many diesel car will be there in 2020? --
select year, count(*) from car_dekho where year = 2020 and fuel = "Diesel"; #20

select name, year, count(*) from car_dekho where year =2020 and fuel ='Diesel' group by 1;

-- Client asked to car dealer  agent How many petrol car will be there in 2020? 
--
select year, count(*) from car_dekho where year = 2020 and fuel = "Petrol"; # 51
select name,year, count(*) from car_dekho where year = 2020 and fuel = "Petrol" group by 1;# 51

-- The manager ask to employee  to give a print All the fuel cars (petrol, diesel and CNG) come by all year--
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select fuel='petrol', year,  count(*) from car_dekho where fuel = "Petrol" group by 1,2;
select fuel, year,  count(*) from car_dekho where fuel = "Petrol" group by 1,2;

select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select fuel, year, count(*) from car_dekho where fuel = "Diesel" group by year;

select year, count(*) from car_dekho where fuel = "CNG" group by year;
select fuel, year, count(*) from car_dekho where fuel = "CNG" group by year;
--	combine--
select fuel, year, count(*) from car_dekho where fuel in ("CNG" ,"Diesel","Petrol") group by 1,2;

select fuel,year,count(*) from car_dekho where fuel in ('CNG', 'Diesel', 'Petrol') group by	1,2;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars? --
select year, count(*) from car_dekho group by year having count(*)>100;

select year,count(*) from car_dekho group by 1 having count(*)>100 ;

-- Manager said there were less than equal to 100 cars in a given year, which year had less than equal to 100 cars? --
select year, count(*) from car_dekho group by year having count(*)<=100;

select year ,count(*) from car_dekho group by year having count(*) <=100;
-- Manager said there were less than equal to 50 cars in a given year, which year had less tha equal to 100 cars? --
select year, count(*) from car_dekho group by year having count(*)<=50;

-- The manager said to the employee all cars count details between 2015 and 2023. We need a complete list. -- 
select count(*) from car_dekho  where year between 2015 and 2023; # 4124
select count(*) from car_dekho where year between 2015 and 2023;

select count(*) from car_dekho where year between 2015 and 2023;
select count(*) from car_dekho where year in( 2015, 2023);
select count(*) from car_dekho where year ='2015';
select count(*) from car_dekho where year ='2023';

-- The manager said to the employee all cars details between 2015 and 2023. We need a complete list. -- 

select * from car_dekho where year between 2015 and 2023;

select * from car_dekho where year between 2015 and 2023;

select * from car_dekho where year between 2015 and 2023;

--                                                  END                                                  --
