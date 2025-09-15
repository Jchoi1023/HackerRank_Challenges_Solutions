/*
https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
*/

SELECT
    case 
        when a + b <= c or b + c <= a or a + c <= b then 'Not A Triangle'
        when a=b and b=c and c=a then 'Equilateral'
        when a=b or b=c or a=c then 'Isosceles'
        -- when a<>b and b<>c and c<>a then 'Scalene'
        else 'Scalene'
    end as type_triangles
from triangles;