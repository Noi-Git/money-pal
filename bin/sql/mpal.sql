CREATE TABLE users(
	user_id  SERIAL PRIMARY KEY,
	user_firstname VARCHAR(50),
	user_middlename VARCHAR(25),
	user_lastname VARCHAR(50),
	user_email VARCHAR(100),
	user_address VARCHAR(25),
	user_phonenumber INT,
	user_date_created TIMESTAMP
);

CREATE TABLE email(
	email_id SERIAL PRIMARY KEY,
	email_username VARCHAR(255) UNIQUE,
	email VARCHAR(255),
	email_verified BOOLEAN,
	email_last_login DATE,
	email_date_created TIMESTAMP
);

CREATE TABLE addresses(
	address_id SERIAL PRIMARY KEY,
	address_number VARCHAR(25),
	address_apt VARCHAR(25),
	address_street VARCHAR(50),
	address_city VARCHAR(50),
	address_state VARCHAR(50),
	address_zipcode INT,
	address_date_created TIMESTAMP
);

CREATE TABLE phonenumbers(
	phone_id SERIAL PRIMARY KEY,
	phone_type VARCHAR(50),
	phone_area_code INT,
	phone_number INT,
	phone_date_created TIMESTAMP
);

CREATE TABLE incomes(
	income_id SERIAL PRIMARY KEY,
	income_type VARCHAR(255),
	income_amount INT,
	income_start DATE,
	income_end DATE,
	income_date_created TIMESTAMP
);
CREATE TABLE saving(
	saving_id SERIAL PRIMARY KEY,
	saving_type VARCHAR(255),
	saving_amount INT,
	saving_date_created TIMESTAMP
);

CREATE TABLE expenses(
	expenses_id SERIAL PRIMARY KEY,
	expenses_type VARCHAR(255),
	expenses_amount VARCHAR(255),
	expenses_duedate DATE,
	expenses_pay BOOLEAN,
	expenses_date_created TIMESTAMP
);

INSERT INTO incomes(income_type, income_amount, income_start, income_end)
VALUES
('work at restaurant', 500, '2019-10-01', '2019-10-15'),
('work at coffee shop', 200, '2019-10-01', '2019-10-07'),
('work at the office', 1500, '2019-10-01', '2019-10-31'),