-- Write SQL queries for the following,
use moviesdb;
-- 1. Show all the movies with their language names
select * from movies join languages using(language_id);
-- 2. Show all Telugu movie names (assuming you don't know the language id for Telugu)
select title,name from movies join languages using(language_id) where name="Telugu";
-- 3. Show the language and number of movies released in that language
select name, count(title) as Num_Movies from movies join languages using(language_id) group by name;