# Inventory Management & Stock Analysis (SQL)

A beginner SQL project for a small shop. It tracks products and suppliers, and answers: what is in stock, what needs reordering, who to contact, and how much the stock is worth.

## Tools Used
- SQL (SQLite syntax)
- SQLite Online (browser-based SQL IDE)

## Database Structure

**suppliers**

| Column | Type | Description |
|---|---|---|
| supplier_id | INTEGER (Primary Key) | Unique ID per supplier |
| supplier_name | TEXT | Supplier name |
| city | TEXT | Supplier's city |

**products**

| Column | Type | Description |
|---|---|---|
| product_id | INTEGER (Primary Key) | Unique ID per product |
| product_name | TEXT | Product name |
| category | TEXT | Electronics, Stationery or Lifestyle |
| price | REAL | Price per unit in BDT |
| quantity | INTEGER | Units currently in stock |
| reorder_level | INTEGER | Minimum stock before restocking |
| supplier_id | INTEGER (Foreign Key) | Links to `suppliers` |

## Queries Included
1. View all products
2. Low-stock alert (`WHERE quantity < reorder_level`)
3. Total stock value (`SUM`)
4. Stock value per category (`GROUP BY`)
5. Product with the most stock (`ORDER BY` + `LIMIT`)
6. Products per supplier (`JOIN` + `COUNT`)
7. Supplier to contact for each low-stock product (`JOIN`)
8. Restocking a product (`UPDATE`)

## Sample Results

| Query | Result |
|---|---|
| Low-stock products | Wireless Mouse, Keyboard, Pen Pack |
| Total stock value | 63,900 BDT |
| Top category by stock value | Lifestyle (28,350 BDT) |
| Most stocked product | USB Cable (65 units) |

## How to Run
1. Open any online SQL IDE (e.g. SQLite Online).
2. Paste the contents of `inventory_stock.sql`.
3. Click **Run**.

## What I Learned
- Linking two tables with a foreign key
- Finding low stock with `WHERE`
- Calculating totals with `SUM(quantity * price)`
- Using `JOIN`, `GROUP BY`, and `UPDATE`

## Next Steps
- Add a table to record every stock movement (purchases and sales)
- Export the data to CSV and build a small Python pipeline
