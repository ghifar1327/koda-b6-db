-- =================================================================================
CREATE TABLE if NOT EXISTS role (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);
-- ============================================================================== USER
CREATE TABLE if NOT EXISTS users (
    id UUID PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    picture TEXT,
    email VARCHAR(255) UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role_id int REFERENCES role(id) NOT NULL,
    phone VARCHAR(50),
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================ PRODUCTS
CREATE TABLE if NOT EXISTS products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price INT NOT NULL,
    stock INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ==================================================================================== METHODS
CREATE TABLE if NOT EXISTS methods (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    add_price INT 
);

-- ==============================================================================  VOUCHER
CREATE TABLE if NOT EXISTS vouchers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(225),
    discount FLOAT DEFAULT 0,
    start_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);
-- ============================================================================= TRANSACTIONS
CREATE TABLE if NOT EXISTS transactions (
    id UUID PRIMARY KEY,
    user_id UUID REFERENCES users(id) ON DELETE SET NULL,
    status VARCHAR(100) NOT NULL,
    id_method INT REFERENCES methods(id),
    payment_method VARCHAR(100) NOT NULL,
    id_voucher INT REFERENCES vouchers(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- ====================================================================================== SIZES
CREATE TABLE if NOT EXISTS sizes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    add_price INT DEFAULT 0
);
-- ============================================================================== TRANSACTION DETAIL
CREATE TABLE if NOT EXISTS transaction_details (
    id SERIAL PRIMARY KEY,
    transaction_id UUID REFERENCES transactions(id) ON DELETE CASCADE,
    product_id INT REFERENCES products(id),
    size_id INT REFERENCES sizes(id)
);

-- =============================================================================== CATEGORIES
CREATE TABLE if NOT EXISTS categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE if NOT EXISTS products_categories (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    category_id INT REFERENCES categories(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, category_id)
);



-- ===================================================================================== VARIANT
CREATE TABLE if NOT EXISTS variants (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    add_price INT DEFAULT 0
);


-- ===================================================================================== IMAGES
CREATE TABLE if NOT EXISTS images (
    id SERIAL PRIMARY KEY,
    url TEXT NOT NULL
);

CREATE TABLE if NOT EXISTS product_images (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    image_id INT REFERENCES images(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, image_id)
);

-- =================================================================================== review product
CREATE TABLE if NOT EXISTS review_product (
    id SERIAL PRIMARY KEY,
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    id_transaction_details INT REFERENCES transaction_details(id) ON DELETE CASCADE,
    rating DECIMAL(2,1) CHECK (rating BETWEEN 1 AND 5),
    message TEXT
);


-- =================================================================================== DISCOUNT
CREATE TABLE if NOT EXISTS discount (
    id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    discount_percent DECIMAL(5,2) CHECK (discount_percent BETWEEN 0 AND 100),
    description TEXT,
    is_flash_sale BOOLEAN DEFAULT FALSE,
    start_date DATE,
    end_date DATE
);

CREATE TABLE product_variants (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    variant_id INT REFERENCES variants(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, variant_id)
);

CREATE TABLE product_sizes (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    size_id INT REFERENCES sizes(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, size_id)
);

SELECT * From users;
SELECT * FROM role;
SELECT * FROM products;
SELECT * FROM methods;
SELECT * FROM vouchers;
SELECT * FROM transactions;
SELECT * FROM sizes;
SELECT * FROM transaction_details;
SELECT * FROM categories;
SELECT * FROM products_categories;
SELECT * FROM variants;
SELECT * FROM images;
SELECT * FROM product_images;
SELECT * FROM review_product;
SELECT * FROM discount;

SELECT * FROM product_variants;
SELECT * FROM product_sizes;


-- DROP TABLE role cascade;
-- drop TABLE users CASCADE;
-- drop TABLE products CASCADE;
-- drop TABLE cart CASCADE;
-- drop TABLE transactions CASCADE;
-- drop TABLE order_history CASCADE;
-- drop TABLE categories CASCADE;
-- drop TABLE products_categories CASCADE;
-- drop TABLE methods CASCADE;
-- drop TABLE product_methods CASCADE;
-- drop TABLE sizes CASCADE;
-- drop TABLE product_sizes CASCADE;
-- drop TABLE variants CASCADE;
-- drop TABLE product_variant CASCADE;
-- drop TABLE images CASCADE;
-- drop TABLE product_images CASCADE;
-- drop TABLE transactions_products CASCADE;
-- drop TABLE testimony CASCADE;
-- drop TABLE discount CASCADE;