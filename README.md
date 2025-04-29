# Assessment
Alt Mobility Assessment

This repository contains the solutions for the Alt Mobility Data Analyst assignment. The project includes SQL-based analyses, customer retention visualizations, and a summary of insights and recommendations.


📁 Files Included

SQL Queries
- `orders_analysis.sql`: Contains SQL queries for order and customer analysis using `customer_orders.csv`.
- `payments_analysis.sql`: Contains SQL queries for payment status analysis using `payments.csv`.

📊 Visualization
- `customer_retention_heatmap.png`: A cohort-based heatmap showing customer retention across monthly cohorts.
- Python script provided separately for generating the heatmap locally.

📄 Summary
- `summary_findings.pdf`: A concise summary of key insights and recommendations (included separately).

📌 Approach

Order and Sales Analysis
- Grouped orders by status and month to analyze fulfillment trends and monthly revenue.
- Segmented revenue by order status to understand contributions.

Customer Analysis
- Identified repeat customers to gauge loyalty.
- Analyzed monthly active users to track engagement.
- Created customer segments based on total order value.

Payment Status Analysis
- Evaluated counts and trends in payment success and failure.
- Compared payment methods based on success rates.

### Customer Retention Visualization
- Cohort analysis groups customers by first purchase month.
- Tracks how many return in subsequent months.
- Retention is visualized as a heatmap for easy comparison.

🧠 Interpretation

- **Retention Heatmap**: Each row represents a cohort of customers (by month of first purchase), and each column shows how many returned in the following months.
- **Order Trends**: Helps identify high-performing months and fulfillment challenges.
- **Customer Segments**: Useful for targeted marketing or loyalty programs.
- **Payment Insights**: Helps identify methods or statuses with high failure rates.

✅ Recommendations
Detailed insights and actions are included in `summary_findings.pdf`.


