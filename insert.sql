
INSERT INTO users (id, full_name, picture, email, password, phone, address, role)
VALUES
(uuid_generate_v4(), 'Ghifar Ramadhan', NULL, 'ghifar@mail.com', 'hashedpass1', '0811111111', 'Jakarta', 'user'),
(uuid_generate_v4(), 'Alya Putri', NULL, 'alya@mail.com', 'hashedpass2', '0811111112', 'Bandung', 'user'),
(uuid_generate_v4(), 'Budi Santoso', NULL, 'budi@mail.com', 'hashedpass3', '0811111113', 'Surabaya', 'user'),
(uuid_generate_v4(), 'Citra Dewi', NULL, 'citra@mail.com', 'hashedpass4', '0811111114', 'Medan', 'user'),
(uuid_generate_v4(), 'Dimas Saputra', NULL, 'dimas@mail.com', 'hashedpass5', '0811111115', 'Bekasi', 'user'),
(uuid_generate_v4(), 'Admin Coffee', NULL, 'admin@mail.com', 'adminpass', '0811111116', 'Head Office', 'admin'),
(uuid_generate_v4(), 'Rina Lestari', NULL, 'rina@mail.com', 'hashedpass7', '0811111117', 'Depok', 'user'),
(uuid_generate_v4(), 'Fajar Nugroho', NULL, 'fajar@mail.com', 'hashedpass8', '0811111118', 'Bogor', 'user'),
(uuid_generate_v4(), 'Salsa Nur', NULL, 'salsa@mail.com', 'hashedpass9', '0811111119', 'Tangerang', 'user'),
(uuid_generate_v4(), 'Rizky Hidayat', NULL, 'rizky@mail.com', 'hashedpass10', '0811111120', 'Semarang', 'user');

INSERT INTO products (name, description, price, stock)
VALUES
('Espresso', 'Strong black coffee', 18000, 100),
('Americano', 'Espresso with hot water', 20000, 100),
('Cappuccino', 'Coffee with milk foam', 25000, 100),
('Latte', 'Milky coffee', 25000, 100),
('Mocha', 'Coffee with chocolate', 28000, 100),
('Caramel Macchiato', 'Coffee with caramel syrup', 30000, 100),
('Cold Brew', 'Cold extracted coffee', 27000, 100),
('Matcha Latte', 'Green tea latte', 26000, 100),
('Chocolate', 'Hot chocolate drink', 22000, 100),
('Croissant', 'Buttery pastry', 18000, 100);

INSERT INTO categories (name)
VALUES
('Coffee'),
('Non Coffee'),
('Food'),
('Signature'),
('Cold Drinks');

INSERT INTO products_categories VALUES
(1,1),(2,1),(3,1),(4,1),(5,1),(6,4),(7,5),
(8,2),(9,2),(10,3);


INSERT INTO sizes (name, add_price)
VALUES
('Small', 0),
('Medium', 3000),
('Large', 5000);

INSERT INTO product_sizes VALUES
(1,1),(1,2),(1,3),
(2,1),(2,2),(2,3),
(3,1),(3,2),(3,3),
(4,1),(4,2),(4,3),
(5,1),(5,2),(5,3),
(6,1),(6,2),(6,3),
(7,1),(7,2),(7,3),
(8,1),(8,2),(8,3),
(9,1),(9,2),(9,3),
(10,1),(10,2),(10,3);
INSERT INTO methods (name)
VALUES
('Dine In'),
('Delivery'),
('Pick Up');

INSERT INTO product_methods (product_id, method_id) VALUES
(1,1),(1,2),(1,3),
(2,1),(2,2),(2,3),
(3,1),(3,2),(3,3),
(4,1),(4,2),(4,3),
(5,1),(5,2),(5,3),
(6,1),(6,2),(6,3),
(7,1),(7,2),(7,3),
(8,1),(8,2),(8,3),
(9,1),(9,2),(9,3),
(10,1),(10,3);

INSERT INTO images (url)
VALUES
('espresso.jpg'),
('americano.jpg'),
('cappuccino.jpg'),
('latte.jpg'),
('mocha.jpg'),
('macchiato.jpg'),
('coldbrew.jpg'),
('matcha.jpg'),
('chocolate.jpg'),
('croissant.jpg');

INSERT INTO product_images VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,8),(9,9),(10,10);

INSERT INTO discount (product_id, discount_percent, description, is_flash_sale, start_date, end_date)
VALUES
(6, 20, 'Caramel Macchiato Promo', true, CURRENT_DATE, CURRENT_DATE + INTERVAL '7 days'),
(7, 15, 'Cold Brew Special', false, CURRENT_DATE, CURRENT_DATE + INTERVAL '30 days');

INSERT INTO variants (name, add_price)
VALUES
('Hot', 0),
('Ice', 0),
('Less Sugar', 0),
('Extra Shot', 5000),
('spicy', 3000),
('tasty', 0);

INSERT INTO product_variant VALUES
(1,1),(1,2),(1,3),(1,4),
(2,1),(2,2),(2,3),(2,4),
(3,1),(3,2),(3,3),(3,4),
(4,1),(4,2),(4,3),(4,4),
(5,1),(5,2),(5,3),(5,4),
(6,1),(6,2),(6,3),(6,4),
(7,1),(7,2),(7,3),(7,4),
(8,1),(8,2),(8,3),(8,4),
(9,1),(9,2),(9,3),(9,4),
(10,5),(10,6);

-- ============================================================================= INSERT cart

INSERT INTO cart (user_id, product_id, size_id, variant_id, quantity)
SELECT id, 3, 2, 4, 2
FROM users
ORDER BY created_at
LIMIT 1;

INSERT INTO cart (user_id, product_id, size_id, variant_id, quantity)
SELECT id, 4, 3, 2, 1
FROM users
ORDER BY created_at
OFFSET 1 LIMIT 1;

INSERT INTO cart (user_id, product_id, size_id, variant_id, quantity)
SELECT id, 7, 1, 1, 3
FROM users
ORDER BY created_at
OFFSET 2 LIMIT 1;

INSERT INTO cart (user_id, product_id, size_id, variant_id, quantity)
SELECT id, 5, 2, 3, 1
FROM users
ORDER BY created_at
OFFSET 3 LIMIT 1;

INSERT INTO cart (user_id, product_id, size_id, variant_id, quantity)
SELECT id, 6, 3, 4, 2
FROM users
ORDER BY created_at
OFFSET 4 LIMIT 1;

-- no.1 

INSERT INTO transactions (user_id, status, payment_method)
SELECT id, 'paid', 'qris'
FROM users
ORDER BY created_at
LIMIT 1;

-- no.2

INSERT INTO transactions (user_id, status, payment_method)
SELECT id, 'pending', 'cash'
FROM users
ORDER BY created_at
OFFSET 1 LIMIT 1;

-- no.3 

INSERT INTO transactions (user_id, status, payment_method)
SELECT id, 'paid', 'debit'
FROM users
ORDER BY created_at
OFFSET 2 LIMIT 1;

-- ========================================================================================= TRNSACTIONS

-- no.1

INSERT INTO transactions_products (transaction_id, product_id, size_id, quantity)
VALUES
(1, 3, 2, 2),
(1, 10, 1, 3);

-- no. 2

INSERT INTO transactions_products (transaction_id, product_id, size_id, quantity)
VALUES
(2, 4, 3, 1);

-- no. 3
INSERT INTO transactions_products (transaction_id, product_id, size_id, quantity)
VALUES
(3, 7, 1, 2),
(3, 5, 2, 1); 





-- History Transaksi 1
INSERT INTO order_history (transaction_id, status)
VALUES
(1, 'pending'),
(1, 'paid'),
(1, 'completed');

-- History Transaksi 2
INSERT INTO order_history (transaction_id, status)
VALUES
(2, 'pending');

-- History Transaksi 3
INSERT INTO order_history (transaction_id, status)
VALUES
(3, 'pending'),
(3, 'paid');



-- User 1 review Cappuccino
INSERT INTO testimony (user_id, product_id, rating, message)
SELECT id, 3, 4.5, 'Cappuccino nya creamy dan balance banget!'
FROM users
ORDER BY created_at
LIMIT 1;

-- User 2 review Latte
INSERT INTO testimony (user_id, product_id, rating, message)
SELECT id, 4, 4.0, 'Latte nya lembut, cocok buat santai.'
FROM users
ORDER BY created_at
OFFSET 1 LIMIT 1;

-- User 3 review Cold Brew
INSERT INTO testimony (user_id, product_id, rating, message)
SELECT id, 7, 4.8, 'Cold brew nya strong tapi smooth!'
FROM users
ORDER BY created_at
OFFSET 2 LIMIT 1;

-- User 4 review Mocha
INSERT INTO testimony (user_id, product_id, rating, message)
SELECT id, 5, 4.2, 'Mocha nya coklatnya kerasa banget.'
FROM users
ORDER BY created_at
OFFSET 3 LIMIT 1;

-- User 5 review Caramel Macchiato
INSERT INTO testimony (user_id, product_id, rating, message)
SELECT id, 6, 4.7, 'Caramel nya pas, ga terlalu manis.'
FROM users
ORDER BY created_at
OFFSET 4 LIMIT 1;

-- User 6 review Matcha Latte
INSERT INTO testimony (user_id, product_id, rating, message)
SELECT id, 8, 4.1, 'Matcha nya authentic dan wangi.'
FROM users
ORDER BY created_at
OFFSET 5 LIMIT 1;

-- User 7 review Espresso
INSERT INTO testimony (user_id, product_id, rating, message)
SELECT id, 1, 4.6, 'Espresso nya bold dan nendang!'
FROM users
ORDER BY created_at
OFFSET 6 LIMIT 1;

-- User 8 review Americano
INSERT INTO testimony (user_id, product_id, rating, message)
SELECT id, 2, 4.3, 'Americano ringan tapi tetap nikmat.'
FROM users
ORDER BY created_at
OFFSET 7 LIMIT 1;

-- User 9 review Chocolate
INSERT INTO testimony (user_id, product_id, rating, message)
SELECT id, 9, 4.0, 'Chocolate nya cocok buat yang ga suka kopi.'
FROM users
ORDER BY created_at
OFFSET 8 LIMIT 1;

-- User 10 review Croissant
INSERT INTO testimony (user_id, product_id, rating, message)
SELECT id, 10, 4.4, 'Croissant nya flaky dan buttery banget!'
FROM users
ORDER BY created_at
OFFSET 9 LIMIT 1;