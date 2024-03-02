-- escreva uma consulta SQL para listar os nomes de todas as pessoas que estrelaram um filme no qual Kevin Bacon também estrelou.

SELECT DISTINCT people.name
FROM people
INNER JOIN stars AS s1 ON people.id = s1.person_id
INNER JOIN stars AS s2 ON s1.movie_id = s2.movie_id AND s2.person_id = (
    SELECT id FROM people WHERE name = 'Kevin Bacon'
);
