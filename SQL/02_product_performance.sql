/* ============================================================
   2. BEST & WORST PERFORMING PRODUCTS
   Business Questions:
   - Which products perform best?
   - Which products should be discontinued or promoted?
   ============================================================ */

SELECT 
    p.product_name,
    SUM(t.net_sales_gbp) AS revenue,
    SUM(t.quantity_sold) AS units_sold
FROM transactions t
JOIN products p 
    ON t.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;


/* ============================================================
   Strategic vs Underperforming Products
   ============================================================ */

SELECT 
    p.product_name,
    SUM(t.net_sales_gbp) AS revenue,
    SUM(t.quantity_sold) AS units_sold,
    AVG(t.unit_price_gbp) AS avg_price
FROM transactions t
JOIN products p ON t.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

