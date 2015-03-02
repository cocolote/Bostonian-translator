DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS languages;

CREATE TABLE posts (
  id serial PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  url VARCHAR(255) UNIQUE,
  description VARCHAR(255) NOT NULL,
  language_id int REFERENCES languages(Id) NOT NULL
);

CREATE TABLE languages (
  id serial PRIMARY KEY,
  language VARCHAR(50) NOT NULL
);

INSERT INTO language (language) VALUES ('Ruby');
INSERT INTO language (language) VALUES ('HTML');
INSERT INTO language (language) VALUES ('CSS');
INSERT INTO language (language) VALUES ('JavaScript');
INSERT INTO language (language) VALUES ('jQuery');
