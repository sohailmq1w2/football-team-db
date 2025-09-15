-- 1. Get all players older than 26
SELECT * FROM players WHERE age > 26;

-- 2. Get total touchdowns for the team
SELECT SUM(s.touchdowns) AS total_touchdowns
FROM stats s
JOIN players p ON s.player_id = p.player_id
WHERE p.team = 'New York Knights';

-- 3. List players ordered by yards descending
SELECT p.name, s.yards
FROM players p
JOIN stats s ON p.player_id = s.player_id
ORDER BY s.yards DESC;

-- 4. Get average age of players by position
SELECT position, AVG(age) AS avg_age
FROM players
GROUP BY position;

-- 5. Find players who didn’t score any touchdowns
SELECT p.name
FROM players p
JOIN stats s ON p.player_id = s.player_id
WHERE s.touchdowns = 0;
