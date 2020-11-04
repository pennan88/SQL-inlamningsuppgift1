SELECT * FROM Movie_store
JOIN Movie ON Movie_store.Movie_ID = Movie.Movie_ID

SELECT * FROM Customer_Info
JOIN Movie_store ON Customer_Info.Customer_ID = Movie_store.Customer_ID

SELECT Movie_store.Movie_price_kr, Movie.Movie_name
FROM Movie_store JOIN Movie ON Movie.Movie_ID = Movie_store.Movie_ID 
ORDER BY Movie_price_kr DESC

SELECT Movie.Movie_name, Movie.Movie_score
FROM movie ORDER BY Movie.Movie_score DESC