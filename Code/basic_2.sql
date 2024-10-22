use moviesdb;
-- 1. Print all movies in the order of their release year (latest first)
SELECT * from movies ORDER BY release_year DESC;
-- 2. All movies released in the year 2022
SELECT * FROM movies where release_year = 2022;
-- 3. Now all the movies released after 2020
SELECT * FROM movies where release_year > 2022;
-- 4. All movies after the year 2020 that have more than 8 rating
SELECT * FROM movies where release_year = 2020 and  imdb_rating > 8;
-- 5. Select all movies that are by Marvel studios and Hombale Films
SELECT * FROM movies WHERE studio = 'Marvel studios' and studio ='Hombale Films'; 
-- 6. Select all THOR movies by their release year
SELECT * FROM movies WHERE title like '%thor%' ORDER BY release_year DESC;
-- 7. Select all movies that are not from Marvel Studios
SELECT * FROM movies WHERE studio <> 'Marvel studios';
