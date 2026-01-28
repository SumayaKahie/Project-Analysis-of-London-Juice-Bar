/* ============================================================
   PROFITABILITY VS REVENUE BY CATEGORY
   Insight:
   - Coffee = high profit margin
   - Juices = high revenue but lower margin
   - Smoothies = premium margin
   ============================================================ */

SELECT 
    p.category,
    SUM(t.net_sales_gbp - (t.quantity_sold * t.cost_of_goods_gbp)) AS profit
FROM transactions t
JOIN products p ON t.product_id = p.product_id
GROUP BY p.category
ORDER BY profit DESC;

