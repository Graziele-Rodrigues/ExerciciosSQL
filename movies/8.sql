-- escreva uma consulta SQL para listar os nomes de todas as pessoas que estrelaram Toy Story.

SELECT people.name
FROM people
INNER JOIN stars ON people.id = stars.person_id
INNER JOIN movies ON movies.id = stars.movie_id
WHERE movies.title = 'Toy Story';
