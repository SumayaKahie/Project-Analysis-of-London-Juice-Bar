/* ============================================================
   QUALITY CHECKS — Joe & The Juice Case Study
   Purpose:
   Ensure transactional data is complete, consistent, and reliable
   before performing analytics or generating dashboards.
   ============================================================ */


/* 1. Check for NULL values in key columns */
SELECT 
    COUNT(*) AS null_transactions
FROM transactions
WHERE transaction_id IS NULL
   OR store_id IS NULL
   OR product_id IS NULL
   OR transaction_date IS NULL
   OR net_sales_gbp IS NULL;

/* Insight:
Any non-zero count indicates missing critical data that needs cleaning. */


/* 2. Verify unique primary keys */
-- Transactions
SELECT COUNT(transaction_id) AS total_transactions,
       COUNT(DISTINCT transaction_id) AS unique_transactions
FROM transactions;

-- Products
SELECT COUNT(product_id) AS total_products,
       COUNT(DISTINCT product_id) AS unique_products
FROM products;

-- Stores
SELECT COUNT(store_id) AS total_stores,
       COUNT(DISTINCT store_id) AS unique_stores
FROM stores;

/* Insight:
Total vs distinct counts should match. Any mismatch indicates duplicate or erroneous IDs. */


/* 3. Validate revenue consistency */
SELECT 
    SUM(net_sales_gbp) AS total_net_sales,
    SUM(quantity_sold * unit_price_gbp) AS calculated_sales_difference
FROM transactions;

/* Insight:
The total_net_sales should roughly match quantity_sold * unit_price_gbp. Large discrepancies indicate data errors. */


/* 4. Check for negative values in numeric columns */
SELECT 
    COUNT(*) AS negative_values
FROM transactions
WHERE net_sales_gbp < 0
   OR quantity_sold < 0
   OR unit_price_gbp < 0
   OR cost_of_goods_gbp < 0;

/* Insight:
Negative sales, quantity, price, or cost may indicate refunds, returns, or incorrect data entry. */


/* 5. Cross-table integrity: ensure all transaction IDs reference valid products & stores */
-- Transactions → Products
SELECT COUNT(*) AS invalid_product_refs
FROM transactions t
LEFT JOIN products p ON t.product_id = p.product_id
WHERE p.product_id IS NULL;

-- Transactions → Stores
SELECT COUNT(*) AS invalid_store_refs
FROM transactions t
LEFT JOIN stores s ON t.store_id = s.store_id
WHERE s.store_id IS NULL;

/* Insight:
All transactions should reference existing products and stores. */


/* 6. Date range sanity check */
SELECT 
    MIN(transaction_date) AS earliest_transaction,
    MAX(transaction_date) AS latest_transaction,
    COUNT(*) AS total_transactions
FROM transactions;

/* Insight:
Verify that transaction dates fall within the expected analysis period (Jan–Jun 2025). */


/* 7. Category coverage check */
SELECT 
    category,
    COUNT(DISTINCT product_id) AS num_products,
    SUM(quantity_sold) AS total_units_sold,
    SUM(net_sales_gbp) AS total_revenue
FROM transactions t
JOIN products p ON t.product_id = p.product_id
GROUP BY category
ORDER BY total_revenue DESC;

/* Insight:
Ensure all expected product categories are represented. Missing categories may indicate incomplete data. */


/* 8. Zero-value transaction check */
SELECT 
    COUNT(*) AS zero_value_transactions
FROM transactions
WHERE net_sales_gbp = 0
   OR quantity_sold = 0;

/* Insight:
Zero-value transactions may skew analytics; decide whether to filter them out. */
.
