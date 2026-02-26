
-- -- ================================================================================================================= USERS
-- INSERT INTO users (id, full_name, picture, email, password, phone, address)
-- VALUES
-- (uuid_generate_v4(),'Ghifar Ramadhan',NULL,'ghifar@mail.com','hashedpass1','0811111111','Jakarta'),
-- (uuid_generate_v4(),'Alya Putri',NULL,'alya@mail.com','hashedpass2','0811111112','Bandung'),
-- (uuid_generate_v4(),'Budi Santoso',NULL,'budi@mail.com','hashedpass3','0811111113','Surabaya'),
-- (uuid_generate_v4(),'Citra Dewi',NULL,'citra@mail.com','hashedpass4','0811111114','Medan'),
-- (uuid_generate_v4(),'Dimas Saputra',NULL,'dimas@mail.com','hashedpass5','0811111115','Bekasi'),
-- (uuid_generate_v4(),'Admin Coffee',NULL,'admin@mail.com','adminpass','0811111116','Head Office'),
-- (uuid_generate_v4(),'Rina Lestari',NULL,'rina@mail.com','hashedpass7','0811111117','Depok'),
-- (uuid_generate_v4(),'Fajar Nugroho',NULL,'fajar@mail.com','hashedpass8','0811111118','Bogor'),
-- (uuid_generate_v4(),'Salsa Nur',NULL,'salsa@mail.com','hashedpass9','0811111119','Tangerang'),
-- (uuid_generate_v4(),'Rizky Hidayat',NULL,'rizky@mail.com','hashedpass10','0811111120','Semarang');

-- -- ================================================================================================================== CATEGORIES
-- INSERT INTO categories (name) VALUES
-- ('Coffee'),        --1
-- ('Non Coffee'),    --2
-- ('Food'),          --3
-- ('Signature'),     --4
-- ('Cold Drinks'),   --5
-- ('Tea'),           --6
-- ('Snack'),         --7
-- ('Dessert'),       --8
-- ('Seasonal'),      --9
-- ('Healthy');       --10

-- -- ==================================================================================================================== PRODUCTS
-- INSERT INTO products (name,description,price,stock) VALUES
-- ('Espresso','Strong black coffee',18000,100),
-- ('Americano','Espresso hot water',20000,100),
-- ('Cappuccino','Milk foam coffee',25000,100),
-- ('Latte','Milky coffee',25000,100),
-- ('Mocha','Coffee chocolate',28000,100),
-- ('Caramel Macchiato','Caramel coffee',30000,100),
-- ('Cold Brew','Cold coffee',27000,100),
-- ('Matcha Latte','Green tea latte',26000,100),
-- ('Chocolate','Hot chocolate',22000,100),
-- ('Croissant','Buttery pastry',18000,100),

-- ('Flat White','Milk coffee',26000,100),
-- ('Affogato','Espresso ice cream',30000,100),
-- ('Vanilla Latte','Vanilla latte',28000,100),
-- ('Hazelnut Latte','Hazelnut latte',28000,100),
-- ('Spanish Latte','Sweet milk coffee',29000,100),

-- ('Black Tea','Black tea',15000,100),
-- ('Green Tea','Green tea',16000,100),
-- ('Thai Tea','Thai tea',22000,100),
-- ('Lemon Tea','Lemon tea',18000,100),
-- ('Peach Tea','Peach tea',20000,100),

-- ('Iced Americano','Cold americano',21000,100),
-- ('Iced Latte','Cold latte',26000,100),
-- ('Iced Mocha','Cold mocha',29000,100),
-- ('Iced Caramel','Cold caramel',30000,100),
-- ('Sparkling Coffee','Coffee soda',32000,100),

-- ('French Fries','Fries',20000,100),
-- ('Onion Rings','Onion rings',22000,100),
-- ('Chicken Wings','Spicy wings',35000,100),
-- ('Garlic Bread','Garlic bread',18000,100),
-- ('Nachos','Cheese nachos',30000,100),

-- ('Cheesecake','Cheesecake',32000,100),
-- ('Brownies','Brownies',25000,100),
-- ('Tiramisu','Tiramisu',35000,100),
-- ('Pancake','Pancake',28000,100),
-- ('Waffle','Waffle',28000,100),

-- ('Avocado Juice','Avocado juice',25000,100),
-- ('Strawberry Smoothie','Strawberry smoothie',27000,100),
-- ('Banana Smoothie','Banana smoothie',25000,100),
-- ('Mango Smoothie','Mango smoothie',27000,100),
-- ('Oat Latte','Oat latte',30000,100),

-- ('Pumpkin Latte','Pumpkin latte',32000,100),
-- ('Christmas Mocha','Christmas mocha',33000,100),
-- ('Ramadan Tea','Ramadan tea',20000,100),
-- ('Summer Breeze','Summer drink',28000,100),
-- ('Berry Blast','Berry drink',29000,100),

-- ('Double Espresso','Double espresso',22000,100),
-- ('Ristretto','Ristretto',21000,100),
-- ('Long Black','Long black',20000,100),
-- ('Coconut Latte','Coconut latte',29000,100),
-- ('Butterscotch Latte','Butterscotch latte',30000,100);

-- -- ============================================================================================= PRODUCTS_CATEGORIES (NO MISSING)
-- INSERT INTO products_categories (product_id, category_id) VALUES
-- -- Coffee
-- (1,1),(2,1),(3,1),(4,1),(5,1),(11,1),(12,1),(13,1),(14,1),(15,1),
-- (46,1),(47,1),(48,1),(49,1),(50,1),

-- -- Signature
-- (6,4),

-- -- Cold Drinks
-- (7,5),(21,5),(22,5),(23,5),(24,5),(25,5),(44,5),(45,5),

-- -- Non Coffee
-- (8,2),(9,2),

-- -- Tea
-- (16,6),(17,6),(18,6),(19,6),(20,6),(43,6),

-- -- Food
-- (10,3),

-- -- Snack
-- (26,7),(27,7),(28,7),(29,7),(30,7),

-- -- Dessert
-- (31,8),(32,8),(33,8),(34,8),(35,8),

-- -- Healthy
-- (36,10),(37,10),(38,10),(39,10),(40,10),

-- -- Seasonal
-- (41,9),(42,9);

-- -- ===========================================================================================================  SIZES
-- INSERT INTO sizes (name,add_price)
-- VALUES ('Small',0),('Medium',3000),('Large',5000);

-- INSERT INTO product_sizes
-- SELECT p.id, s.id FROM products p CROSS JOIN sizes s;

-- -- =========================================================================================================== METHODS
-- INSERT INTO methods (name)
-- VALUES ('Dine In'),('Delivery'),('Pick Up');

-- INSERT INTO product_methods (product_id, method_id, add_price) VALUES
-- -- 1-9
-- (1,1,0),(1,2,10000),(1,3,3000),
-- (2,1,0),(2,2,10000),(2,3,3000),
-- (3,1,0),(3,2,10000),(3,3,3000),
-- (4,1,0),(4,2,10000),(4,3,3000),
-- (5,1,0),(5,2,10000),(5,3,3000),
-- (6,1,0),(6,2,10000),(6,3,3000),
-- (7,1,0),(7,2,10000),(7,3,3000),
-- (8,1,0),(8,2,10000),(8,3,3000),
-- (9,1,0),(9,2,10000),(9,3,3000),

-- -- 11-25
-- (11,1,0),(11,2,10000),(11,3,3000),
-- (12,1,0),(12,2,10000),(12,3,3000),
-- (13,1,0),(13,2,10000),(13,3,3000),
-- (14,1,0),(14,2,10000),(14,3,3000),
-- (15,1,0),(15,2,10000),(15,3,3000),
-- (16,1,0),(16,2,10000),(16,3,3000),
-- (17,1,0),(17,2,10000),(17,3,3000),
-- (18,1,0),(18,2,10000),(18,3,3000),
-- (19,1,0),(19,2,10000),(19,3,3000),
-- (20,1,0),(20,2,10000),(20,3,3000),
-- (21,1,0),(21,2,10000),(21,3,3000),
-- (22,1,0),(22,2,10000),(22,3,3000),
-- (23,1,0),(23,2,10000),(23,3,3000),
-- (24,1,0),(24,2,10000),(24,3,3000),
-- (25,1,0),(25,2,10000),(25,3,3000),

-- -- 36-50
-- (36,1,0),(36,2,10000),(36,3,3000),
-- (37,1,0),(37,2,10000),(37,3,3000),
-- (38,1,0),(38,2,10000),(38,3,3000),
-- (39,1,0),(39,2,10000),(39,3,3000),
-- (40,1,0),(40,2,10000),(40,3,3000),
-- (41,1,0),(41,2,10000),(41,3,3000),
-- (42,1,0),(42,2,10000),(42,3,3000),
-- (43,1,0),(43,2,10000),(43,3,3000),
-- (44,1,0),(44,2,10000),(44,3,3000),
-- (45,1,0),(45,2,10000),(45,3,3000),
-- (46,1,0),(46,2,10000),(46,3,3000),
-- (47,1,0),(47,2,10000),(47,3,3000),
-- (48,1,0),(48,2,10000),(48,3,3000),
-- (49,1,0),(49,2,10000),(49,3,3000),
-- (50,1,0),(50,2,10000),(50,3,3000);

-- -- Food/Dessert: no delivery
-- -- ✅ FOOD & DESSERT (10 dan 26–35)
-- INSERT INTO product_methods (product_id, method_id, add_price) VALUES
-- (10,1,0),(10,3,3000),

-- (26,1,0),(26,3,3000),
-- (27,1,0),(27,3,3000),
-- (28,1,0),(28,3,3000),
-- (29,1,0),(29,3,3000),
-- (30,1,0),(30,3,3000),

-- (31,1,0),(31,3,3000),
-- (32,1,0),(32,3,3000),
-- (33,1,0),(33,3,3000),
-- (34,1,0),(34,3,3000),
-- (35,1,0),(35,3,3000);

-- -- ==================================================================================================== VARIANTS
-- INSERT INTO variants (name,add_price) VALUES
-- ('Hot',0),('Ice',0),('Less Sugar',0),('Extra Shot',5000),
-- ('Extra Cheese',4000),('Extra Sauce',3000),
-- ('Spicy Lv 1',0),('Spicy Lv 2',2000),('Spicy Lv 3',4000),
-- ('Chocolate Topping',5000),('Ice Cream Scoop',6000),
-- ('Whipped Cream',3000);

-- -- Drinks
-- INSERT INTO product_variant (product_id, variant_id) VALUES
-- (1,1),(1,2),(1,3),(1,4),
-- (2,1),(2,2),(2,3),(2,4),
-- (3,1),(3,2),(3,3),(3,4),
-- (4,1),(4,2),(4,3),(4,4),
-- (5,1),(5,2),(5,3),(5,4),
-- (6,1),(6,2),(6,3),(6,4),
-- (7,1),(7,2),(7,3),(7,4),
-- (8,1),(8,2),(8,3),(8,4),
-- (9,1),(9,2),(9,3),(9,4),
-- (11,1),(11,2),(11,3),(11,4),
-- (12,1),(12,2),(12,3),(12,4),
-- (13,1),(13,2),(13,3),(13,4),
-- (14,1),(14,2),(14,3),(14,4),
-- (15,1),(15,2),(15,3),(15,4),
-- (21,1),(21,2),(21,3),(21,4),
-- (22,1),(22,2),(22,3),(22,4),
-- (23,1),(23,2),(23,3),(23,4),
-- (24,1),(24,2),(24,3),(24,4),
-- (25,1),(25,2),(25,3),(25,4),
-- (40,1),(40,2),(40,3),(40,4),
-- (41,1),(41,2),(41,3),(41,4),
-- (42,1),(42,2),(42,3),(42,4),
-- (46,1),(46,2),(46,3),(46,4),
-- (47,1),(47,2),(47,3),(47,4),
-- (48,1),(48,2),(48,3),(48,4),
-- (49,1),(49,2),(49,3),(49,4),
-- (50,1),(50,2),(50,3),(50,4);


-- -- Snack
-- -- Snack
-- INSERT INTO product_variant (product_id, variant_id) VALUES
-- (26,5),(26,6),(26,7),(26,8),(26,9),
-- (27,5),(27,6),(27,7),(27,8),(27,9),
-- (28,5),(28,6),(28,7),(28,8),(28,9),
-- (29,5),(29,6),(29,7),(29,8),(29,9),
-- (30,5),(30,6),(30,7),(30,8),(30,9);

-- -- Dessert
-- -- Dessert
-- INSERT INTO product_variant (product_id, variant_id) VALUES
-- (31,10),(31,11),(31,12),
-- (32,10),(32,11),(32,12),
-- (33,10),(33,11),(33,12),
-- (34,10),(34,11),(34,12),
-- (35,10),(35,11),(35,12);

-- -- =================================================================================================================  IMAGES
-- -- Images
-- INSERT INTO images (url) VALUES
-- ('espresso.jpg'),
-- ('americano.jpg'),
-- ('cappuccino.jpg'),
-- ('latte.jpg'),
-- ('mocha.jpg'),
-- ('caramel_macchiato.jpg'),
-- ('cold_brew.jpg'),
-- ('matcha_latte.jpg'),
-- ('chocolate.jpg'),
-- ('croissant.jpg'),
-- ('flat_white.jpg'),
-- ('affogato.jpg'),
-- ('vanilla_latte.jpg'),
-- ('hazelnut_latte.jpg'),
-- ('spanish_latte.jpg'),
-- ('black_tea.jpg'),
-- ('green_tea.jpg'),
-- ('thai_tea.jpg'),
-- ('lemon_tea.jpg'),
-- ('peach_tea.jpg'),
-- ('iced_americano.jpg'),
-- ('iced_latte.jpg'),
-- ('iced_mocha.jpg'),
-- ('iced_caramel.jpg'),
-- ('sparkling_coffee.jpg'),
-- ('french_fries.jpg'),
-- ('onion_rings.jpg'),
-- ('chicken_wings.jpg'),
-- ('garlic_bread.jpg'),
-- ('nachos.jpg'),
-- ('cheesecake.jpg'),
-- ('brownies.jpg'),
-- ('tiramisu.jpg'),
-- ('pancake.jpg'),
-- ('waffle.jpg'),
-- ('avocado_juice.jpg'),
-- ('strawberry_smoothie.jpg'),
-- ('banana_smoothie.jpg'),
-- ('mango_smoothie.jpg'),
-- ('oat_latte.jpg'),
-- ('pumpkin_latte.jpg'),
-- ('christmas_mocha.jpg'),
-- ('ramadan_tea.jpg'),
-- ('summer_breeze.jpg'),
-- ('berry_blast.jpg'),
-- ('double_espresso.jpg'),
-- ('ristretto.jpg'),
-- ('long_black.jpg'),
-- ('coconut_latte.jpg'),
-- ('butterscotch_latte.jpg');

-- -- Product Images
-- INSERT INTO product_images (product_id, image_id) VALUES
-- (1,1),(2,2),(3,3),(4,4),(5,5),
-- (6,6),(7,7),(8,8),(9,9),(10,10),
-- (11,11),(12,12),(13,13),(14,14),(15,15),
-- (16,16),(17,17),(18,18),(19,19),(20,20),
-- (21,21),(22,22),(23,23),(24,24),(25,25),
-- (26,26),(27,27),(28,28),(29,29),(30,30),
-- (31,31),(32,32),(33,33),(34,34),(35,35),
-- (36,36),(37,37),(38,38),(39,39),(40,40),
-- (41,41),(42,42),(43,43),(44,44),(45,45),
-- (46,46),(47,47),(48,48),(49,49),(50,50);

-- -- =======================================================================================================================  DISCOUNT
-- INSERT INTO discount (product_id,discount_percent,description,is_flash_sale,start_date,end_date)
-- VALUES
-- (6,20,'Caramel Promo',true,CURRENT_DATE,CURRENT_DATE+INTERVAL '7 days'),
-- (41,25,'Pumpkin Promo',true,CURRENT_DATE,CURRENT_DATE+INTERVAL '5 days');

-- -- ======================================================================================================================== SAMPLE CART
-- INSERT INTO cart (user_id,product_id,size_id,variant_id,quantity)
-- SELECT id,3,2,4,2 FROM users LIMIT 1;

-- -- ============================================================================================================================= TRANSACTION
-- INSERT INTO transactions (user_id,status,payment_method)
-- SELECT id,'paid','qris' FROM users LIMIT 1;

-- INSERT INTO transactions_products (transaction_id,product_id,size_id,quantity)
-- VALUES (1,3,2,2),(1,10,1,1);

-- INSERT INTO order_history (transaction_id,status)
-- VALUES (1,'pending');

-- -- ============================================================================================================================ TESTIMONY
-- INSERT INTO testimony (user_id,product_id,rating,message)
-- SELECT id,3,4.5,'Cappuccino creamy!' FROM users LIMIT 1;