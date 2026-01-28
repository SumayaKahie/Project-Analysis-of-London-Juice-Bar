/* ============================================================
   WEEKEND VS WEEKDAY PERFORMANCE BY STORE
   Insight:
   - Tottenham Court Road → strong weekdays
   - Soho → strong weekends
   - Liverpool Street → financial district pattern
   - Dean Street → balanced demand
   ============================================================ */

SELECT 
    s.store_name,
    CASE 
        WHEN t.is_weekend = 'TRUE' THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    SUM(t.net_sales_gbp) AS revenue
FROM transactions t
JOIN stores s 
    ON t.store_id = s.store_id
GROUP BY s.store_name, t.is_weekend
ORDER BY s.store_name, day_type;


/* ============================================================
   PEAK TRADING HOURS BY STORE
   Business Question:
   Are there staffing optimisation opportunities?
   ============================================================ */

SELECT 
    s.store_name,
    t.hour_of_day,
    SUM(t.net_sales_gbp) AS revenue
FROM transactions t
JOIN stores s ON t.store_id = s.store_id
GROUP BY s.store_name, t.hour_of_day
ORDER BY s.store_name, revenue DESC;


/* ============================================================
   TIME-OF-DAY PROFITABILITY
   ============================================================ */

SELECT 
    s.store_name,
    t.hour_of_day,
    SUM(t.net_sales_gbp) AS revenue
FROM transactions t
JOIN stores s ON t.store_id = s.store_id
GROUP BY s.store_name, t.hour_of_day
ORDER BY s.store_name, t.hour_of_day;

