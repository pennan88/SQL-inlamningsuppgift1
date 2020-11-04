DROP TABLE IF EXISTS Movie;
DROP TABLE IF EXISTS Rental_shop;
DROP TABLE IF EXISTS Customer_Info;



CREATE TABLE Customer_Info(
First_name TEXT NOT NULL,
Last_name TEXT NOT NULL,
Customer_ID INT NOT NULL,
Phone_number TEXT NOT NULL,
Adress TEXT NOT NULL,
PRIMARY KEY (Customer_ID),
);

CREATE TABLE Rental_shop(
Customer_ID INT NOT NULL,
Date_of_rent TEXT NOT NULL,
Movie_ID INT NOT NULL,
Movie_price_kr INT NOT NULL,
PRIMARY KEY (Movie_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customer_Info(Customer_ID)
);

CREATE TABLE Movie(
Movie_name TEXT NOT NULL,
Movie_director TEXT NOT NULL,
Movie_release_year INT NOT NULL,
Movie_score DECIMAL (2,1) NOT NULL,
Movie_ID INT NOT NULL,
PRIMARY KEY (Movie_ID),
FOREIGN KEY (Movie_ID) REFERENCES Rental_shop(Movie_ID)
);


INSERT INTO Customer_Info(First_name, Last_name, Customer_ID, Phone_number, Adress)
VALUES('John', 'Doe', 1, '073-3245xxx', 'DoeStreet'),
('Sara', 'Nilsson', 2, '072-5125xxx', 'JallaJallaGatan'),
('Stefan', 'Karlsson', 3, '073-5644xxx', 'Engata'),
('Karl', 'lrak', 4, '073-1245xxx', 'GatanUpp'),
('Amanda', 'Koea', 5,'072-6543xxx', 'Fågel'),
('Johan', 'Schee', 6, '076-7654xxx', 'Fiskstället'),
('Ettnamn', 'Efternamn', 7, '076-6433xxx', 'Borövergången'),
('Ettannatnamn', 'Intedu', 8, '071-1534xxx', 'shalom');


INSERT INTO Rental_shop(Customer_ID, Date_of_rent,Movie_ID,Movie_price_kr) 
VALUES(1, '21/07-2020', 1, 341),
(1,	'01/01-2020', 2, 247),
(2,  '05/02-2020', 3, 407),
(3,	'05/10-2020', 4, 164),
(4,	'30/12-2020', 5, 413),
(6,	'24/7-2020', 6, 304);


INSERT INTO Movie (Movie_name, Movie_director, Movie_release_year, Movie_ID, Movie_score) 
VALUES('The Lord of the Rings: The Fellowship of the Ring', 'Peter Jackson', 2001, 1, 8.8),
('Vaiana', 'Ron Clements', 2016, 2, 7.6),
('The Shawshank Redemption', 'Frank Darabont', 1995, 3, 9.3),
('Spy Kids 1', 'Robert Rodríguez', 2001, 4, 5.5),
('Titanic', 'James Cameron', 1998, 5, 7.8),
('Mission: Impossible III', 'J.J. Abrams', 2006, 6, 6.9 );

