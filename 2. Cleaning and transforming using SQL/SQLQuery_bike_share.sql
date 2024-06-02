--1. Append two tables for bike share for 2021 and 2022

WITH bkShare AS (
SELECT * FROM bike_data.dbo.bike_share_yr_0
UNION ALL
SELECT * FROM bike_data.dbo.bike_share_yr_1)

--2. Inner JOIN the bike share table with cost table
--3. Calculated Revenue and Profit

SELECT  
	dteday,
	season,
	b.yr,
	b.weekday,
	hr,
	rider_type,
	riders,
	c.price,
	COGS, 
	riders*price AS revenue,
	riders*price - COGS As profit

FROM bkShare b
LEFT JOIN bike_data.dbo.cost_table c
ON b.yr = c.yr 



