-- 1
SELECT * 
FROM products 
WHERE price BETWEEN 1000000 AND 5000000 
  AND discount > 0.10;

-- 2
SELECT brand, 
       COUNT(*) AS product_count, 
       AVG(price) AS avg_price 
FROM products 
GROUP BY brand;

-- 3
SELECT *, price - (price * discount) AS final_price
FROM products 
WHERE quantity < 100 
  AND status = 'active'
ORDER BY final_price;

-- 4
SELECT name, price 
FROM products 
WHERE created_at >= '2024-08-01' 
  AND created_at < '2024-09-01'
  AND category_id IN (6, 7);

-- 5
SELECT name, price, discount, (price - price * discount) AS final_price
FROM products 
ORDER BY price DESC 
LIMIT 5;

-- 6
SELECT SUM(quantity) AS total_in_stock
FROM products 
WHERE color = 'Oqa' 
  AND weight_kg < 1;
