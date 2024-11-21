use moviesdb;
-- get all actors whose age is between 70 and 85

explain analyze
select name, year(curdate()) - birth_year as age from actors group by actor_id having age between 70 and 85  order by age desc;

-- or

explain analyze
select name, age from
(
select name, year(curdate())-birth_year as age from actors
) as actor_age where age between 70 and 85 order by age desc;


-- using CTE

with actors_info as (
select name as actor_name,
year(curdate())-birth_year as actor_age
from actors
)

select actor_name, actor_age from actors_info where actor_age between 70 and 85;

-- **movies that produced 500% profit and their rating was less than average rating for all movies** --
with finance as (
select *, round((revenue-budget)/budget*100,0) as profit_pct from financials 
),
 movie as (
select * from movies where imdb_rating < (select avg(imdb_rating) from movies)
)
select movie.movie_id, title, profit_pct, imdb_rating  from movie join finance 
on movie.movie_id = finance.movie_id
where profit_pct>500;