DROP DATABASE IF EXISTS colorings;

CREATE DATABASE colorings;

\c colorings;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS colorings;

CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "username" text UNIQUE NOT NULL,
  "password" text NOT NULL
);

CREATE TABLE "colorings" (
  "id" SERIAL PRIMARY KEY,
  "coloring" xml,
  "user_id" int
);

ALTER TABLE "colorings" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");