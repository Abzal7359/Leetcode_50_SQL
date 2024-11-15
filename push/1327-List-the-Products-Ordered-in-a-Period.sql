-- Write your PostgreSQL query statement below
with dd as(
select *,sum(weight) over(order by turn) as Total_Weight from Queue )

select person_name from dd where Total_Weight <=1000 order by Total_Weight desc limit 1
 

