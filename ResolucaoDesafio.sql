-- Passo 1: Nome e ano dos Filmes - ok!
SELECT Nome, Ano FROM Filmes

-- Passo 2: Nome, ano e dura��o dos Filmes em ordem crescente - ok!
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

-- Passo 3: Filme 'De Volta para o Futuro', nome, ano e dura��o - ok!
SELECT Nome, Ano, Duracao FROM Filmes WHERE Id = 28

-- Passo 4: Filmes lan�ados em 1997 - ok!
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- Passo 5: Filmes lan�ados ap�s o ano de 2000 - ok!
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

-- Passo 8: Buscar os Atores do g�nero masculino
SELECT * FROM Atores WHERE Genero = 'M'

-- Passo 9: Buscar Atores do gen�ro feminino ordenados pelo Primeiro Nome - ok!
SELECT * FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Passo 10: Buscar o nome do filme e o g�nero - ok!
SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	FilmesGenero 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id

-- Passo 11: Buscar o nome do filme e o g�nero do tipo 'Mist�rio' - ok!
SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	FilmesGenero 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
WHERE Generos.Genero = 'Mist�rio'

-- Passo 12: Buscar Nome do filme, Primero e �ltimo Nome dos Atores e seu Papel - ok!
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM
	ElencoFilme
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
