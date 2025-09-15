-- Create 'players' table
CREATE TABLE players (
    player_id INT PRIMARY KEY,
    name VARCHAR(50),
    position VARCHAR(30),
    age INT,
    team VARCHAR(50)
);

-- Create 'stats' table
CREATE TABLE stats (
    stat_id INT PRIMARY KEY AUTO_INCREMENT,
    player_id INT,
    games_played INT,
    touchdowns INT,
    yards INT,
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);
