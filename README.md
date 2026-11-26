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
7. Customer ranking using window function

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
![Q1](total%20revenue%28q1%29.png)

### Q2: Category-wise Revenue
![Q2](catagegory%20revenue%28q2%29.png)

### Q3: Top 3 Customers
![Q3](top%203%20coust%20%28q3%29.png)

### Q4: City-wise Revenue
![Q4](city%20wise%20sales%28q.%204%29.png)

### Q5: Monthly Sales Trend
![Q5](month%20wise%20sales%20%28q.5%29.png)

### Q6: Best-Selling Product
![Q6](best%20selling%20product%28q.6%29.png)

### Q7: Customer Retention
![Q7](customer_retention%28q7%29.png)
