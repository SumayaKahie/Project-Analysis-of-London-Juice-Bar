# Joe & The Juice: Sales, Product and Store Performance Analysis
#### An end-to-end SQL and Power BI analysis on 6 months of sales trends, product performance, and store-level behaviour across a multi-location retail business.

Joe & The Juice is a premium urban food and beverage retailer operating across high-footfall locations in major cities. The brand is known for its strong health-related product identity, fast-paced service model, and emphasis on customer experience. As the company continues to expand its store footprint and product offering, leadership requires deeper insight into **sales performance, product demand, and store-level profitability to support strategic decisions around pricing, staffing, and product portfolio optimisation**. The company has significant amounts of data on its sales, marketing efforts and operational efficiency and product offerings that has previously been underutilised. This project thoroughly analyses transactional sales data to identify key revenue drivers, growth opportunities, and operational risks across Joe & The Juice’s retail network.

### Core Business Areas Analysed
**Insights and recommendations are provided across four core business areas**

| Business Area                  | Description                                                                                                                                             | Key Metrics                                                                                       | Example Insights / Decisions Supported                                                         |
| ------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| **Revenue & Demand Trends**    | Examines how sales change over time to identify seasonal patterns, peak trading periods, and shifts in customer demand.                                 | Revenue, Order Volume, Average Order Value (AOV), Time-of-Day Trends, Weekday vs Weekend Sales    | Promotion timing, peak-hour staffing, launch scheduling, demand forecasting                    |
| **Product Performance**        | Evaluates how individual products and categories contribute to overall revenue and sales volume, highlighting both high performers and underperformers. | Revenue by Product, Units Sold, Category Contribution, Product Mix                                | Menu optimisation, product promotion strategy, pricing adjustments, identifying growth drivers |
| **Store-Level Performance**    | Compares performance across store locations, focusing on growth patterns, revenue stability, and customer behaviour differences.                        | Store Revenue, Growth Rate, AOV by Store, Revenue Concentration                                   | Regional strategy, location benchmarking, store-specific promotions, expansion planning        |
| **Profitability & Efficiency** | Analyses margins, operational costs, and efficiency opportunities to improve financial performance and resource allocation.                             | Gross Margin, Cost of Goods Sold (COGS), Profit per Product/Store, Operational Efficiency Metrics | Staffing optimisation, inventory planning, cost control, operational improvements              |

### Accessing Data/Code
- An interactive **Power BI dashboard** can be provided upon request through a shared link.
The SQL queries utlisied to inspect and perform quality checks, clean, organise, and prepare data for the dashboard can be found here: https://github.com/SumayaKahie/Juice_bar_ecommerce_analytics/blob/main/SQL/07_quality_checks.sql
- Targeted **SQL queries** regarding various business questions can be found here: 
https://github.com/SumayaKahie/Juice_bar_ecommerce_analytics/tree/main/SQL
- Finally, for those who would like to recreate this dataset, the **Python script** can be accessed here:
https://github.com/SumayaKahie/Project-Analysis-of-London-Juice-Bar/tree/main/Python

## Dataset Overview 
The analysis is based on over **200,000 transaction records** spanning the H1 period from January 2025 to June 2025, providing a **six-month view of sales and consumer behavior** across Joe & The Juice’s retail network. The dataset is organized into three primary tables, which are interconnected to provide a comprehensive view of sales, product performance, and store-level profitability.

| Table Name       | Description                                                                                            | Key Fields                                                                    | Analysis Use Cases                                                                           |
| ---------------- | ------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| **Transactions** | Transaction-level sales data. Each row represents a single product sold in a store at a specific time. | store_id, product_id, revenue, quantity, unit_price, cost_of_goods, timestamp | Sales trends, profitability analysis, peak hours, demand patterns                            |
| **Products**     | Product attributes and categorisation information.                                                     | product_name, category (Juice, Smoothie, Coffee, Sandwich, Bowl), price       | Product performance, category revenue mix, pricing strategy, identifying top/underperformers |
| **Stores**       | Store-level information and contextual location details.                                               | store_id, location, store_context (e.g., commuter, tourist, leisure areas)    | Regional comparisons, revenue volatility, staffing optimisation, store profitability         |

### Relationships Between Tables
Each transaction references a product ID and a store ID, creating a one-to-many relationship.
<img width="751" height="317" alt="image" src="https://github.com/user-attachments/assets/5e142c7d-03fd-40f3-9c7e-40d8a2764c43" />

*Figure 1*


### Analytical Value
| Stakeholder Need                             | How the Analysis Supports It                                                                                     | Business Decisions Enabled                                                                                     |
| -------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| **Understand When Revenue Happens**          | Time-based analysis highlights seasonal shifts, post–New Year trends, and weekday vs weekend demand patterns.    | Optimise staffing schedules, plan promotions around peak demand, and improve revenue forecasting accuracy.     |
| **Identify What Actually Makes Money**       | Revenue and cost-of-goods analysis enables margin tracking across products and categories.                       | Prioritise high-margin items, refine pricing strategies, and optimise product mix for profitability.           |
| **Understand Customer Purchasing Behaviour** | Transaction-level granularity reveals bundling trends, upsell performance, and average order value drivers.      | Design targeted promotions, improve menu combinations, and increase transaction value.                         |
| **Enable Fast, Data-Driven Decisions**       | Interactive Power BI dashboard allows leaders to explore store, product, and time-based performance dynamically. | Support operational planning, executive reporting, and ongoing performance monitoring without manual analysis. |



## Executive Summary
After peaking in early 2025, the company’s sales have continued to decline, with significant drops in June. Key performance indicators have mostly shown month-on-month decreases: order volume by over 5000 units, **revenue by 8%**, and only average order value (AOV) having a **net positive**. While this decline can be broadly attributed to a return to **post-new-year purchasing norms**, further analysis reveals location-specific patterns, product-level trends, and seasonal effects that are also influencing performance.
Below is the overview page from the PowerBI dashboard and more examples are included throughout the report.  

<img width="1277" height="718" alt="image" src="https://github.com/user-attachments/assets/d4163eb4-4013-43b0-9898-071f329a6b4d" />

*Figure 2*


## Sales Trends
**Early-Year Health Trends Trigger Revenue Spike, Exposing Seasonal Volatility and Operational Levers for Growth.**

Post-New-Year surge drives January sales peak, with a mid-quarter slowdown highlighting seasonal and operational sensitivities. The company’s sales peaked in January 2025, with 65,000 orders generating over £500k in revenue, driven by the “Fresh Start Effect,” where increased health-conscious purchasing influences customer behaviour. 

- From February to April, revenue declined for three consecutive months, hitting a **Q1 low of £460k**, representing a **6–8% month-on-month drop**. Units sold mirrored this trend, indicating that the decline was driven by reduced customer traffic rather than pricing changes.
- Revenue began recovering in March and May, reflecting seasonal demand patterns influenced by holidays, weekend activity, and local store traffic dynamics. This trend highlights sensitivity to both seasonality and location-specific traffic patterns, suggesting that the marketing, operations, and merchandising teams should align promotions, staffing, and product availability with anticipated peaks and troughs.

Full-year performance remains strong, with AOV growth indicating success of product bundling and **celebrity-endorsed offerings**. 

<img width="972" height="617" alt="image" src="https://github.com/user-attachments/assets/913d3378-d6c7-4287-9c3f-216de1c7365e" />

*Figure 3*

- Despite the early-year dip, full-year 2025 remained **above the 2022–2024 baseline** across all three north-star metrics: Revenue, Units Sold, and Average Order Value (AOV).
- Notably, AOV outperformed both Revenue and Units Sold in H1, increasing from £9.78 to £9.83 per transaction. This growth reflects Joe & the Juice’s strategic product bundling and the launch of celebrity-endorsed shakes, which encouraged higher spend per order.
- The stronger AOV suggests that while unit sales and overall revenue fluctuate with seasonality, per-transaction spend can be influenced by targeted product initiatives. These findings indicate that promotional strategies and premium product offerings directly impact profitability even when overall footfall varies.


## Product Performance
**Product Mix Reveals Revenue Drivers: Premium Functional Beverages Accelerate Growth While Low-AOV Categories Dilute Performance.**

- The analysis of individual product performance highlights that top-performing items are dominated by the Celebrity Shake line. Among the **top 10 products by revenue**, four are celebrity-endorsed shakes: Trust Your Gut, Big Brain Energy, Feel Good, and Hydration Station. Notably, Trust Your Gut and Big Brain Energy were launched in January 2025 and, together, have generated £266k of total revenue in H1. 

- The remaining top performers are primarily juices and smoothies, including JOE’s Identity, Power and Avo Shake. These products demonstrate strong consumer adoption and highlight the ongoing demand for high-value, fresh, and functional beverages. The success of the celebrity-endorsed shakes indicates that strategic product launches and influencer-driven marketing can significantly impact early adoption and revenue growth.

<img width="1277" height="702" alt="image" src="https://github.com/user-attachments/assets/f919d6c5-bd94-4a6c-8e9b-c5743391e167" />

*Figure 4*


- Category-level trends reveal that Juices and Smoothies together account for over **53% of total H1 revenue**, underscoring the central role of functional beverages in Joe & The Juice’s product portfolio. Sandwiches remain a strong performer, contributing 23% of total revenue, reflecting steady demand for convenient meal options.

<img width="587" height="291" alt="image" src="https://github.com/user-attachments/assets/c25f97af-7089-40ce-a9b5-24c00878afeb" />

*Figure 5*


- Bowls and coffee products demonstrate **slower sales despite their menu presence**. Coffee accounts for 20% of total revenue; while order volumes are high, the average order value is only £4, reducing its overall revenue contribution.
- Bowls represent just **5% of sales**, which can be attributed to the limited menu offering — only two bowl options are available, with JOE’s **Overnight Oats Bowl being the least purchased** product in H1.

##### Business Implications
Product performance across H1 highlights a clear concentration of revenue within premium, functional beverages, with celebrity shakes and core juice and smoothie lines emerging as the primary commercial drivers of growth and customer engagement. This dominance indicates that customers are increasingly gravitating toward higher-value, health-oriented offerings that combine brand influence with perceived functional benefits. In contrast, categories such as coffee and bowls contribute significantly less to overall revenue, reflecting structural differences in pricing power, menu breadth, and perceived value within the product mix. Together, these patterns reveal a portfolio shaped by strong premium beverage demand alongside lower-yield, high-volume items, underscoring how product composition and consumer preference are central to overall commercial performance.

## Regional Performance
**Regional Revenue Gaps Reveal the Real Driver: Product Mix and Customer Intent - Not Store Size.**

Joe & The Juice’s four London stores show clear revenue gaps that are not explained by store size alone, but by customer behavior and product preferences:

<img width="1262" height="263" alt="image" src="https://github.com/user-attachments/assets/c2809b9d-88a4-4dba-ab08-ebecff2a1c0c" />

*Figure 6*


- Soho leads the pack, generating **£844k in revenue over H1 2025**. This performance is driven by the highest average order value of £10.53, reflecting the store’s popularity with premium-priced products. The most popular category in Soho is Juice (£373k) and Smoothies (£236k), both higher-priced items, which explains the elevated AOV.

<img width="1251" height="405" alt="image" src="https://github.com/user-attachments/assets/a9d378b0-5104-4b8b-ae79-af9f480ddbd2" />

*Figure 7*


- Tottenham Court Road comes second, **earning £713k, with an AOV of £8.81**. The store’s most popular product category is Coffee (£238k), which is the lowest-priced item among top categories, partially explaining the lower AOV. Tottenham’s customer base is heavily commuter-driven, resulting in high weekday traffic but lower spending per order.
- Dean Street and Liverpool Street **lag behind with £687k and £677k** respectively, reflecting a mix of office/residential (Dean) and financial district (Liverpool) traffic. Their average order values fall between £8.81 and £8.47, in line with the mix of products purchased. Dean Street benefits from a balanced product mix, while Liverpool Street relies heavily on lower-priced coffee, which keeps AOV at the bottom of the four stores.
#### Revenue Share Insights
- Soho accounts for 29% of total revenue, ending with Liverpool Street at 23%, highlighting its disproportionate contribution.
- Tottenham Court Road and Dean Street contribute the remaining middle 48%, indicating potential to boost revenue through product mix optimisation and targeted promotions.

**Business Implications**

Regional performance across the four London stores reveals that revenue differences are shaped less by physical footprint and more by customer intent and product mix. Soho’s leading position is driven by consistently higher average order values and strong demand for premium juices and smoothies, reflecting a leisure-oriented customer base willing to spend more per visit. In contrast, Tottenham Court Road’s commuter-heavy traffic generates high transaction volume but lower spend per order due to a reliance on lower-priced coffee products. Dean Street and Liverpool Street sit between these extremes, with performance influenced by a balance of office, residential, and financial district customers, though Liverpool Street’s heavier dependence on low-value items suppresses overall revenue potential. Collectively, these patterns highlight how regional customer behaviour and purchasing preferences shape commercial outcomes, reinforcing the importance of aligning product mix with local demand dynamics.


## Temporal Behaviour Patterns  
**Temporal Demand Patterns Reveal Structural Revenue Windows - From Commuter Morning Peaks to Leisure-Driven Weekend Surges.**

### Weekend vs Weekday Performance
- Soho and Dean Street dominate weekend traffic, together accounting for over **60% of total weekend revenue**. Soho benefits from a mix of tourists and leisure-seekers, while Dean Street captures both office workers and local residents who prefer weekend visits.
<img width="581" height="287" alt="image" src="https://github.com/user-attachments/assets/fffad87d-6112-478c-b6aa-8477325493ea" />

*Figure 8*

- Tottenham Court Road and Liverpool Street **rely heavily on weekday commuter traffic**, with Tottenham only generating 18% of its revenue on weekends, showing a sharp drop-off outside office hours. This aligns with its location on a walk-down road with less footfall from non-native customers.
<img width="667" height="297" alt="image" src="https://github.com/user-attachments/assets/5c158bc6-e088-45d5-893d-1d444ede231d" />

*Figure 9*

### Hour-of-Day Insights
Zooming in further, hourly performance shows when revenue peaks occur and where opportunities lie:

<img width="782" height="362" alt="image" src="https://github.com/user-attachments/assets/2a0eb1d7-df33-476c-b065-3a528cabe5cf" />

*Figure 10*

- Lunchtime is the primary revenue window for most central stores, with **1 PM (hour 13) being the top performing hour**, followed closely by 11 AM, 2 PM, 3 PM, and 12 PM. This highlights the importance of scheduling staff and inventory for midday rushes. (Funnel Chart: “Lunchtime — Primary Revenue Window”)
- Afternoon Lull: In Liverpool Street, Tottenham, and Dean Street, revenue tapers sharply after midday, indicating a clear afternoon dip. Soho, in contrast, maintains higher revenue levels through the afternoon, demonstrating a healthier, more evenly distributed customer flow. 
- Morning Patterns: From 7 AM to 11 AM, Soho is actually the weakest performer, while **Tottenham Court Road dominates the morning** to early afternoon window (7 AM – 4 PM), reflecting the strong commuter-driven customer base.

##### Business Implications
Stores like Tottenham and Liverpool may need targeted promotions or staffing adjustments during afternoon lulls to improve utilisation.
Soho’s ability to maintain steady afternoon revenue shows opportunity to capitalise on leisure traffic, while Dean Street could experiment with promotions to flatten the mid-afternoon dip.
Understanding these temporal demand patterns allows for more precise staff scheduling, inventory allocation, and marketing initiatives by hour and day.


## Recommendations - By Department (Table Summary Included)
Based on insights from sales trends, product performance, regional differences, and temporal behaviour patterns, the following recommendations are proposed to maximise revenue, optimise operations, and refine product strategy:
#### Product Strategy & Promotion
##### Capitalise on Celebrity Shakes & Top-Performing Products
- Celebrity-endorsed products, including Trust Your Gut and Big Brain Energy, along with high-performing juices and smoothies, account for a substantial share of revenue (£266k combined).
- Recommendation: Highlight these products in marketing campaigns and bundles, particularly around seasonal or launch periods, to maintain momentum.
##### Juices & Smoothies Drive Growth; Bowls & Coffee Underperform
- Juices and smoothies together contribute over 53% of H1 revenue, whereas bowls account for only 5%, and coffee, despite high unit volume, contributes just 20% due to low AOV.
Recommendation: Introduce promotions or value bundles for bowls and coffee to increase their contribution, or consider menu adjustments to optimise the product mix.
##### Pricing & AOV Optimisation
- Soho’s high AOV is driven by premium products (juices & smoothies), whereas Tottenham Court Road’s most popular product is low-value coffee.
- Recommendation: Test premium product upsells at lower-AOV stores or introduce higher-margin combinations to increase average transaction value.

#### Regional & Store Strategy
##### Leverage High Weekend Stores
- Soho and Dean Street dominate weekend traffic (over 60% combined), while Tottenham and Liverpool are heavily weekday-dependent.
- Recommendation: Deploy weekend promotions, loyalty rewards, and events at Soho and Dean Street to maximise footfall.
##### Support Weekday-Dependent Stores
- Tottenham and Liverpool’s revenue drops sharply on weekends.
- Recommendation: Introduce weekday-targeted loyalty offers to maintain weekday dominance and consider strategic marketing to boost weekend visits (e.g., limited-time offers for walk-in customers).

#### Operational & Staffing Efficiency
##### Align Staffing with Temporal Patterns
- Hour-of-day analysis shows peak revenue at 13:00 (1 PM), with Tottenham & Liverpool tapering sharply in the afternoon, while Soho maintains steadier flow.
- Recommendation: Adjust staff schedules to match peak hours and avoid overstaffing during low-revenue periods.
##### Inventory Planning
- High-performing products like celebrity shakes and top juices require consistent availability, while slower-moving items can have smaller stock allocation.
- Recommendation: Implement dynamic inventory planning based on product performance, store location, and temporal demand patterns.

#### Marketing & Customer Engagement
##### Leverage High-Performing Product Launches
- Launch timing, such as Trust Your Gut and Big Brain Energy in January, drives strong early-month sales.
- Recommendation: Plan product launches strategically around known high-traffic periods, such as January or other seasonal peaks.
##### Targeted Promotions by Store Profile
- Soho’s mix of tourists and leisure customers versus Tottenham’s commuter-heavy base indicates different customer personas by location.
- Recommendation: Tailor promotions and communications to local customer behaviour (e.g., lunchtime discounts for commuter-heavy stores, weekend bundles for leisure-heavy stores)

| Area               | Key Recommendation                                                     | Expected Outcome                                     |
|------------------- |---------------------------------------------------------------------   |------------------------------------------------------|
| Product Strategy   | Focus on celebrity shakes & juices; introduce bundles and upsells      | Increase revenue, AOV, and customer engagement       |
| Regional Strategy  | Tailored promotions for high-weekend stores & weekday-focused stores   | Maximise store-specific revenue potential            |
| Operations         | Align staffing and inventory with peak hours and top-selling products  | Reduce waste and optimise staffing efficiency        |
| Marketing          | Target promotions by store customer profile and seasonal launches      | Boost sales and enhance customer retention           |
| Strategic Planning | Monitor via Power BI; pilot new initiatives                            | Ensure data-driven decisions and measurable results  |


