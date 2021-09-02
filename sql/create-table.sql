-- Creating table for storying users
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    user_id SERIAL PRIMARY KEY,
    firstname VARCHAR(150),
    lastname VARCHAR(150),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(250)
);

-- Creating table for storying schedules
DROP TABLE IF EXISTS schedules;

CREATE TABLE IF NOT EXISTS schedules (
    schedule_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    day SMALLINT CHECK (day BETWEEN 1 AND 7),
    start_at TIME,
    end_at TIME
);