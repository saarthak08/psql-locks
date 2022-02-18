\c postgres;
DROP DATABASE IF EXISTS psql_locks;
CREATE DATABASE psql_locks;

\c psql_locks;

create type transaction_type as enum('credit','debit');

CREATE TABLE line_items (
	id serial PRIMARY KEY,
	ledger_id INT NOT NULL,
	type transaction_type NOT NULL, 
	value INT NOT NULL,
	balance BIGINT,
	updated_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);