-- database for soccer league

DROP DATABASE IF EXISTS soccer_db;

CREATE DATABASE soccer_db;

\c soccer_db

CREATE TABLE teams(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    team_id INT REFERENCES teams
);

CREATE TABLE refferees(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE matches(
    id SERIAL PRIMARY KEY,
    date DATE,
    team1_id INT REFERENCES teams,
    team2_id INT REFERENCES teams,
    winning_team_id INT REFERENCES teams,
    ref_id INT REFERENCES refferees
);

CREATE TABLE goals(
    id SERIAL PRIMARY KEY,
    match_id INT REFERENCES matches,
    player_id INT REFERENCES players
);

-- find start and end date by first and last game of season
-- find rankings by teams ratio of games played to amount of times won