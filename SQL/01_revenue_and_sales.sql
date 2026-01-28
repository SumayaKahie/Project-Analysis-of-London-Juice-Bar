/* ============================================================
   1. REVENUE PERFORMANCE BY STORE
   Business Question:
   Which stores generate the highest revenue?
   Insight:
   Soho and Tottenham Court Road generated the highest revenue,
   indicating strong demand in leisure and commuter-driven locations.
   ============================================================ */

SELECT 
    s.store_name,
    SUM(t.net_sales_gbp) AS total_revenue
FROM transactions t
JOIN stores s 
    ON t.store_id = s.store_id
GROUP BY s.store_name
ORDER BY total_revenue DESC;
