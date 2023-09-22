-- write your queries here
-- Part One
-- Query 1
SELECT *
    FROM owners
    FULL JOIN vehicles
    ON owners.id = vehicles.owner_id;

-- Query 2
SELECT first_name, last_name, COUNT(*)
    FROM owners
    JOIN vehicles
    ON owners.id = vehicles.owner_id
    GROUP BY owners.id
    ORDER BY first_name;

-- Query 3
SELECT first_name, last_name ROUND(AVG(price)) AS average_price, COUNT(owner_id) AS count
    FROM owners o
    JOIN vehicles v
    ON o.id = v.owner_id
    GROUP BY (first_name, last_name)
    HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
    ORDER BY first_name DESC;