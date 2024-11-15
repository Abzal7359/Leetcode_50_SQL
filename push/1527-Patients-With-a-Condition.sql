-- Write your PostgreSQL query statement below
with dd as(
select *,regexp_split_to_table(conditions, ' ') AS condition_word from Patients
)

select * from Patients where patient_id in (select patient_id from dd where condition_word like 'DIAB1%')