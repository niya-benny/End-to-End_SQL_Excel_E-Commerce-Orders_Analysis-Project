
# E-Commerce Orders Analysis using Excel & MySQL

## 📌 Project Overview

This project presents an end-to-end analysis of an E-Commerce Orders dataset using **Microsoft Excel** and **MySQL**. The objective is to clean, analyze, and visualize sales data to uncover valuable business insights related to revenue, customer segments, product performance, and sales trends.

The project demonstrates the complete data analytics workflow—from data preprocessing and SQL querying to dashboard creation and business reporting.

---

## 🎯 Objectives

- Clean and validate raw e-commerce data.
- Import the dataset into MySQL.
- Perform SQL-based business analysis.
- Build an interactive Excel dashboard.
- Generate actionable business insights.

---

## 🛠️ Tools & Technologies

- Microsoft Excel
  - Data Cleaning
  - Pivot Tables
  - Pivot Charts
  - KPI Cards
  - Slicers
- MySQL
- MySQL Workbench
- Git & GitHub

---

## 📂 Dataset Information
 Dataset link: https://www.kaggle.com/datasets/tanishqpratap/e-commerce-orders-dataset?select=ecommerce_orders_10k_updated.csv
- Dataset: E-Commerce Orders Dataset
- Total Records: **10,001**
- Features:

| Column |
|---------|
| order_id |
| user_id |
| product_id |
| category |
| price |
| qty |
| total_price |
| order_date |
| country |
| customer_segment |

---

# 📋 Data Cleaning (Excel)

The dataset was cleaned and validated before importing into MySQL.

### Data Cleaning Steps

- ✅ Verified data types
- ✅ Checked for missing values
- ✅ No duplicate records found
- ✅ Validated Total Price (`Price × Quantity`)
- ✅ Converted data into an Excel Table
- ✅ Ensured date formatting consistency

---

# 🗄️ Database Design

Database Name:

```sql
ecommerce_analysis
```

Table:

```sql
orders
```

The cleaned dataset was imported into MySQL for SQL analysis.

---

# 📊 SQL Analysis

The following SQL concepts were used:

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- Aggregate Functions
- Date Functions
- CASE Statements
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- RANK()
- DENSE_RANK()

---

## Business Questions Answered

- What is the total revenue?
- How many total orders were placed?
- Which product category generates the highest revenue?
- Which countries contribute the most revenue?
- Which customer segment contributes the highest sales?
- What are the monthly sales trends?
- Who are the top spending customers?
- Which products generate the highest revenue?
- Which customers spend above average?
- What is the cumulative revenue over time?

---

# 📈 Dashboard Features

The interactive Excel dashboard includes:

### KPI Cards

- Total Revenue
- Total Orders
- Average Order Value
- Total Quantity Sold

### Visualizations

- Revenue by Category
- Revenue by Country
- Customer Segment Distribution
- Monthly Revenue Trend
- Top 10 Products by Revenue

### Interactive Filters

- Category
- Country
- Customer Segment

---

# 💡 Key Business Insights

- 📌 Electronics generated the highest revenue among all product categories.
- 📌 High-value customers contributed the largest share of total sales.
- 📌 United States recorded the highest revenue across all countries.
- 📌 January achieved the highest monthly revenue.
- 📌 Books generated the lowest revenue among all categories.

---

# 🚀 Skills Demonstrated

- Data Cleaning
- Data Validation
- SQL Querying
- Business Analysis
- Data Aggregation
- Window Functions
- Data Visualization
- Dashboard Design
- KPI Reporting
- Interactive Filtering
- GitHub Documentation

---

# 📚 SQL Concepts Used

- Aggregate Functions
- GROUP BY
- HAVING
- ORDER BY
- CASE
- Subqueries
- CTEs
- Window Functions
- Ranking Functions
- Running Totals

---

# 🔮 Future Improvements

- Build an interactive Power BI dashboard.
- Add customer retention analysis.
- Perform RFM (Recency, Frequency, Monetary) Analysis.
- Develop sales forecasting using Machine Learning.
- Create automated dashboards using Python.

---

# 👩‍💻 Author

**Niya Benny**

Integrated M.Sc. Data Science Student

GitHub: https://github.com/niya-benny

LinkedIn: https://www.linkedin.com/in/niya-benny/

---

## ⭐ If you found this project useful, feel free to star the repository!
