DROP DATABASE IF EXISTS bank;
CREATE DATABASE bank;
USE bank;

CREATE TABLE role(
    id VARCHAR(255) NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE status(
    id VARCHAR(255) NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE user(
    id VARCHAR(255) NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role_id VARCHAR(255) NOT NULL REFERENCES role(id)
);

CREATE TABLE account(
    id VARCHAR(255) NOT NULL PRIMARY KEY,
    user_id VARCHAR(255) NOT NULL REFERENCES user(id),
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    status_id VARCHAR(255) NOT NULL REFERENCES role(id)
);

CREATE TABLE access(
    id VARCHAR(255) NOT NULL PRIMARY KEY,
    role_id VARCHAR(255) NOT NULL REFERENCES role(id),
    feature VARCHAR(255) NOT NULL,
    allowed BOOLEAN
);
