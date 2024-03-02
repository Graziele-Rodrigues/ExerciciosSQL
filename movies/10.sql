-- escreva uma consulta SQL para listar os nomes de todas as pessoas que dirigiram um filme que recebeu uma classificação de pelo menos 9,0.

SELECT people.name
FROM people
INNER JOIN directors on people.id = directors.person_id
INNER JOIN movies ON movies.id = directors.movie_id
INNER JOIN ratings ON movies.id = ratings.movie_id
WHERE ratings.rating >= 9.0