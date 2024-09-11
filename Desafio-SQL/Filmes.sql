USE Filmes

--------1---------------
SELECT 
Nome,
Ano FROM Filmes


--------2---------------
SELECT 
Nome,
Ano FROM Filmes
ORDER BY Ano


--------3---------------
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'


--------4---------------
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Ano = 1997


--------5---------------
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Ano > 2000


--------6---------------
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao


--------7---------------
SELECT 
    Ano,
    COUNT(*) AS Quantidade
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
    Quantidade DESC;


--------8---------------
SELECT 
    Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'
    

--------9---------------
SELECT 
    Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


--------10--------------
SELECT 
    f.Nome AS Filme,
	g.Genero
FROM
	[Filmes].[dbo].[Filmes] f
JOIN
	[Filmes].[dbo].[FilmesGenero] fg ON f.Id = fg.IdFilme
JOIN
	[Filmes].[dbo].[Generos] g ON fg.IdGenero = g.Id


--------11--------------
SELECT 
    f.Nome AS Filme,
	g.Genero
FROM
	[Filmes].[dbo].[Filmes] f
JOIN
	[Filmes].[dbo].[FilmesGenero] fg ON f.Id = fg.IdFilme
JOIN
	[Filmes].[dbo].[Generos] g ON fg.IdGenero = g.Id
WHERE
	g.Genero = 'Mistério'


--------12--------------
SELECT 
    f.Nome AS Filme,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM
	[Filmes].[dbo].[Filmes] f
JOIN
	[Filmes].[dbo].[ElencoFilme] ef ON f.Id = ef.IdFilme
JOIN
	[Filmes].[dbo].[Atores] a ON ef.IdAtor = a.Id

