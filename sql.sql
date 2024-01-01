select * from countries;

select * from countries;

select * from countries;

CREATE TABLE flights (
    id SERIAL PRIMARY KEY,
    airline_id BIGINT
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    role_id INT UNIQUE NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(id)
);
CREATE TABLE roles (
    id SERIAL PRIMARY KEY,
    role_name VARCHAR(255) UNIQUE NOT NULL
);
-- insert roles -- customer
-- insert roles -- airline
-- insert roles -- admin

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    address VARCHAR(100),
    ph_number VARCHAR(20) NOT NULL,
    credit_card_no VARCHAR(30) UNIQUE NOT NULL,
    user_id INT UNIQUE not null,
    FOREIGN KEY (user_id) REFERENCES users(id)
)

-- 1. roles
-- 2. countries
-- 3. users
-- 4. customers
-- 5. airlines
-- 6. flights
-- 7. tickets
-- 8. passengers ?: passport
-- UNIQUE (ph_number, credit_card_no)

SELECT first_name, last_name
FROM customers
INNER JOIN users ON custoemrs.user_id =
                    users.id
where first_name like 'daniel';







