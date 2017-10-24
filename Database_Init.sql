CREATE TABLE if not exists user_accounts(
	id int(1) not null auto_increment,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	email varchar(255) not null,
	password varchar(40) not null,
	group_id int(1),
	PRIMARY KEY(id)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

CREATE TABLE if not exists groups(
	id int(1) not null auto_increment,
	group_name varchar(255) not null,
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
