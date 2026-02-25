-- query 1 product dengan melih varian dan size lalu menghitung final price
SELECT 
    p.name,
    p.price AS base_price,
    s.name AS size,
    s.add_price AS size_price,
    v.name AS variant,
    v.add_price AS variant_price,
    (p.price + s.add_price + v.add_price) AS total_price
FROM products p
JOIN product_sizes ps 
    ON ps.product_id = p.id
JOIN sizes s 
    ON s.id = ps.size_id
JOIN product_variant pv 
    ON pv.product_id = p.id
JOIN variants v 
    ON v.id = pv.variant_id
WHERE p.id = 9
AND s.id = 2  
AND v.id = 4; 
