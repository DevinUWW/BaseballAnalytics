-- Create the database
CREATE DATABASE BaseballAnalytics;

-- Use the database
USE BaseballAnalytics;

-- Create tables for teams, offensive players, and defensive players
CREATE TABLE Teams (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(255)
);

CREATE TABLE OffensivePlayers (
    PlayerID INT PRIMARY KEY,
    PlayerName VARCHAR(255),
    Position ENUM('Infielder', 'Outfielder', 'Pitcher', 'Catcher'),
    BattingAverage FLOAT,
    HomeRuns INT
);

CREATE TABLE DefensivePlayers (
    PlayerID INT PRIMARY KEY,
    PlayerName VARCHAR(255),
    Position ENUM('Infielder', 'Outfielder', 'Pitcher', 'Catcher'),
    FieldingPercentage FLOAT,
    Assists INT
);

-- Create a view for offensive statistics
CREATE VIEW OffensiveStatistics AS
SELECT PlayerName, Position, BattingAverage, HomeRuns
FROM OffensivePlayers;

-- Create a view for defensive statistics
CREATE VIEW DefensiveStatistics AS
SELECT PlayerName, Position, FieldingPercentage, Assists
FROM DefensivePlayers;

-- Insert sample data for a team
INSERT INTO Teams (TeamID, TeamName) VALUES (1, 'Sample Team');

-- Insert sample data for 10 infielders
INSERT INTO OffensivePlayers (PlayerID, PlayerName, Position, BattingAverage, HomeRuns)
VALUES
    (1, 'Infielder1', 'Infielder', 0.320, 15),
    (2, 'Infielder2', 'Infielder', 0.310, 10),
    (3, 'Infielder3', 'Infielder', 0.300, 12),
    (4, 'Infielder4', 'Infielder', 0.290, 8),
    (5, 'Infielder5', 'Infielder', 0.330, 17),
    (6, 'Infielder6', 'Infielder', 0.315, 11),
    (7, 'Infielder7', 'Infielder', 0.325, 14),
    (8, 'Infielder8', 'Infielder', 0.295, 9),
    (9, 'Infielder9', 'Infielder', 0.310, 12),
    (10, 'Infielder10', 'Infielder', 0.330, 18);

-- Insert sample data for 10 outfielders
INSERT INTO OffensivePlayers (PlayerID, PlayerName, Position, BattingAverage, HomeRuns)
VALUES
    (11, 'Outfielder1', 'Outfielder', 0.310, 12),
    (12, 'Outfielder2', 'Outfielder', 0.320, 15),
    (13, 'Outfielder3', 'Outfielder', 0.310, 14),
    (14, 'Outfielder4', 'Outfielder', 0.305, 11),
    (15, 'Outfielder5', 'Outfielder', 0.330, 18),
    (16, 'Outfielder6', 'Outfielder', 0.315, 13),
    (17, 'Outfielder7', 'Outfielder', 0.310, 12),
    (18, 'Outfielder8', 'Outfielder', 0.300, 10),
    (19, 'Outfielder9', 'Outfielder', 0.325, 16),
    (20, 'Outfielder10', 'Outfielder', 0.295, 9);

-- Insert sample data for 5 pitchers
INSERT INTO DefensivePlayers (PlayerID, PlayerName, Position, FieldingPercentage, Assists)
VALUES
    (21, 'Pitcher1', 'Pitcher', 0.980, 50),
    (22, 'Pitcher2', 'Pitcher', 0.970, 48),
    (23, 'Pitcher3', 'Pitcher', 0.990, 52),
    (24, 'Pitcher4', 'Pitcher', 0.975, 47),
    (25, 'Pitcher5', 'Pitcher', 0.985, 49);

-- Insert sample data for 2 catchers
INSERT INTO DefensivePlayers (PlayerID, PlayerName, Position, FieldingPercentage, Assists)
VALUES
    (26, 'Catcher1', 'Catcher', 0.980, 45),
    (27, 'Catcher2', 'Catcher', 0.975, 42);
