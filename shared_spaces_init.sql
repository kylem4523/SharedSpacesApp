CREATE TABLE if not exists user_accounts(
	id int(1) not null auto_increment,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	email varchar(255) not null,
	password varchar(40) not null,
	phone_number int(10) not null,
	facebook_profile varchar(255),
	twitter_handle varchar(255),
	instagram varchar(255),
	group_id int(1),
	PRIMARY KEY(id)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

CREATE TABLE if not exists personal_debts(
	id int(1) not null auto_increment,
	amount float not null,
	lender int(1) not null,
	borrower int(1) not null,
	PRIMARY KEY (id)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

CREATE TABLE if not exists group_debt(
	id int(1) not null auto_increment,
	debt_type varchar(255) not null,
	amount float not null,
	PRIMARY KEY (id)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

CREATE TABLE if not exists groups(
	id int(1) not null auto_increment,
	group_name varchar(255) not null,
	ground_rules varchar(),
	group_debt int(1),
	PRIMARY KEY(id)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

CREATE TABLE if not exists rent(
	id int(1) not null auto_increment,
	rent_ammount float not null,
	rent_paid boolean not null,
	user_id int(1) not null,
	group_id int(1) not null,
	PRIMARY KEY(id)
) ENGINE=MYISAM;

CREATE TABLE if not exists chores(
	id int(1) not null auto_increment,
	chore varchar(255) not null,
	due_date date,
	chore_complete boolean not null,
	user_id int(1) not null,
	group_id int(1) not null,
	PRIMARY KEY(id)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;

CREATE TABLE if not exists groceries(
	id int(1) not null auto_increment,
	amount_due float not null,
	paid_status boolean,
	user_id int(1) not null,
	group_id int(1) not null,
	PRIMARY KEY(id)
) ENGINE=MYISAM;