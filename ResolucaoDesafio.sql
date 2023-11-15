-- Passo 1: Nome e ano dos Filmes - ok!
SELECT Nome, Ano FROM Filmes

-- Passo 2: Nome, ano e duração dos Filmes em ordem crescente - ok!
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

-- Passo 3: Filme 'De Volta para o Futuro', nome, ano e duração - ok!
SELECT Nome, Ano, Duracao FROM Filmes WHERE Id = 28

-- Passo 4: Filmes lançados em 1997 - ok!
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- Passo 5: Filmes lançados após o ano de 2000 - ok!
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- Passo 6: Filmes com duracao entre 100 e 150 em ordem crescente: ok!
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Passo 7: Quantidade filmes p/ ano, agrupar p/ ano e ordernar p quantidade ordem decrescente - ok!
SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Passo 8: Buscar os Atores do gênero masculino
SELECT * FROM Atores WHERE Genero = 'M'

-- Passo 9: Buscar Atores do genêro feminino ordenados pelo Primeiro Nome - ok!
SELECT * FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Passo 10: Buscar o nome do filme e o gênero - ok!
SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	FilmesGenero 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id

-- Passo 11: Buscar o nome do filme e o gênero do tipo 'Mistério' - ok!
SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	FilmesGenero 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
WHERE Generos.Genero = 'Mistério'

-- Passo 12: Buscar Nome do filme, Primero e Último Nome dos Atores e seu Papel - ok!
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM
	ElencoFilme
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
