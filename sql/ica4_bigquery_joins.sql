-- Part A1
SELECT COUNT(*) FROM `bigquery-public-data.thelook_ecommerce.orders`;
-- 124920

-- Part A2
SELECT COUNT(*) FROM `bigquery-public-data.thelook_ecommerce.order_items`;
-- 181651

-- Part A3
SELECT COUNT(DISTINCT order_id)
FROM `bigquery-public-data.thelook_ecommerce.order_items`;
-- 124920

-- Part B1
SELECT
  p.category,
  ROUND(SUM(oi.sale_price * o.num_of_item), 2) AS revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items` AS oi
JOIN `bigquery-public-data.thelook_ecommerce.orders` AS o
  ON oi.order_id = o.order_id
JOIN `bigquery-public-data.thelook_ecommerce.products` AS p
  ON oi.product_id = p.id
GROUP BY p.category
ORDER BY revenue DESC;
-- Outerwear & Coats; 2614425.46

-- Part B3
SELECT
  p.category,
  ROUND(SUM(oi.sale_price), 2) AS revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items` AS oi
JOIN `bigquery-public-data.thelook_ecommerce.products` AS p
  ON oi.product_id = p.id
GROUP BY p.category
ORDER BY revenue DESC;
-- Outerwear & Coats; 1346047.39

-- Part B6
SELECT SUM(num_of_item)
FROM `bigquery-public-data.thelook_ecommerce.orders`;
-- 181651
 
SELECT SUM(o.num_of_item)
FROM `bigquery-public-data.thelook_ecommerce.orders` AS o
JOIN `bigquery-public-data.thelook_ecommerce.order_items` AS oi
  ON o.order_id = oi.order_id;
-- 345861

-- Part C1
SELECT ROUND(AVG(age), 1) AS avg_age
FROM `bigquery-public-data.thelook_ecommerce.users`;
-- 41.0

-- Part C2
SELECT ROUND(AVG(u.age), 1) AS avg_age
FROM `bigquery-public-data.thelook_ecommerce.users` AS u
JOIN `bigquery-public-data.thelook_ecommerce.orders` AS o
  ON u.id = o.user_id;
-- 41.1

-- Part C4
SELECT COUNT(*) AS orderless_users
FROM `bigquery-public-data.thelook_ecommerce.users` AS u
WHERE u.id NOT IN (
    SELECT DISTINCT user_id FROM `bigquery-public-data.thelook_ecommerce.orders`
);
-- 20033

-- Part D1
SELECT income_bracket, COUNT(*) AS n
FROM `bigquery-public-data.ml_datasets.census_adult_income`
GROUP BY income_bracket
ORDER BY n DESC;
-- <= 50K : 24720; > 50K : 7841

/*
The Part B query was double-counting items by joining the
order_items row on the orders row, resulting in an additional
orders row for every item that is in an order. This meant
the sale_price per item was getting added to our sum twice
if an order had multipe items, resulting in a 1.94x inflation
in our category revenue. Before trusting any query with a
join I will need to investigate what the join is doing to
the total number of rows and how we use the result of the
aggregation of those rows.
*/