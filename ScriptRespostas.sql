SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'de volta para o futuro'
ORDER BY Ano

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

SELECT Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor