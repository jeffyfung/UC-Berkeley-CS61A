.read data.sql


CREATE TABLE average_prices AS
  SELECT category, avg(msrp) AS average_price FROM products GROUP BY category;

CREATE TABLE lowest_prices AS
  SELECT store, item, min(price) AS lowest_price FROM inventory
    GROUP BY item;

CREATE TABLE best_deal AS
  SELECT category, name, min(msrp/rating) AS deal FROM products
    GROUP BY category;

CREATE TABLE shopping_list AS
  SELECT bd.name, lp.store FROM best_deal AS bd, lowest_prices AS lp
    WHERE bd.name = lp.item;

CREATE TABLE total_bandwidth AS
  SELECT sum(s.Mbs) FROM shopping_list AS sl, stores AS s
    WHERE sl.store = s.store;

