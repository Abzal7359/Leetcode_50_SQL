-- Write your PostgreSQL query statement below
select user_id, regexp_replace(lower(name), '^(\w+)', INITCAP(SPLIT_PART(name, ' ', 1))) as name from Users order by user_id
