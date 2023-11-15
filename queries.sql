#1
SELECT DISTINCT(prime_genre) FROM applestore2;

#2
SELECT 
    COUNT(user_rating), prime_genre
FROM
    applestore2
GROUP BY prime_genre
LIMIT 5;

#3
SELECT 
    COUNT(DISTINCT (id)) AS total_apps, prime_genre
FROM
    applestore2
GROUP BY prime_genre
ORDER BY total_apps DESC
LIMIT 1;

#4
SELECT 
    COUNT(DISTINCT (id)) AS total_apps, prime_genre
FROM
    applestore2
GROUP BY prime_genre
ORDER BY total_apps ASC
LIMIT 1;

#5
SELECT 
	track_name AS app, rating_count_tot AS total_ratings
FROM applestore2
ORDER BY rating_count_tot DESC
LIMIT 10;

#6
SELECT 
	track_name AS app, user_rating, rating_count_tot AS total_ratings
FROM applestore2
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

#7
/* The data retrieved from the fifth query shows the apps with the highest number of ratings. 
As expected, some of the most famous and beloved apps, such as Facebook, Instagram, and Clash of Clans, are among them. */

#8
/*The data retrieved from the fifth query shows the apps with the highest number of ratings. 
As expected, some of the most famous and beloved apps, such as Facebook, Instagram, and Clash of Clans, are among them.*/

#9
/*The thing I can comprehend of comparing these two tables is that the most famous app in the world is not the most beloved
app at the same time.*/

#10
SELECT 
    track_name AS app,
    user_rating,
    rating_count_tot AS total_ratings
FROM
    applestore2
ORDER BY user_rating DESC , rating_count_tot DESC
LIMIT 3;

#11.1
SELECT 
    track_name AS app,
    price,
    user_rating,
    prime_genre AS genre,
    rating_count_tot AS total_ratings
FROM
    applestore2
ORDER BY price DESC
LIMIT 25;


#11.2
SELECT 
    track_name AS app,
    price,
    user_rating,
    prime_genre AS genre,
    rating_count_tot AS total_ratings
FROM
    applestore2
ORDER BY price ASC
LIMIT 25;

/*By compring the two tables of 11.1 and 11.2, I say some people pay loads of money for apps. Ratign for the most and least
expensive is in the same range and the only vivid different is that people pay money for apps in educational, music and business
genre and a game app can't be found among them, on the other hand almost all the least 25 expensive apps are games, so it seems
people don't pay money for games on their mobile or ipads. */




