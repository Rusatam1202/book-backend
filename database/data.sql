-- CREATE EXTENSION pgcrypto;


-- CREATE TABLE users(
--     id serial primary key,
--     first_name varchar(50) not null,
--     last_name varchar(50) not null,
--     phone varchar(12) not null,
--     email varchar(50) not null,
--     password varchar(200) not null,
--     image varchar(365), 
--     date timestamptz default current_timestamp
-- );
-- CREATE TABLE genre(
--     id serial primary key,
--     name varchar(50) not null ,
--     date timestamptz default current_timestamp
-- );



-- CREATE TABLE author(
--     id serial primary key,
--     first_name varchar(50) not null,
--     last_name varchar(50) not null,
--     date_of_birth varchar(20) not null,
--     date_of_death varchar(20), 
--     country varchar(50) not null,
--     bio varchar not null,
--     image varchar(365) not null, 
--     genre_id int not null references genre(id),
--     date timestamptz default current_timestamp
-- );


-- CREATE TABLE book(
--     id serial primary key,
--     title varchar(50) not null,
--     page varchar(5) not null,
--     year varchar(5) not null,
--     price varchar(50) not null,
--     genre_id int not null references genre(id),
--     author_id int not null references author(id),
--     description varchar(800) not null,
--     image varchar(365) not null, 
--     date timestamptz default current_timestamp
-- );

-- ==================

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE users(
    id serial PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    phone varchar(12) NOT NULL,
    email varchar(50) NOT NULL,
    password varchar(200) NOT NULL,
    image varchar(365), 
    date timestamptz DEFAULT current_timestamp
);

CREATE TABLE genre(
    id serial PRIMARY KEY,
    name varchar(50) NOT NULL,
    date timestamptz DEFAULT current_timestamp
);

CREATE TABLE author(
    id serial PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    date_of_birth varchar(20) NOT NULL,
    date_of_death varchar(20), 
    country varchar(50) NOT NULL,
    bio varchar NOT NULL,
    image varchar(365) NOT NULL, 
    genre_id int NOT NULL REFERENCES genre(id),
    date timestamptz DEFAULT current_timestamp
);

CREATE TABLE book(
    id serial PRIMARY KEY,
    title varchar(50) NOT NULL,
    page varchar(5) NOT NULL,
    year varchar(5) NOT NULL,
    price varchar(50) NOT NULL,
    genre_id int NOT NULL REFERENCES genre(id),
    author_id int NOT NULL REFERENCES author(id),
    description varchar(800) NOT NULL,
    image varchar(365) NOT NULL, 
    date timestamptz DEFAULT current_timestamp
);