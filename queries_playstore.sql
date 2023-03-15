-- Comments in SQL Start with dash-dash --

SELECT * FROM analytics WHERE id = 1880;
-- select app from analytics with id of 1880

SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';
-- get id and app_name for all apps last ipdated on 1st of august 2018

 SELECT category, COUNT(category) FROM analytics GROUP BY category;
--  Count the number of apps in each category, e.g. “Family | 1972”.

SELECT app_name FROM analytics ORDER BY reviews LIMIT 5;
-- FIND  the top 5 most-reviewed apps and the number of reviews for each.

SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY reviews LIMIT 1;
-- Find the app that has the most reviews with a rating greater than equal to 4.8.

SELECT category, AVG(rating) AS avg_rating  FROM analytics GROUP BY category ORDER BY avg_rating DESC;
--  Find the average rating for each category ordered by the highest rated to lowest rated.

SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;
-- Find the name, price, and rating of the most expensive app with a rating that’s less than 3.

SELECT app_name, rating FROM analytics WHERE min_installS <= 50 and rating IS NOT NULL ORDER BY rating DESC;
-- Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.

SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;
-- Find the names of all apps that are rated less than 3 with at least 10000 reviews.

SELECT * FROM analytics WHERE price BETWEEN .10 AND 1.00 ORDER BY reviews DESC LIMIT 10;
-- Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.

SELECT app_name, last_updated FROM analytics ORDER BY last_updated LIMIT 1;
-- Find the most out of date app. Hint: You don’t need to do it this way, but it’s possible to do with a subquery: http://www.postgresqltutorial.com/postgresql-max-function/

SELECT * FROM analytics ORDER BY price DESC limit 1;
-- find most expensive app

SELECT SUM(reviews) FROM analytics;
-- total reviews in playstore

SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;
-- Find all the categories that have more than 300 apps in them

SELECT app_name, min_installs, reviews, min_installs/reviews FROM analytics WHERE min_installs >= 100000 ORDER BY min_installs/reviews DESC LIMIT 1;
-- Find the app that has the highest proportion of min_installs to reviews, among apps that have been installed at least 100,000 times. Display the name of the app along with the number of reviews, the min_installs, and the proportion.
