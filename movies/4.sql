-- escreva uma consulta SQL para determinar o número de filmes com uma classificação IMDb de 10,0.

SELECT COUNT(*) AS numero_de_filmes_com_10_0_IMDb
FROM ratings
WHERE rating = 10.0;
