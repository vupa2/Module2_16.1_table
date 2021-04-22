DROP TABLE IF EXISTS contacts, suppliers;

CREATE TABLE contacts
(
    contact_id INT(11) NOT NULL UNIQUE,
    contact_type VARCHAR(50) NULL,
    last_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(25),
    birthday DATE,
    CONSTRAINT contacts_pk PRIMARY KEY (contact_id)
);

CREATE TABLE suppliers
(
    supplier_id INT(11) NOT NULL UNIQUE, 
    supplier_name VARCHAR(50) NOT NULL,
    account_rep VARCHAR(30) NOT NULL DEFAULT 'TBD',
    CONSTRAINT suppliers_pk PRIMARY KEY (supplier_id)
);

ALTER TABLE contacts
    DROP COLUMN last_name,
    DROP COLUMN first_name;

ALTER TABLE contacts
    ADD last_name varchar(40) NOT NULL
        AFTER contact_id,
    ADD first_name varchar(35) NULL
        AFTER last_name;
    
ALTER TABLE contacts
    MODIFY last_name VARCHAR(50) NULL,
    CHANGE COLUMN contact_type ctype VARCHAR(20) NOT NULL;
