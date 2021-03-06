-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE TABLE players(
   id serial primary key,
   name text
);

CREATE TABLE matches(
    id serial primary key,
    player_id integer references players(id) not null,
    against integer references players(id) not null,
    result text not null
);