-- Write SQL queries for the following,
-- 1. Print profit % for all the movies
use moviesdb;
select *,round(((revenue - budget)/ budget)*100,2) as "profit%" from financials limit 10;