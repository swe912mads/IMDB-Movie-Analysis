create table imdb_cleaned;
show tables;
drop table movies;

#Top 5 highest-rated movies
SELECT movie_title, imdb_score
FROM imdb_cleaned
ORDER BY imdb_score DESC
LIMIT 5;

#Average IMDB score per director
SELECT director_name, AVG(imdb_score) AS avg_score
FROM imdb_cleaned
GROUP BY director_name
ORDER BY avg_score DESC;

#Movies with gross > 100M
SELECT movie_title, director_name, gross
FROM imdb_cleaned
WHERE gross > 100000000
ORDER BY gross DESC;

#Count movies per genre
SELECT genres, COUNT(*) AS movie_count
FROM imdb_cleaned
GROUP BY genres
ORDER BY movie_count DESC;


#Director with most movies
SELECT director_name, COUNT(*) AS movie_count
FROM imdb_cleaned
GROUP BY director_name
ORDER BY movie_count DESC
LIMIT 1;
