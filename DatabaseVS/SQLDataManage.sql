SELECT * FROM Rental_shop
JOIN Movie ON Rental_shop.Movie_ID = Movie.Movie_ID

SELECT * FROM Customer_Info
JOIN Rental_shop ON Customer_Info.Customer_ID = Rental_shop.Customer_ID

-- Här sorterar den efter dyrast film att köpa.
SELECT Rental_shop.Movie_price_kr, Movie.Movie_name
FROM Rental_shop JOIN Movie ON Movie.Movie_ID = Rental_shop.Movie_ID 
ORDER BY Movie_price_kr DESC



-- Här sorterar den efter högsta betyg (Taget ifrån IMDB)
SELECT Movie.Movie_name, Movie.Movie_score
FROM movie ORDER BY Movie.Movie_score DESC