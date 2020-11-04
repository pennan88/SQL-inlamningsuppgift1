DROP TABLE IF EXISTS Customer_Info;
DROP TABLE IF EXISTS Movie_store;
DROP TABLE IF EXISTS Movie;

CREATE TABLE Customer_Info(
Customer_ID INT NOT NULL,
First_name TEXT NOT NULL,
Last_name TEXT NOT NULL,
Phone_number TEXT NOT NULL,
Adress TEXT NOT NULL,
PRIMARY KEY (Customer_ID),
);

CREATE TABLE Movie_store(
Movie_ID INT NOT NULL,
Customer_ID INT NOT NULL,
Movie_name TEXT NOT NULL,
Date_of_rent TEXT NOT NULL,
Movie_price_kr INT NOT NULL,
PRIMARY KEY (Movie_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customer_Info(Customer_ID)
);

CREATE TABLE Movie(
Movie_ID INT NOT NULL,
Movie_release_year INT NOT NULL,
Movie_name TEXT NOT NULL,
Movie_director TEXT NOT NULL,
FOREIGN KEY (Movie_ID) REFERENCES Movie_store(Movie_ID)
);

INSERT INTO Movie (Movie_ID, Movie_release_year, Movie_name, Movie_director) 
VALUES(1, 2001, 'The Lord of the Rings: The Fellowship of the Ring', 'Peter Jackson'),
(2, 2016, 'Vaiana', 'Ron Clements'),
(3, 1995, 'The Shawshank Redemption', 'Frank Darabont'),
(4, 2001, 'Spy Kids 1', 'Robert Rodríguez'),
(5, 1998, 'Titanic', 'James Cameron'),
(6, 2006, 'Mission: Impossible III', 'J.J. Abrams');

INSERT INTO Movie_store(Movie_ID, Customer_ID, Movie_name, Date_of_rent, Movie_price_kr) 
VALUES(1, 1, 'The Lord of the Rings: The Fellowship of the Ring', '21/07-2020', 341),
(2, 1, 'Vaiana', '01/01-2020', 247),
(3, 2, 'The Shawshank Redemption', '05/02-2020', 407),
(4, 3,'Spy Kids 1', '05/10-2020', 164),
(5, 4,'Titanic', '30/12-2020', 413),
(6, 6,'Mission: Impossible III', '24/7-2020', 304);

INSERT INTO Customer_Info(Customer_ID, First_name, Last_name, Phone_number, Adress)
VALUES(1, 'John', 'Doe', '073-3245xxx', 'DoeStreet'),
(2, 'Sara', 'Nilsson', '072-5125xxx', 'JallaJallaGatan'),
(3, 'Stefan', 'Karlsson', '073-5644xxx', 'Engata'),
(4, 'Karl', 'lrak', '073-1245xxx', 'GatanUpp'),
(5, 'Amanda', 'Koea', '072-6543xxx', 'Fågel'),
(6, 'Johan', 'Schee', '076-7654xxx', 'Fiskstället'),
(7, 'Ettnamn', 'Efternamn', '076-6433xxx', 'Borövergången'),
(8, 'Ettannatnamn', 'Intedu', '071-1534xxx', 'shalom');