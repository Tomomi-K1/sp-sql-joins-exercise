==Part I==
1.  SELECT * FROM owners o
    FULL OUTER JOIN vehicles v 
    ON o.id = v.owner_id;
2.  SELECT first_name, last_name, COUNT(*) FROM owners 
    JOIN vehicles ON owners.id = vehicles.owner_id 
    GROUP BY (first_name, last_name) <==why do I need parens?
    ORDER BY first_name;
3. SELECT first_name, last_name, 
    ROUND(AVG(price)) AS average_price, 
    COUNT(v.id) 
    FROM owners o
    JOIN vehicles v ON o.id = v.owner_id 
    GROUP BY (first_name, last_name)
     HAVING 
     COUNT(v.id) > 1 AND ROUND(AVG(price)) > 10000  
     ORDER BY first_name DESC;