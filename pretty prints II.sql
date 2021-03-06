USE prints;
SELECT customer_name, customer_add, customer_city, customer_state, customer_zip FROM customers;
SELECT customer_name, customer_phone FROM customers WHERE customer_state = 'GA';
SELECT customer_name, customer_zip FROM customers WHERE customer_state = 'NC' OR customer_state = 'SC';
SELECT title, Artist, order_date, ship_date FROM items, orderline, orders WHERE items.item_id = orderline.item_id;
SELECT item_id, title, artist, unit_price, on_hand FROM items ORDER BY Unit_Price;
SELECT item_id, title, artist, unit_price, on_hand FROM items WHERE Unit_Price > 100.00;
SELECT item_id, title, artist, unit_price, on_hand FROM items WHERE on_hand > 300;
SELECT title, Unit_Price, Unit_Price * 2 AS retail_Price FROM items;
SELECT customer_name, customer_phone FROM customers INNER JOIN orders ON customers.customer_id = orders.customer_id  WHERE order_date LIKE "2014%" ; 
SELECT artist, order_qty, orderline.item_id FROM items INNER JOIN orderline ON items.item_id = orderline.item_id;
SELECT Title FROM items WHERE Unit_Price BETWEEN 40.00 AND 100.00;
SELECT customer_state, (SELECT COUNT(customer_state) FROM customers) AS number_of_customers FROM customers;