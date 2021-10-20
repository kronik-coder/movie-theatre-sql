CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(150)
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    price INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    popcorn INTEGER,
    drinks INTEGER,
    snacks INTEGER,
    customer_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);