CREATE DATABASE membership_management;

CREATE TABLE members (
    member_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    membership_level VARCHAR(50) NOT NULL,
    date_joined DATE NOT NULL
);

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    member_id INTEGER REFERENCES members(member_id),
    payment_date DATE NOT NULL,
    payment_amount DECIMAL(10,2) NOT NULL
);

CREATE TABLE membership_levels (
    level_id SERIAL PRIMARY KEY,
    level_name VARCHAR(50) NOT NULL,
    level_description VARCHAR(255) NOT NULL,
    cost DECIMAL(10,2) NOT NULL
);