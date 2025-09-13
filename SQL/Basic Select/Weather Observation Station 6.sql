/*
https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
*/
select city from station
where substring(city,1,1) = 'a' OR 
substring(city,1,1) = 'e' or
substring(city,1,1) = 'i' or
substring(city,1,1) = 'o' or
substring(city,1,1) = 'u';

-- Using 'in'
-- SELECT DISTINCT CITY FROM STATION WHERE LOWER(SUBSTR(CITY, 1, 1)) IN ('a', 'e', 'i', 'o', 'u');

-- Using 'left
-- select distinct(city) from station
-- where left(city,1) in ('a', 'e', 'i', 'o', 'u');

