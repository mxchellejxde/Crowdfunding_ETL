--drop contacts if it exists
drop table if exists contacts;
--drop category if it exists
drop table if exists category;
--drop subcategory if it exists
drop table if exists subcategory;
--drop campaign if it exists
drop table if exists campaign;

--create category table
CREATE TABLE category (
    category_id varchar(255) NOT NULL PRIMARY KEY,
    category varchar(255) NOT NULL
);

--create subcategory table
CREATE TABLE subcategory (
    subcategory_id varchar(255) NOT NULL PRIMARY KEY,
    subcategory varchar(255) NOT NULL
);

--create contacts table
CREATE TABLE contacts (
    contact_id integer NOT NULL PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    email varchar(255) NOT NULL
);

--create campaign table
CREATE TABLE campaign (
    cf_id integer NOT NULL PRIMARY KEY,
    contact_id integer NOT NULL,
    company_name varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    goal decimal NOT NULL,
    pledged decimal NOT NULL,
    outcome varchar(255) NOT NULL,
    backers_count int NOT NULL,
    country varchar(255) NOT NULL,
    currency varchar(255) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(255) NOT NULL,
    subcategory_id varchar(255) NOT NULL,
	FOREIGN KEY (contact_id) references contacts(contact_id),
	FOREIGN KEY (category_id) references category(category_id),
	FOREIGN KEY (subcategory_id) references subcategory(subcategory_id)
);

select * from contacts
select * from category
select * from subcategory
select * from campaign