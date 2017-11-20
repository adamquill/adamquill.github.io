use movielens;
show tables;
SELECT genre_id, count(genre_id) as cnt from genres_movies group by genre_id order by cnt desc;
select g.name,count(m.genre_id) as cnt from genres_movies m join genres g on(m.genre_id=g.id) group by genre_id order by cnt desc limit 1;

select * from ratings r join genres_movies g on r.movie_id=g.movie_id join users u on r.user_id=u.id where g.id=11 limit 10;
select o.name,count(u.occupation_id) as cnt from ratings r join genres_movies g on r.movie_id=g.movie_id join users u on r.user_id=u.id join occupations o on u.occupation_id=o.id where g.id=11 group by u.occupation_id order by cnt desc; 

select o.name, avg(r.rating) as cnt from ratings r join genres_movies g on r.movie_id=g.movie_id join users u on r.user_id=u.id join occupations o on u.occupation_id=o.id where g.id=11 group by u.occupation_id order by cnt desc ;
