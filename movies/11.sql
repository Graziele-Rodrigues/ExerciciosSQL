-- escreva uma consulta SQL para listar os títulos de todos os filmes em que Johnny Depp e Helena Bonham Carter estrelaram juntos.

SELECT movies.title
FROM movies
INNER JOIN stars AS stars_johnny ON movies.id = stars_johnny.movie_id
INNER JOIN stars AS stars_helena ON movies.id = stars_helena.movie_id
INNER JOIN people AS johnny ON stars_johnny.person_id = johnny.id
INNER JOIN people AS helena ON stars_helena.person_id = helena.id
WHERE johnny.name = 'Johnny Depp' AND helena.name = 'Helena Bonham Carter';