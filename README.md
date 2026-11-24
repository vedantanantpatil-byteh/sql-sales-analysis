# Online Store Sales Analysis (SQL)

## Objective
Analyze sales data of an online store using MySQL to find revenue drivers, top customers, and sales trends.

## Tools Used
MySQL Workbench

## Database Structure
- **customers** (customer_id, name, city)
- **products** (product_id, product_name, category, price)
- **orders** (order_id, customer_id, product_id, quantity, order_date)

## Business Questions Solved
1. Total revenue
2. Category-wise revenue
3. Top 3 customers
4. City-wise sales
5. Month-wise sales trend
6. Best-selling product

## Key Insights
- Total revenue was ₹1.82 lakh, and Electronics contributed ~88%, so the business depends heavily on one category.
- Top 3 customers generated ~82% of revenue.
- Mumbai was the top city (₹76,000), followed by Delhi (₹56,000).
- January (₹90,000) and April (₹72,400) were strong, while Feb-Mar dropped to ~₹10,000.
- T-Shirt sold the most units (8), but Laptops and Phones drove the revenue.

## Recommendations
- Run offers in Feb-Mar to fix the sales dip.
- Bundle Fashion and Accessories to increase order value.
- Reduce dependency on a few customers through loyalty programs.

## Screenshots

### Q1: Total Revenue
![Q1](screenshots/q1_total_revenue.png)

### Q2: Category-wise Revenue
![Q2](screenshots/q2_category_revenue.png)

### Q3: Top 3 Customers
![Q3](screenshots/q3_top_customers.png)

### Q4: City-wise Revenue
![Q4](screenshots/q4_city_revenue.png)

### Q5: Monthly Sales Trend
![Q5](screenshots/q5_monthly_trend.png)

### Q6: Best-Selling Product
![Q6](screenshots/q6_best_product.png)