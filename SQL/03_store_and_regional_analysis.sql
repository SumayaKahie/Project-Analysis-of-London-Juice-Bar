/* ============================================================
   PRODUCT CATEGORY PERFORMANCE BY STORE
   Insight:
   Coffee dominates commuter locations, while juices and smoothies
   perform better in tourist-heavy areas.
   ============================================================ */

SELECT 
    s.store_name,
    p.category,
    SUM(t.net_sales_gbp) AS revenue
FROM transactions t
JOIN stores s ON t.store_id = s.store_id
JOIN products p ON t.product_id = p.product_id
GROUP BY s.store_name, p.category
ORDER BY s.store_name, revenue DESC;


/* ============================================================
   STORE REVENUE SHARE BY CATEGORY
   Business Question:
   Which stores should we target for product growth?
   ============================================================ */

SELECT 
    s.store_name,
    p.category,
    SUM(t.net_sales_gbp) AS revenue,
    SUM(t.net_sales_gbp) * 1.0 / 
        SUM(SUM(t.net_sales_gbp)) OVER (PARTITION BY s.store_name) AS revenue_share
FROM transactions t
JOIN stores s ON t.store_id = s.store_id
JOIN products p ON t.product_id = p.product_id
GROUP BY s.store_name, p.category
ORDER BY s.store_name, revenue_share DESC;


/* ============================================================
   STORE VOLATILITY ANALYSIS
   Business Question:
   Which stores are risky vs predictable?
   ============================================================ */

SELECT 
    s.store_name,
    AVG(t.net_sales_gbp) AS avg_sales,
    STDEV(t.net_sales_gbp) AS sales_volatility
FROM transactions t
JOIN stores s ON t.store_id = s.store_id
GROUP BY s.store_name
ORDER BY sales_volatility DESC;

