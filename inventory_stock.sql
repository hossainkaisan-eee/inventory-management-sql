DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS suppliers;

CREATE TABLE suppliers (
    supplier_id INTEGER PRIMARY KEY,
    supplier_name TEXT NOT NULL,
    city          TEXT
  );
  
  CREATE TABLE products (
      product_id    INTEGER PRIMARY KEY,
      product_name  TEXT NOT NULL,
      category      TEXT,
      price         REAL,
      quantity      INTEGER,
      reorder_level INTEGER,
      supplier_id   INTEGER,
      FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
    );
    
    INSERT INTO suppliers (supplier_id, supplier_name, city) VALUES
    (1, 'TechSource Ltd', 'Dhaka'),
    (2, 'Paper World',    'Chattogram'),
    (3, 'HomeGoods Co',   'Khulna');
    
    INSERT INTO products (product_id, product_name, category, price, quantity, reorder_level, supplier_id) VALUES
    (1, 'Wireless Mouse', 'Electronics', 800, 5, 10, 1),
    (2, 'Keyboard',       'Electronics', 1500, 5, 8, 1),
    (3, 'USB Cable',      'Electronics', 250, 65, 20, 1),
    (4, 'Notebook',       'Stationery', 120, 50, 30, 2),
    (5, 'Pen Pack',       'Stationery', 60, 30, 40, 2),
    (6, 'Water Bottle',   'Lifestyle', 450, 15, 10, 3),
    (7, 'Backpack',       'Lifestyle', 1800, 12, 5, 3);
    
    SELECT * FROM products;
    
    
    SELECT product_name, quantity, reorder_level
    FROM products
    WHERE quantity <reorder_level;
    
    
    SELECT SUM(quantity*price) AS total_stock_value
    FROM products;
    
    
    SELECT category, SUM(quantity * price) AS stock_value
    FROM products
    GROUP BY category
    ORDER BY stock_value DESC;
    
    
    SELECT product_name, quantity
    FROM products
    ORDER BY quantity DESC
    LIMIT 1;
    
    
    SELECT s.supplier_name, COUNT(*) AS total_products
    FROM products p
    JOIN suppliers s ON  p.supplier_id = s.supplier_id
    GROUP BY s.supplier_name
    ORDER BY total_products DESC;
    
    
    SELECT p.product_name, p.quantity, p.reorder_level, s.supplier_name, s.city
    FROM products p
    JOIN suppliers s ON p.supplier_id = s.supplier_id
    WHERE p.quantity < p.reorder_level;
    
    UPDATE products
    SET quantity = quantity + 20
    WHERE product_name = 'Wireless Mouse';
    SELECT product_name, quantity FROM products WHERE product_name = 'Wireless Mouse';
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
