create database if not exists pets;
use pets;

create table customers(cust_id int NOT null auto_increment,
cust_fname varchar(20), cust_sname varchar(30), cust_address1 varchar(50),
 cust_address2 varchar(50), cust_address3 varchar(50), cust_postcode varchar(10),
 primary key(cust_id));
 
 create table animals(
 pet_id int NOT NULL AUTO_INCREMENT,
 pet_owner int,
 pet_name varchar(20) NOT NULL,
 pet_age int,
 pet_breed varchar(20),
 pet_type enum( 'cat', 'dog', 'rabbit', 'fish'),
 primary key(pet_id),
 foreign key (pet_owner) REFERENCES customers(cust_id) on delete cascade
 );
 
 INSERT INTO animals (pet_name, pet_age, pet_breed, pet_type)
 VALUES ('Luna', 1, 'Jackapoo', 'Dog');
 
 INSERT INTO customers (cust_fname, cust_sname)
 VALUES ('Joe', 'Blogs');
 
INSERT INTO animals (pet_name, pet_age, pet_breed, pet_type)
VALUES ('Max', 7, 'Collie', 'Dog');

INSERT INTO animals (pet_name, pet_age, pet_breed, pet_type)
VALUES
('Mittens' , 4, 'Tabby', 'Cat'),
('Alfie', 6, 'Schnauser', 'Dog'),
('Goldie', 3, 'Goldfish', 'Fish');

INSERT INTO customers (cust_fname, cust_sname)
 VALUES 
 ('Jeff','Banks'),
 ('Bill', 'Gates'),
 ('Davey', 'Crockett'),
 ('John', 'Wayne'),
 ('Marge', 'Simpson'),
 ('Maggie', 'Thatcher');
 
 select * from customers;
 
 ALTER TABLE animals ADD Status varchar(50);
 
 select * from animals;
 
 UPDATE animals SET Status= 'Alive';
 use pets;