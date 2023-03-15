-- write your queries here

SELECT * FROM owners LEFT JOIN vehicles ON owners.id = vehicles.owner_id;


SELECT first_name, last_name , COUNT(first_name) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY first_name, last_name ORDER BY COUNT(first_name) ; 


SELECT first_name, last_name, ROUND(AVG(price)) , COUNT(first_name) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY first_name, last_name HAVING COUNT(first_name) > 1 AND AVG(price) > 10000  ORDER BY COUNT(first_name) DESC ; 

