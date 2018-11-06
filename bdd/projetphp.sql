CREATE DATABASE banque CHARACTER SET 'utf8';

USE banque;

CREATE TABLE user (
	id INT unsigned NOT NULL auto_increment,
	mail VARCHAR(100) UNIQUE NOT NULL, 
	password VARCHAR(100) NOT NULL,
	PRIMARY KEY(id)
	)
ENGINE = INNODB;

CREATE TABLE account (
	id INT unsigned NOT NULL auto_increment,
	id_user INT unsigned NOT NULL,
	name_account VARCHAR(50) NOT NULL,
	type_account ENUM('courant','epargne','joint') NOT NULL,
	provision FLOAT(12,2) DEFAULT 0,
	currency ENUM('USD','EUR') NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (id_user) REFERENCES user(id) ON UPDATE CASCADE ON DELETE CASCADE,
	)
ENGINE = INNODB;

CREATE TABLE operation (
	id INT UNSIGNED NOT NULL auto_increment,
	id_account INT unsigned NOT NULL,
	id_category INT unsigned NOT NULL,
	name_operation VARCHAR(50) NOT NULL,
	amount FLOAT(12,2) NOT NULL,
	date_operation datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id),
	FOREIGN KEY (id_account) REFERENCES account(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (id_category) REFERENCES category(id) ON UPDATE CASCADE ON DELETE CASCADE,
	)
ENGINE = INNODB;
	
CREATE TABLE category (
	id INT unsigned NOT NULL auto_increment,
	name_category VARCHAR(50) NOT NULL,
	transaction_type ENUM('debit', 'credit') NOT NULL,
	PRIMARY KEY(id),
	)
ENGINE= INNODB;

