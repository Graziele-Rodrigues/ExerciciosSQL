# ExerciciosSQL
Conteúdo e exercícios módulo sobre SQL do curso CC50

## leitura csv com python

O código abaixo cria um dicionário a partir de cada linha, permitindo acessar cada coluna pelo seu nome

```
import csv

with open("Favorite TV Shows - Form Responses 1.csv", "r") as file:
   reader = csv.DictReader(file)

   for row in reader:
      print(row["title"]) 
```
capturando apenas títulos exclusivos

```
import csv

titles = set()

with open("Favorite TV Shows - Form Responses 1.csv", "r") as file:
   reader = csv.DictReader(file)

   for row in reader:
      titles.add(row["title"])

   for title in titles:
      print(title)
```

Já o programa abaixo pesquisa um título e relatar sua popularidade:
```
import csv

title = input("Title: ").strip().upper()

with open("Favorite TV Shows - Form Responses 1.csv", "r") as file:
   reader = csv.DictReader(file)

   counter = 0
   for row in reader:
      if row["title"].strip().upper() == title:
         counter += 1

print(counter)

```

## Bancos de dados relacionais

Bancos de dados relacionais são programas que armazenam dados, basicamente em arquivos, mas com estruturas de dados adicionais que nos permitem pesquisar e armazenar dados com mais eficiência.Com outra linguagem de programação, SQL, Structured Query Language, podemos interagir com muitos bancos de dados relacionais e suas tabelas, como planilhas, que armazenam dados.

No SQL, os comandos para realizar cada uma dessas operações são:

1. CREATE: Por exemplo, para criar uma nova tabela, podemos usar: CREATE TABLE table (column type, ...); onde table é o nome de nossa nova tabela e column é o nome de uma coluna, seguido por seu tipo.
2. INSERT
3. SELECT: SELECT column FROM table;
4. UPDATE
5. DELETE

O SQL oferece suporte a muitas funções que podemos usar para contar e resumir dados:

1. AVG
2. COUNT
3. DISTINCT , para obter valores distintos sem duplicatas
4. LOWER
5. MAX
6. MIN
7. UPPER

Também podemos adicionar mais cláusulas ou frases que modificam nossa consulta:

1. WHERE: resultados correspondentes em uma condição estrita
2. LIKE: resultados correspondentes em uma condição menos estrita
3. ORDER BY: resultados de ordenação de alguma forma
4. LIMIT: limitando o número de resultados
5. GROUP BY: agrupando resultados de alguma forma

Exemplo 1: filtrar as linhas por títulos

```
SELECT title FROM shows WHERE title = "The Office";

```

Exemplo 2: filtrar as linhas onde titulo tenha office

```
SELECT title FROM shows WHERE title LIKE "%Office%"
```

Exemplo 3: ordene por titulo

```
SELECT DISTINCT(UPPER(title)) FROM shows ORDER BY UPPER(title);
```
Exemplo 4: agrupar os mesmos títulos e contar quantas vezes eles aparecem

```
SELECT UPPER(title), COUNT(title) FROM shows GROUP BY UPPER(title);
```

Exemplo 5: inserir dados em uma tabela manualmente com INSERT INTO table (column, ...) VALUES(value, ...); 

```
INSERT INTO shows (Timestamp, title, genres) VALUES("now", "The Muppet Show", "Comedy, Musical");
```

Exemplo 6: remover linha

```
DELETE FROM shows WHERE title LIKE "Friends"
```

O SQL também tem seus próprios tipos de dados para otimizar a quantidade de espaço usado para armazenar dados, que precisaremos especificar ao criar uma tabela manualmente:

1. BLOB, para "Objeto binário grande", dados binários brutos que podem representar arquivos
2. INTEGER
3. NUMERIC, como um número, mas não exatamente um número, como uma data ou hora
4. REAL, para valores de ponto flutuante
5. TEXT, como strings

As colunas também podem ter atributos adicionais:

1. NOT NULL, que especifica que deve haver algum valor
2. UNIQUE, o que significa que o valor dessa coluna deve ser único para cada linha da tabela
3. PRIMARY KEY, como a coluna id acima, que será usada para identificar de forma única cada linha
4. FOREIGN KEY, como a coluna show_id acima que se refere a uma coluna em alguma outra tabela

