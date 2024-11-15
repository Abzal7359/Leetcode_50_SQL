-- Write your PostgreSQL query statement below
with dd as(
select *,dense_rank() over(partition by email order by id) as rk from Person
)

delete from Person where id not in (select id from dd where rk=1  )
