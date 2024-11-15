-- Write your PostgreSQL query statement below
with dd as(
select *,dense_rank() over(partition by departmentId order by salary desc) as rk from Employee 
)

select d2.name as Department,d1.name as Employee ,d1.Salary from dd d1 left join Department d2 on d2.id=d1.departmentId where d1.rk<=3