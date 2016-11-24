-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


DROP DATABASE IF EXISTS tournament;

CREATE DATABASE tournament;
\c tournament

CREATE TABLE players (	player_id SERIAL PRIMARY KEY,
						name TEXT);

CREATE TABLE matches (	match SERIAL PRIMARY KEY,
						winner INTEGER REFERENCES players(player_id) NOT NULL,
						loser INTEGER REFERENCES players(player_id) NOT NULL);


CREATE VIEW standings AS
SELECT players.player_id, players.name,
(SELECT count(matches.winner) from matches WHERE players.player_id = matches.winner) AS wins,
(SELECT count(*) from matches where players.player_id = matches.winner or players.player_id = matches.loser) AS matches
FROM players
ORDER by wins DESC, matches DESC;