-- select actor_id, actor_name and total number of movies they acted in
use moviesdb;
-- explain analyze
-- select a.actor_id, a.name, count(movie_id) as num_movie from movie_actor ma join actors a on a.actor_id = ma.actor_id group by ma.actor_id order by num_movie desc ;

-- *same thing can be done by corelated subquery*
-- explain analyze
-- select actor_id,
-- name,
-- (select count(*) from movie_actor ma where ma.actor_id = a.actor_id ) as num_movie 
-- from actors a order by num_movie desc;


-- ------------------EXERCISE-------------------
-- Write SQL queries for the following,
-- 1. Select all the movies with minimum and maximum release_year. Note that there
-- can be more than one movie in min and a max year hence output rows can be more than 2
select title, 
release_year from movies
where release_year in ((select  min(release_year)   as min_year from movies) , (select max(release_year) as max_year  from movies)) ;
-- 2. Select all the rows from the movies table whose imdb_rating is higher than the average rating
   --  select title, avg(imdb_rating) as avg_rating from movies group by(imdb_rating) having imdb_rating > avg_rating;
    select * from movies where imdb_rating > (select avg(imdb_rating) from movies);