-- escreva uma consulta SQL para determinar a avaliação média de todos os filmes lançados em 2012.
SELECT AVG(ratings.rating) AS avaliacao_media
FROM movies
INNER JOIN ratings ON movies.id = ratings.movie_id
WHERE movies.year = '2012';
