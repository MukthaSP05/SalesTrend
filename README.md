# Task 6: Sales Trend Analysis

## Objective
The goal of this task is to analyze monthly revenue and order volume from an `orders` table. This helps in understanding sales trends over time.

## Dataset
- **Database:** `online_sales`
- **Table:** `orders`
- **Columns:**
  - `order_id` INT (Primary Key)
  - `order_date` DATE
  - `product_id` INT
  - `amount` DECIMAL(10,2)

> Note: A sample dataset is included in the SQL file for demonstration purposes.

## Tools
- MySQL
- Optional: Excel or Power BI for visualization

## Steps Performed
1. Created the `orders` table.  
2. Inserted sample order data.  
3. Ran SQL queries to calculate:
   - Monthly revenue (`SUM(amount)`)  
   - Monthly order volume (`COUNT(DISTINCT order_id)`)  
   - Cumulative revenue over time (running total using window functions)

## SQL Script
All queries are included in the file: `task6_sales_trend.sql`

## Sample Output

| month   | monthly_revenue | order_volume | cumulative_revenue |
|---------|----------------|--------------|------------------|
| 2023-01 | 370.50         | 2            | 370.50           |
| 2023-02 | 460.75         | 2            | 831.25           |
| 2023-03 | 1150.00        | 3            | 1981.25          |
| 2023-04 | 620.30         | 2            | 2601.55          |

## Notes
- The cumulative revenue uses MySQL 8+ window functions (`SUM() OVER`) for a running total.
- This analysis can be visualized in dashboards to identify sales trends over months.
