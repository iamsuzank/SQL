use moviesdb;
-- 1. Generate a report of all Hindi movies sorted by their revenue amount in millions.
-- Print movie name, revenue, currency, and unit
select title, revenue, currency, unit, 
case
when unit ="Billions" then round(revenue*1000,2)
when unit="Thousands" then round(revenue/1000,2)
else revenue
end as revenue_amt_mln

 from movies m join languages l using(language_id) join financials f using(movie_id) where name ="Hindi" order by revenue_amt_mln desc;