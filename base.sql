-- ============================================================================== USER
CREATE TABLE users (
    id UUID PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    picture TEXT,
    email VARCHAR(255) UNIQUE NOT NULL,
    password TEXT NOT NULL,
    phone VARCHAR(50),
    address TEXT,
    role VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- ============================================================================ PRODUCTS
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price INT NOT NULL,
    stock INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =============================================================================== CART
CREATE TABLE cart (
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    quantity INT NOT NULL CHECK (quantity > 0),
    PRIMARY KEY (user_id, product_id)
);

-- ============================================================================= TRANSACTIONS
CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    user_id UUID REFERENCES users(id) ON DELETE SET NULL,
    status VARCHAR(100) NOT NULL,
    payment_method VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================== ORDER HISTORY
CREATE TABLE order_history (
    id SERIAL PRIMARY KEY,
    transaction_id INT REFERENCES transactions(id) ON DELETE CASCADE,
    status VARCHAR(100) NOT NULL,
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =============================================================================== CATEGORIES
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE products_categories (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    category_id INT REFERENCES categories(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, category_id)
);

-- ==================================================================================== METHODS
CREATE TABLE methods (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE product_methods (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    method_id INT REFERENCES methods(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, method_id)
);

-- ====================================================================================== SIZES
CREATE TABLE sizes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    add_price INT DEFAULT 0
);

CREATE TABLE product_sizes (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    size_id INT REFERENCES sizes(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, size_id)
);

-- ===================================================================================== VARIANT
CREATE TABLE variants (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    add_price INT DEFAULT 0
);

CREATE TABLE product_variant (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    variant_id INT REFERENCES variants(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, variant_id)
);

-- ===================================================================================== IMAGES
CREATE TABLE images (
    id SERIAL PRIMARY KEY,
    url TEXT NOT NULL
);

CREATE TABLE product_images (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    image_id INT REFERENCES images(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, image_id)
);

-- ============================================================================= TRANSACTIONS_PRODUCTS
CREATE TABLE transactions_products (
    id SERIAL PRIMARY KEY,
    transaction_id INT REFERENCES transactions(id) ON DELETE CASCADE,
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    size_id INT REFERENCES sizes(id),
    quantity INT NOT NULL CHECK (quantity > 0)
);

-- =================================================================================== TESTIMONY
CREATE TABLE testimony (
    id SERIAL PRIMARY KEY,
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    rating DECIMAL(2,1) CHECK (rating BETWEEN 1 AND 5),
    message TEXT
);


-- =================================================================================== DISCOUNT
CREATE TABLE discount (
    id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    discount_percent DECIMAL(5,2) CHECK (discount_percent BETWEEN 0 AND 100),
    description TEXT,
    is_flash_sale BOOLEAN DEFAULT FALSE,
    start_date DATE,
    end_date DATE
);


SELECT * From users;
SELECT * FROM products;
SELECT * FROM cart;
SELECT * FROM transactions;
SELECT * FROM order_history;
SELECT * FROM categories;
SELECT * FROM products_categories;
SELECT * FROM methods;
SELECT * FROM product_methods;
SELECT * FROM sizes;
SELECT * FROM product_sizes;
SELECT * FROM variants;
SELECT * FROM product_variant;
SELECT * FROM images;
SELECT * FROM product_images;
SELECT * FROM transactions_products;
SELECT * FROM testimony;
SELECT * FROM discount;

