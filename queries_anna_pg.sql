-- Selecciona las victorias máximas y mínimas para cada equipo diferente en la tabla de seasons.
SELECT MIN(W) AS 'Least Wins', MAX(W) AS 'Most wins', team_id AS 'Team ID'
FROM stats
GROUP BY team_id;

-- Obtén los primeros 10 resultados de la tabla de teams
SELECT team AS '10 first' 
FROM teams 
LIMIT 10;

-- Selecciona todos los datos de los equipos que tengan entre 20 y 30 victorias de la tabla stats

SELECT * 
FROM stats
WHERE (W >= 20 AND W <= 30);

-- Realiza un cuenteo de número total de equipos que existende la tabla teams.

SELECT COUNT(team) AS 'Team Count'
FROM teams;

-- Calcula la media de todos los puntos conseguidos de la tabla stats

SELECT AVG(PTS) AS 'Average Points Scored'
FROM stats;

-- Selecciona el máximo de victorias, máximo de puntos y la diferencia entre el máximo de puntos con la media de puntos como diferencia_media de la tabla stats
SELECT MAX(W), MAX(PTS), MAX(PTS) - AVG(PTS) AS 'diferencia_media' 
FROM stats;




