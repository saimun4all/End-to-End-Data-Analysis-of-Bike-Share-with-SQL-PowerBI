--1. Append two tables for bike share for 2021 and 2022

WITH bkShare AS(
SELECT * FROM bike_share_yr_0
UNION ALL
SELECT * FROM bike_share_yr_1)

--2. Inner JOIN the bike share table with cost table

SELECT * FROM bkShare b
LEFT JOIN cost_table c
ON b.yr = c.yr 

