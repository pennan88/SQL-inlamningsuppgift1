DROP TABLE IF EXISTS Movie_store;
DROP TABLE IF EXISTS Movie_director

CREATE TABLE Movie_store(
Movie_ID INT NOT NULL,
Movie_release_year INT NOT NULL,
Movie_name TEXT NOT NULL,
Movie_price_kr INT NOT NULL,
Movie_director TEXT NOT NULL,
PRIMARY KEY (Movie_ID)
);

CREATE TABLE Movie_director(
director_ID INT NOT NULL,
director_first_name TEXT NOT NULL,
director_last_name TEXT NOT NULL,
PRIMARY KEY (director_ID),
FOREIGN KEY (director_ID) REFERENCES Movie_store(Movie_ID)
);

INSERT INTO Movie_store (Movie_ID, Movie_release_year, Movie_name, Movie_price_kr, Movie_director) 
VALUES(1, 2001, 'The Lord of the Rings: The Fellowship of the Ring', 450, 'Peter Jackson'),
(2, 2016, 'Vaiana', 230, 'Ron Clements'),
(3, 1995, 'The Shawshank Redemption', 432, 'Frank Darabont'),
(4, 2001, 'Spy Kids 1', 65, 'Robert Rodríguez'),
(5, 1998, 'Titanic', 276, 'James Cameron'),
(6, 2006, 'Mission: Impossible III', 120, 'J.J. Abrams');