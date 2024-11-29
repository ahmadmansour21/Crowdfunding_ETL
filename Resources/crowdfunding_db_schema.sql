 CREATE TABLE category (
	Category_ID VARCHAR(15) PRIMARY KEY NOT NULL,
	Category VARCHAR(30) NOT NULL
);

SELECT *
FROM category;
CREATE TABLE subcategory (
	subcategory_ID VARCHAR(15) PRIMARY KEY NOT NULL,
	subategory VARCHAR(30) NOT NULL
);

SELECT *
FROM subcategory;

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL
);
SELECT *
FROM contacts;

CREATE TABLE campaign (
	cf_no INTEGER PRIMARY KEY NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(30) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal INTEGER NOT NULL,
	pledged INTEGER NOT NULL,
	outcome VARCHAR(15) NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR(20) NOT NULL,
	currency VARCHAR(15) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_ID VARCHAR(15) NOT NULL,
	subategory_ID VARCHAR(15) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
SELECT *
FROM campaign;