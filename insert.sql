
-- ================================================================================================================== role

INSERT INTO role (name) values
('admin'),('user');

-- ================================================================================================================= USERS
INSERT INTO users (id, full_name, picture, email, password, role_id ,phone, address)
VALUES
(uuid_generate_v4(),'Ghifar Ramadhan',NULL,'ghifarom@mail.com','hashedpass1',2,'0811111111','Karawang'),
(uuid_generate_v4(),'Alya Putri',NULL,'alya@mail.com','hashedpass2',2,'0811111112','Bandung'),
(uuid_generate_v4(),'Budi Santoso',NULL,'budi@mail.com','hashedpass3',2,'0811111113','Surabaya'),
(uuid_generate_v4(),'Citra Dewi',NULL,'citra@mail.com','hashedpass4',2,'0811111114','Medan'),
(uuid_generate_v4(),'Dimas Saputra',NULL,'dimas@mail.com','hashedpass5',2,'0811111115','Bekasi'),
(uuid_generate_v4(),'Admin Coffee',NULL,'admin@mail.com','adminpass',1,'0811111116','Head Office'),
(uuid_generate_v4(),'Rina Lestari',NULL,'rina@mail.com','hashedpass7',2,'0811111117','Depok'),
(uuid_generate_v4(),'Fajar Nugroho',NULL,'fajar@mail.com','hashedpass8',2,'0811111118','Bogor'),
(uuid_generate_v4(),'Salsa Nur',NULL,'salsa@mail.com','hashedpass9',2,'0811111119','Tangerang'),
(uuid_generate_v4(),'Rizky Hidayat',NULL,'rizky@mail.com','hashedpass10',2,'0811111120','Semarang');

-- ================================================================================================================== CATEGORIES
INSERT INTO categories (name) VALUES
('Coffee'),        --1
('Non Coffee'),    --2
('Food'),          --3
('Signature'),     --4
('Cold Drinks'),   --5
('Tea'),           --6
('Snack'),         --7
('Dessert'),       --8
('Seasonal'),      --9
('Healthy');       --10

-- ==================================================================================================================== PRODUCTS
INSERT INTO products (name,description,price,stock) VALUES
('Espresso','Strong black coffee',18000,100),
('Americano','Espresso hot water',20000,100),
('Cappuccino','Milk foam coffee',25000,100),
('Latte','Milky coffee',25000,100),
('Mocha','Coffee chocolate',28000,100),
('Caramel Macchiato','Caramel coffee',30000,100),
('Cold Brew','Cold coffee',27000,100),
('Matcha Latte','Green tea latte',26000,100),
('Chocolate','Hot chocolate',22000,100),
('Croissant','Buttery pastry',18000,100),

('Flat White','Milk coffee',26000,100),
('Affogato','Espresso ice cream',30000,100),
('Vanilla Latte','Vanilla latte',28000,100),
('Hazelnut Latte','Hazelnut latte',28000,100),
('Spanish Latte','Sweet milk coffee',29000,100),

('Black Tea','Black tea',15000,100),
('Green Tea','Green tea',16000,100),
('Thai Tea','Thai tea',22000,100),
('Lemon Tea','Lemon tea',18000,100),
('Peach Tea','Peach tea',20000,100),

('Iced Americano','Cold americano',21000,100),
('Iced Latte','Cold latte',26000,100),
('Iced Mocha','Cold mocha',29000,100),
('Iced Caramel','Cold caramel',30000,100),
('Sparkling Coffee','Coffee soda',32000,100),

('French Fries','Fries',20000,100),
('Onion Rings','Onion rings',22000,100),
('Chicken Wings','Spicy wings',35000,100),
('Garlic Bread','Garlic bread',18000,100),
('Nachos','Cheese nachos',30000,100),

('Cheesecake','Cheesecake',32000,100),
('Brownies','Brownies',25000,100),
('Tiramisu','Tiramisu',35000,100),
('Pancake','Pancake',28000,100),
('Waffle','Waffle',28000,100),

('Avocado Juice','Avocado juice',25000,100),
('Strawberry Smoothie','Strawberry smoothie',27000,100),
('Banana Smoothie','Banana smoothie',25000,100),
('Mango Smoothie','Mango smoothie',27000,100),
('Oat Latte','Oat latte',30000,100),

('Pumpkin Latte','Pumpkin latte',32000,100),
('Christmas Mocha','Christmas mocha',33000,100),
('Ramadan Tea','Ramadan tea',20000,100),
('Summer Breeze','Summer drink',28000,100),
('Berry Blast','Berry drink',29000,100),

('Double Espresso','Double espresso',22000,100),
('Ristretto','Ristretto',21000,100),
('Long Black','Long black',20000,100),
('Coconut Latte','Coconut latte',29000,100),
('Butterscotch Latte','Butterscotch latte',30000,100);

-- ============================================================================================= PRODUCTS_CATEGORIES (NO MISSING)
INSERT INTO products_categories (product_id, category_id) VALUES
-- Coffee
(1,1),(2,1),(3,1),(4,1),(5,1),(11,1),(12,1),(13,1),(14,1),(15,1),
(46,1),(47,1),(48,1),(49,1),(50,1),

-- Signature
(6,4),

-- Cold Drinks
(7,5),(21,5),(22,5),(23,5),(24,5),(25,5),(44,5),(45,5),

-- Non Coffee
(8,2),(9,2),

-- Tea
(16,6),(17,6),(18,6),(19,6),(20,6),(43,6),

-- Food
(10,3),

-- Snack
(26,7),(27,7),(28,7),(29,7),(30,7),

-- Dessert
(31,8),(32,8),(33,8),(34,8),(35,8),

-- Healthy
(36,10),(37,10),(38,10),(39,10),(40,10),

-- Seasonal
(41,9),(42,9);

-- ===========================================================================================================  SIZES
INSERT INTO sizes (name,add_price)
VALUES ('Small',0),('Medium',3000),('Large',5000);


-- =========================================================================================================== METHODS
INSERT INTO methods (name)
VALUES ('Dine In'),('Delivery'),('Pick Up');



-- ==================================================================================================== VARIANTS
INSERT INTO variants (name,add_price) VALUES
('Hot',0),('Ice',0),('Less Sugar',0),('Extra Shot',5000),
('Extra Cheese',4000),('Extra Sauce',3000),
('Spicy Lv 1',0),('Spicy Lv 2',2000),('Spicy Lv 3',4000),
('Chocolate Topping',5000),('Ice Cream Scoop',6000),
('Whipped Cream',3000);


-- =================================================================================================================  IMAGES
-- Images
INSERT INTO images (url) VALUES
('espresso.jpg'),
('americano.jpg'),
('cappuccino.jpg'),
('latte.jpg'),
('mocha.jpg'),
('caramel_macchiato.jpg'),
('cold_brew.jpg'),
('matcha_latte.jpg'),
('chocolate.jpg'),
('croissant.jpg'),
('flat_white.jpg'),
('affogato.jpg'),
('vanilla_latte.jpg'),
('hazelnut_latte.jpg'),
('spanish_latte.jpg'),
('black_tea.jpg'),
('green_tea.jpg'),
('thai_tea.jpg'),
('lemon_tea.jpg'),
('peach_tea.jpg'),
('iced_americano.jpg'),
('iced_latte.jpg'),
('iced_mocha.jpg'),
('iced_caramel.jpg'),
('sparkling_coffee.jpg'),
('french_fries.jpg'),
('onion_rings.jpg'),
('chicken_wings.jpg'),
('garlic_bread.jpg'),
('nachos.jpg'),
('cheesecake.jpg'),
('brownies.jpg'),
('tiramisu.jpg'),
('pancake.jpg'),
('waffle.jpg'),
('avocado_juice.jpg'),
('strawberry_smoothie.jpg'),
('banana_smoothie.jpg'),
('mango_smoothie.jpg'),
('oat_latte.jpg'),
('pumpkin_latte.jpg'),
('christmas_mocha.jpg'),
('ramadan_tea.jpg'),
('summer_breeze.jpg'),
('berry_blast.jpg'),
('double_espresso.jpg'),
('ristretto.jpg'),
('long_black.jpg'),
('coconut_latte.jpg'),
('butterscotch_latte.jpg');

-- Product Images
INSERT INTO product_images (product_id, image_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),
(16,16),(17,17),(18,18),(19,19),(20,20),
(21,21),(22,22),(23,23),(24,24),(25,25),
(26,26),(27,27),(28,28),(29,29),(30,30),
(31,31),(32,32),(33,33),(34,34),(35,35),
(36,36),(37,37),(38,38),(39,39),(40,40),
(41,41),(42,42),(43,43),(44,44),(45,45),
(46,46),(47,47),(48,48),(49,49),(50,50);

-- =======================================================================================================================  DISCOUNT
INSERT INTO discount (product_id,discount_percent,description,is_flash_sale,start_date,end_date)
VALUES
(6,20,'Caramel Promo',true,CURRENT_DATE,CURRENT_DATE+INTERVAL '7 days'),
(41,25,'Pumpkin Promo',true,CURRENT_DATE,CURRENT_DATE+INTERVAL '5 days');

-- ==============================================================
-- ENABLE UUID
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";


-- ==============================================================
-- TRANSACTIONS
INSERT INTO transactions (id,user_id,status,id_method,payment_method,id_voucher)
VALUES
(uuid_generate_v4(), (SELECT id FROM users LIMIT 1), 'paid',1,'qris',NULL),
(uuid_generate_v4(), (SELECT id FROM users OFFSET 1 LIMIT 1), 'paid',2,'cash',NULL),
(uuid_generate_v4(), (SELECT id FROM users OFFSET 2 LIMIT 1), 'paid',1,'qris',NULL),
(uuid_generate_v4(), (SELECT id FROM users OFFSET 3 LIMIT 1), 'paid',3,'debit',NULL),
(uuid_generate_v4(), (SELECT id FROM users OFFSET 4 LIMIT 1), 'paid',2,'qris',NULL);


-- ==============================================================
-- TRANSACTION DETAILS
-- ==============================================================
-- TRANSACTION DETAILS
INSERT INTO transaction_details (transaction_id, product_id, size_id, variant_id, quantity)
VALUES
((SELECT id FROM transactions LIMIT 1),3,1,1,2),
((SELECT id FROM transactions LIMIT 1),4,2,1,1),
((SELECT id FROM transactions LIMIT 1),5,3,2,1),

((SELECT id FROM transactions OFFSET 1 LIMIT 1),1,1,1,2),
((SELECT id FROM transactions OFFSET 1 LIMIT 1),6,2,2,1),

((SELECT id FROM transactions OFFSET 2 LIMIT 1),7,1,1,1),
((SELECT id FROM transactions OFFSET 2 LIMIT 1),8,2,2,2),

((SELECT id FROM transactions OFFSET 3 LIMIT 1),10,1,1,1),
((SELECT id FROM transactions OFFSET 3 LIMIT 1),28,2,2,1),

((SELECT id FROM transactions OFFSET 4 LIMIT 1),31,1,1,1),
((SELECT id FROM transactions OFFSET 4 LIMIT 1),33,2,2,2);

-- ==============================================================
-- REVIEW PRODUCT

INSERT INTO review_product (user_id,id_transaction_details,rating,message)
SELECT
    u.id,
    td.id,
    ROUND((RANDOM()*2 + 3)::numeric,1), -- rating antara 3.0 - 5.0
    CASE 
        WHEN RANDOM() < 0.2 THEN 'Amazing taste!'
        WHEN RANDOM() < 0.4 THEN 'Really good coffee'
        WHEN RANDOM() < 0.6 THEN 'Nice flavor and aroma'
        WHEN RANDOM() < 0.8 THEN 'Very recommended'
        ELSE 'Will order again!'
    END
FROM transaction_details td
CROSS JOIN users u
LIMIT 100;

SELECT * FROM products;


UPDATE images SET url = CASE url
WHEN 'espresso.jpg' THEN 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg'
WHEN 'americano.jpg' THEN 'https://images.pexels.com/photos/374885/pexels-photo-374885.jpeg'
WHEN 'cappuccino.jpg' THEN 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg'
WHEN 'latte.jpg' THEN 'https://images.pexels.com/photos/1036444/pexels-photo-1036444.jpeg'
WHEN 'mocha.jpg' THEN 'https://images.pexels.com/photos/302902/pexels-photo-302902.jpeg'
WHEN 'caramel_macchiato.jpg' THEN 'https://images.pexels.com/photos/5946967/pexels-photo-5946967.jpeg'
WHEN 'cold_brew.jpg' THEN 'https://images.pexels.com/photos/261532/pexels-photo-261532.jpeg'
WHEN 'matcha_latte.jpg' THEN 'https://images.pexels.com/photos/5946624/pexels-photo-5946624.jpeg'
WHEN 'chocolate.jpg' THEN 'https://images.pexels.com/photos/302897/pexels-photo-302897.jpeg'
WHEN 'croissant.jpg' THEN 'https://images.pexels.com/photos/2135/food-france-morning-breakfast.jpg'

WHEN 'flat_white.jpg' THEN 'https://images.pexels.com/photos/585750/pexels-photo-585750.jpeg'
WHEN 'affogato.jpg' THEN 'https://images.pexels.com/photos/302903/pexels-photo-302903.jpeg'
WHEN 'vanilla_latte.jpg' THEN 'https://images.pexels.com/photos/374885/pexels-photo-374885.jpeg'
WHEN 'hazelnut_latte.jpg' THEN 'https://images.pexels.com/photos/1036444/pexels-photo-1036444.jpeg'
WHEN 'spanish_latte.jpg' THEN 'https://images.pexels.com/photos/5946639/pexels-photo-5946639.jpeg'

WHEN 'black_tea.jpg' THEN 'https://images.pexels.com/photos/230477/pexels-photo-230477.jpeg'
WHEN 'green_tea.jpg' THEN 'https://images.pexels.com/photos/1417945/pexels-photo-1417945.jpeg'
WHEN 'thai_tea.jpg' THEN 'https://images.pexels.com/photos/5946606/pexels-photo-5946606.jpeg'
WHEN 'lemon_tea.jpg' THEN 'https://images.pexels.com/photos/96974/pexels-photo-96974.jpeg'
WHEN 'peach_tea.jpg' THEN 'https://images.pexels.com/photos/96974/pexels-photo-96974.jpeg'

WHEN 'iced_americano.jpg' THEN 'https://images.pexels.com/photos/261532/pexels-photo-261532.jpeg'
WHEN 'iced_latte.jpg' THEN 'https://images.pexels.com/photos/1036444/pexels-photo-1036444.jpeg'
WHEN 'iced_mocha.jpg' THEN 'https://images.pexels.com/photos/302902/pexels-photo-302902.jpeg'
WHEN 'iced_caramel.jpg' THEN 'https://images.pexels.com/photos/5946967/pexels-photo-5946967.jpeg'
WHEN 'sparkling_coffee.jpg' THEN 'https://images.pexels.com/photos/544961/pexels-photo-544961.jpeg'

WHEN 'french_fries.jpg' THEN 'https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg'
WHEN 'onion_rings.jpg' THEN 'https://images.pexels.com/photos/1893555/pexels-photo-1893555.jpeg'
WHEN 'chicken_wings.jpg' THEN 'https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg'
WHEN 'garlic_bread.jpg' THEN 'https://images.pexels.com/photos/2097090/pexels-photo-2097090.jpeg'
WHEN 'nachos.jpg' THEN 'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg'

WHEN 'cheesecake.jpg' THEN 'https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg'
WHEN 'brownies.jpg' THEN 'https://images.pexels.com/photos/227432/pexels-photo-227432.jpeg'
WHEN 'tiramisu.jpg' THEN 'https://images.pexels.com/photos/6880219/pexels-photo-6880219.jpeg'
WHEN 'pancake.jpg' THEN 'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg'
WHEN 'waffle.jpg' THEN 'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg'

WHEN 'avocado_juice.jpg' THEN 'https://images.pexels.com/photos/616833/pexels-photo-616833.jpeg'
WHEN 'strawberry_smoothie.jpg' THEN 'https://images.pexels.com/photos/616836/pexels-photo-616836.jpeg'
WHEN 'banana_smoothie.jpg' THEN 'https://images.pexels.com/photos/616837/pexels-photo-616837.jpeg'
WHEN 'mango_smoothie.jpg' THEN 'https://images.pexels.com/photos/616838/pexels-photo-616838.jpeg'
WHEN 'oat_latte.jpg' THEN 'https://images.pexels.com/photos/5946639/pexels-photo-5946639.jpeg'

WHEN 'pumpkin_latte.jpg' THEN 'https://images.pexels.com/photos/5946624/pexels-photo-5946624.jpeg'
WHEN 'christmas_mocha.jpg' THEN 'https://images.pexels.com/photos/302902/pexels-photo-302902.jpeg'
WHEN 'ramadan_tea.jpg' THEN 'https://images.pexels.com/photos/230477/pexels-photo-230477.jpeg'
WHEN 'summer_breeze.jpg' THEN 'https://images.pexels.com/photos/96974/pexels-photo-96974.jpeg'
WHEN 'berry_blast.jpg' THEN 'https://images.pexels.com/photos/616836/pexels-photo-616836.jpeg'

WHEN 'double_espresso.jpg' THEN 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg'
WHEN 'ristretto.jpg' THEN 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg'
WHEN 'long_black.jpg' THEN 'https://images.pexels.com/photos/374885/pexels-photo-374885.jpeg'
WHEN 'coconut_latte.jpg' THEN 'https://images.pexels.com/photos/5946639/pexels-photo-5946639.jpeg'
WHEN 'butterscotch_latte.jpg' THEN 'https://images.pexels.com/photos/5946967/pexels-photo-5946967.jpeg'
END;

-- ===================================================================== size-product

INSERT INTO product_sizes (product_id, size_id)
SELECT p.id, s.id
FROM products p
CROSS JOIN sizes s;

-- ==================================================================== variant_product

-- tea just
INSERT INTO product_variants (product_id, variant_id)
SELECT p.id, v.id
FROM products p
JOIN variants v ON v.name IN ('Hot','Ice','Less Sugar','Extra Shot')
WHERE p.id BETWEEN 1 AND 15
   OR p.id BETWEEN 21 AND 25
   OR p.id BETWEEN 46 AND 50;

-- food
INSERT INTO product_variants (product_id, variant_id)
SELECT p.id, v.id
FROM products p
JOIN variants v ON v.name IN (
  'Extra Cheese','Extra Sauce',
  'Spicy Lv 1','Spicy Lv 2','Spicy Lv 3'
)
WHERE p.id BETWEEN 26 AND 30;

-- desert
INSERT INTO product_variants (product_id, variant_id)
SELECT p.id, v.id
FROM products p
JOIN variants v ON v.name IN (
  'Chocolate Topping','Ice Cream Scoop','Whipped Cream'
)
WHERE p.id BETWEEN 31 AND 35;