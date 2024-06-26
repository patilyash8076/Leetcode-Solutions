# Write your MySQL query statement below
with temp as (
select PERSON_NAME, weight, turn,
    sum(weight) OVER(order by turn) as cum_weight
FROM Queue
ORDER BY turn asc )

SELECT person_name FROM temp where cum_weight <= 1000 ORDER BY cum_weight desc LIMIT 1

-- LOGIC 2nd

-- SELECT person_name from (
-- select PERSON_NAME, weight, turn,
--     sum(weight) OVER(order by turn) as cum_weight
-- FROM Queue
-- ORDER BY turn asc ) p1
-- WHERE cum_weight <= 1000
-- ORDER BY cum_weight desc
-- LIMIT 1