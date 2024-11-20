use moviesdb;
-- select actors who acted in any of these movies (movie id : 101, 110, 121);
-- select * from movies where movie_id in (101,110,121);
-- select * from movie_actor;

-- select * from actors
-- where actor_id = any(select actor_id from movie_actor where movie_id in (101,110,121));

-- select all movies whose rating is greater than any of the marvel movies rating
select * from movies where imdb_rating > 
any(select (imdb_rating) from movies where studio="marvel studios");
-- or
-- select * from movies where imdb_rating > 
-- (select min(imdb_rating) from movies where studio="marvel studios");

-- * select all movies whose rating is greater than *all* of the marvel movies rating
select * from movies where imdb_rating > 
all(select imdb_rating from movies where studio="marvel studios");

-- OR
select * from movies where imdb_rating >
(select max(imdb_rating) from movies where studio = "marvel studios");