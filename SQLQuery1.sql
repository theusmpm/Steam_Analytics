USE SteamAnalytics;

 ====================================================================

INSERT INTO Jogos
(Game, Lancamento, Desenvolvedor, Compra, Preco, HorasJogadas,
 SinglePlayer, MultiPlayer, Cooperativo, Campanha, Competitivo)
VALUES
('BOMBANANA!', NULL, 'Ozolio', NULL, 0.00, 0.87,
 'NÃO', 'SIM', 'SIM', 'NÃO', 'NÃO');

 ====================================================================

SELECT * FROM Jogos
SELECT * FROM JogoGenero;
SELECT * FROM Generos;

====================================================================

UPDATE Jogos
SET Compra = '2025-12-27'
WHERE Game = 'Hollow Knight';

====================================================================

INSERT INTO JogoGenero (ID_Jogo, ID_Genero)
VALUES
(29, 1),
(29, 7),
(29, 8);

====================================================================

SELECT
	J.ID,
	J.GAME,
	G.GENERO
FROM JOGOS J
INNER JOIN JogoGenero JG
	ON J.ID = JG.ID_Jogo
INNER JOIN Generos G
	ON G.ID = JG.ID_Genero
ORDER BY J.ID, G.ID;

====================================================================

USE SteamAnalytics;

SELECT
    ID,
    Game,
    Lancamento,
    Desenvolvedor,
    Compra,
    Preco,
    HorasJogadas
FROM dbo.Jogos
ORDER BY ID;

====================================================================

SELECT
    J.Game,
    G.Genero
FROM Jogos J
INNER JOIN JogoGenero JG
    ON J.ID = JG.ID_Jogo
INNER JOIN Generos G
    ON G.ID = JG.ID_Genero
ORDER BY J.Game;