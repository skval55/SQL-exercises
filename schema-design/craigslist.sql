-- database for craigslist replica (small scale)

DROP DATABASE IF EXISTS craigslist_db;

CREATE DATABASE craigslist_db;

\c craigslist_db

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    category TEXT NOT NULL
);

CREATE TABLE regions(
    id SERIAL PRIMARY KEY,
    region TEXT NOT NULL
);

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    perferred_region_id INT REFERENCES regions,
    phone_number INT
);

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    title VARCHAR(15) NOT NULL,
    details TEXT,
    user_id INT REFERENCES users,
    location TEXT,
    region_id INT REFERENCES regions,
    category_id INT REFERENCES categories
);