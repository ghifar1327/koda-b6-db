-- query data product
SELECT 
    p.name, 
    p.price, 
    STRING_AGG(DISTINCT s.name, ', ') AS sizes,
    STRING_AGG(DISTINCT v.name, ', ') AS variants
FROM products p
JOIN product_sizes ps
    on ps.product_id = p.id
JOIN sizes s
    on s.id = ps.size_id
JOIN product_variant pv
    on pv.product_id = p.id
JOIN variants v 
    on v.id = pv.variant_id
GROUP BY p.id

