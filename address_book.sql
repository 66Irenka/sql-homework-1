CREATE EXTENSION IF NOT EXISTS "pgcrypto";

--create the table
CREATE TABLE address_book (
    id UUID PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    postcode VARCHAR(255),
    country VARCHAR(255),
    phone_nr VARCHAR(255),
    dob DATE
);

INSERT INTO address_book (id, name, address, city, postcode, country, phone_nr, dob)
VALUES
     (gen_random_uuid(), 'Christopher Mcgee', '5052 Victoria Shore', 'East Carl', '71477', 'United States', '001-762-716-1368', '1921-09-26'),
     (gen_random_uuid(), 'Michael Thompson', '3623 Smith River', 'Brendaview', '2144', 'United States', '(214)910-6067', '1930-03-14'),
     (gen_random_uuid(), 'Robert Burton', '76046 Tara Stravenue', 'Cynthiashire', '84410', 'United States', '605-531-3391x7105', '1959-06-25'),
     (gen_random_uuid(), 'Pamela Mosley MD', '4512 Tiffany Parkway', 'Lake Rodneytown', '99276', 'United States', '282-539-9191', '1969-02-10'),
     (gen_random_uuid(),'Paul Jensen', '081 Oconnell Glen', 'North Jamesfurt', '25039', 'United States', '001-755-557-8185', '2002-03-26'),
     (gen_random_uuid(), 'Nathan Miller', '0804 Michael Drives', 'West Eric', '58401', 'United States', '772.734.6312x3374', '1954-09-25'),
     (gen_random_uuid(), 'Marissa Crawford', '705 Berry Lake', 'New Brittneychester', '88408', 'United States', '(845)846-0017x2957', '1966-02-01'),
     (gen_random_uuid(), 'Janet Carter', '252 Barbara Pass', 'Williamsonhaven', '15225', 'United States', '+1-287-807-9511x020', '1915-06-23'),
     (gen_random_uuid(), 'Nicole Sanchez', '877 John Freeway', 'West Peter', '18354', 'United States', '(746)685-5856x5066', '1990-10-30'),
     (gen_random_uuid(), 'Jessica Jones', '433 Sharon Vista', 'Montoyaville', '3938', 'United States', '856-336-6760x09013', '1947-04-30'),
     (gen_random_uuid(), 'Catherine Smart', '469 Hughes court', 'Laurahaven', 'W60 5DH', 'United Kingdom', '(0116) 496 0842', '2005-05-29'),
     (gen_random_uuid(), 'Gregory Clark', 'Flat 20, Marie plains', 'Bellshire', 'PE4 1NW', 'United Kingdom', '(0118)4960047', '1998-04-12'),
     (gen_random_uuid(), 'Miss Lisa Townsend', '3 Young lock', 'Ahmedport', 'IG7 1LU', 'United Kingdom', '+44(0)191 4960174', '2007-08-29'),
     (gen_random_uuid(), 'Dr Rosemary Cameron', '14 Preston fork', 'East Shannon', 'LD95 6YF', 'United Kingdom', '3 069 990 517', '1963-12-09'),
     (gen_random_uuid(), 'Henry Chandler', 'Flat 88, Teresa wells', 'Matthewmouth', 'M15 9XX', 'United Kingdom', '+44(0)1214960234', '1968-03-18'),
     (gen_random_uuid(), 'Carolyn Newton', '6 Hayley plains', 'O''Neillville', 'EN1 3UT', 'United Kingdom', '(0121)4960931', '1932-03-31'),
     (gen_random_uuid(), 'Jayne Johnson', 'Flat 4, Henry crossing', 'Margaretland', 'WR50 7FN', 'United Kingdom', '4.4307E+11', '2010-05-20'),
     (gen_random_uuid(), 'Mr Frederick Price', 'Flat 3, Powell glen', 'West Colinmouth', 'W8 0DR', 'United Kingdom', '+44(0)2074960196', '2014-12-14'),
     (gen_random_uuid(), 'Alice Jones', '8 Frederick trail', 'East Jenna', 'PO56 7XQ', 'United Kingdom', '(0113) 496 0406', '1940-02-19'),
     (gen_random_uuid(), 'Liam Bishop', '876 Jessica roads', 'Whittakermouth', 'E1 8AQ', 'United Kingdom', '1 144 960 305', '1966-12-12'),
     (gen_random_uuid(), 'Alex Kent', '0 Bethan circle', 'Lake Donaldhaven', 'B2 8ZD', 'United Kingdom', '1144960533', '2008-03-11'),
     (gen_random_uuid(), 'Vincenza Tosi-Tartaglia', 'Rotonda Paolini, 1', 'Melendugno', '21034', 'Italy', '393 422 614 448', '1921-07-07'),
     (gen_random_uuid(), 'Cesare Papafava-Maglio', 'Piazza Gozzi, 21', 'Peroulaz', '20010', 'Italy', '39 355 745 086', '1971-12-03'),
     (gen_random_uuid(), 'Benvenuto Beffa', 'Borgo Roccabonella, 7', 'Pratrivero', '41036', 'Italy', '57714813', '2018-06-21'),
     (gen_random_uuid(), 'Beatrice Leblanc-Conte', 'Piazza Irma, 76', 'Niviano Castello', '87036', 'Italy', '3514415096', '1949-04-23'),
     (gen_random_uuid(), 'Rocco Greggio', 'Canale Ferrante, 6 Appartamento 9', 'Comenduno', '84068', 'Italy', '371505398', '1930-01-06'),
     (gen_random_uuid(), 'Sig.ra Ida Pizziol', 'Piazza Antonio, 897', 'Walten', '12080', 'Italy', '3 903 653 993 732', '1947-01-01'),
     (gen_random_uuid(), 'Alessandra Nugnes', 'Rotonda Tamburini, 7', 'Muris Di Ragogna', '66026', 'Italy', '39 078 341 913', '1964-08-23'),
     (gen_random_uuid(), 'Amico Valier', 'Viale Cattaneo, 985', 'San Leucio', '66043', 'Italy', '53262140', '1956-10-17'),
     (gen_random_uuid(), 'Cirillo Rizzoli-Parpinel', 'Rotonda Leonetti, 45', 'Bottagna', '20044', 'Italy', '390 931 159 636', '1973-10-09'),
     (gen_random_uuid(), 'Natalia Curatoli-Brunello', 'Contrada Gioachino, 173 Piano 4', 'Sordio', '6064', 'Italy', '323748007', '2012-08-04'),
     (gen_random_uuid(), 'Mara Gheorghiu', 'Drumul Stoica Nr. 47 Bl. 96 Sc. 20 Ap. 418', 'Negresti', '336585', 'Romania', '749 161 945', '1999-05-21'),
     (gen_random_uuid(), 'Gheorghe Florea', 'Strada Nistor Nr. 72 Bl. 57 Sc. 54 Ap. 761', 'Rasnov', '611065', 'Romania', '739 481 075', '1996-09-11'),
     (gen_random_uuid(), 'Victor Albu', 'Strada Ionescu', 'Campulung', '494011', 'Romania', '734 302 483', '1983-12-20'),
     (gen_random_uuid(), 'Dalia Stan', 'Aleea Popescu Nr. 490 Bl. 11 Sc. 40 Ap. 894', 'Moldova Veche', '532624', 'Romania', '728 661 115', '1993-09-18'),
     (gen_random_uuid(), 'Dalia Dinu', 'Strada Diaconu', 'Modelu', '176592', 'Romania', '249 652 990', '1924-06-23');
   
   select *
from address_book

--- select all people that live in Romania
SELECT * FROM address_book WHERE country = 'Romania'; 

--select count of all people that live in United States
SELECT * FROM address_book WHERE country = 'United States'; 

--select all people who's name starts with "J" and order them alphabetically by name 
SELECT * FROM address_book WHERE name LIKE 'J%' ORDER BY name;

--update phone_nr column for people who lives in US and who's number doesn't start with "+1-" make it start with "+1-"
UPDATE address_book SET phone_nr = '+1-' || phone_nr WHERE country = 'United States' AND NOT phone_nr LIKE '+1-%';

-- delete those people, who is older than 100 year now. They must have died already.
DELETE FROM address_book WHERE age(current_date, dob) > interval '100 years';

--
COPY address_book TO 'C:/Users/Max/Desktop/address_book.csv' WITH CSV HEADER;














