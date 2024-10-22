-- *Exercise - Summary analytics (MIN, MAX, AVG, GROUP BY)*
USE moviesdb;
-- 1. How many movies were released between 2015 and 2022
select COUNT(*) as "2015-2022 Movies" FROM movies WHERE release_year BETWEEN 2015 and 2022;
-- 2. Print the max and min movie release year
SELECT max(release_year), min(release_year) from movies;
-- 3. Print a year and how many movies were released in that year starting with the latest year
select release_year, count(movie_id) as Num_Movie from movies group by release_year order by release_year desc;