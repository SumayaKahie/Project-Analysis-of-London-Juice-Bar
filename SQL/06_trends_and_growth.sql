/* ============================================================
   PRODUCT REVENUE TRENDS OVER TIME
   Business Question:
   Which products are growing vs declining?
   ============================================================ */

WITH monthly_product_sales AS (
    SELECT 
        p.product_name,
        YEAR(t.transaction_date) AS year,
        MONTH(t.transaction_date) AS month,
        SUM(t.net_sales_gbp) AS monthly_revenue
    FROM transactions t
    JOIN products p 
        ON t.product_id = p.product_id
    GROUP BY 
        p.product_name,
        YEAR(t.transaction_date),
        MONTH(t.transaction_date)
),

product_trends AS (
    SELECT 
        product_name,
        AVG(CASE WHEN month >= 4 THEN monthly_revenue END) AS recent_avg_revenue,
        AVG(CASE WHEN month < 4 THEN monthly_revenue END) AS early_avg_revenue
    FROM monthly_product_sales
    GROUP BY product_name
)

SELECT 
    product_name,
    recent_avg_revenue,
    early_avg_revenue,
    (recent_avg_revenue - early_avg_revenue) AS revenue_change
FROM product_trends
ORDER BY revenue_change DESC;


/* ============================================================
   STORE REVENUE TRENDS OVER TIME
   ============================================================ */

WITH monthly_store_sales AS (
    SELECT 
        s.store_name,
        YEAR(t.transaction_date) AS year,
        MONTH(t.transaction_date) AS month,
        SUM(t.net_sales_gbp) AS monthly_revenue
    FROM transactions t
    JOIN stores s 
        ON t.store_id = s.store_id
    GROUP BY 
        s.store_name,
        YEAR(t.transaction_date),
        MONTH(t.transaction_date)
),

store_trends AS (
    SELECT 
        store_name,
        AVG(CASE WHEN month >= 4 THEN monthly_revenue END) AS recent_avg_revenue,
        AVG(CASE WHEN month < 4 THEN monthly_revenue END) AS early_avg_revenue
    FROM monthly_store_sales
    GROUP BY store_name
)

SELECT 
    store_name,
    recent_avg_revenue,
    early_avg_revenue,
    (recent_avg_revenue - early_avg_revenue) AS revenue_change,
    CASE 
        WHEN (recent_avg_revenue - early_avg_revenue) > 0 THEN 'Growing'
        WHEN (recent_avg_revenue - early_avg_revenue) < 0 THEN 'Declining'
        ELSE 'Stable'
    END AS trend_status
FROM store_trends
ORDER BY revenue_change DESC;

