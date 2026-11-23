# E-Commerce Customer Behavior & Retention Analysis

## Project Overview
This project explores e-commerce orders to understand revenue trends, customer behavior, product/category performance, repeat purchasing, discounts, returns, and regional differences. The data is synthetic and created for portfolio practice.

## Business Problem
An online retailer wants to understand what drives sales, which customers return to purchase, which products/categories perform best, and how discounts and returns affect revenue.

## Objectives
- Track sales and order trends over time
- Compare category and product performance
- Measure customer repeat-purchase behavior
- Explore customer segments and regional sales
- Evaluate discount patterns and returned orders

## Dataset
- File: `Dataset/ecommerce_data.csv`
- Rows: **1,500**
- Fields: **15**
- Data is synthetic and generated for portfolio practice. It does not represent real people or a real organization.

## Tools
- Python (Pandas, NumPy, Matplotlib, Seaborn)
- SQL Server / SSMS
- Excel
- Power BI

## Suggested Workflow
1. Inspect the dataset and data types.
2. Check missing values, duplicates, and outliers.
3. Create analysis-ready fields where appropriate.
4. Perform exploratory analysis in Python.
5. Answer business questions using SQL.
6. Build an interactive Power BI dashboard.
7. Write findings and recommendations based on observed results.

## KPI Ideas
- Total Net Revenue
- Completed Orders
- Unique Customers
- Average Order Value
- Repeat Customer Rate
- Return Rate
- Revenue by Category
- Monthly Revenue Trend

## Folder Structure
```text
ecommerce-customer-behavior-analysis/
├── Dataset/
│   └── ecommerce_data.csv
├── Python/
│   └── analysis.ipynb
├── SQL/
│   └── analysis_queries.sql
├── Dashboard/
│   └── dashboard.pbix  (add your Power BI file)
├── Images/
│   └── dashboard_preview.png  (add a screenshot)
└── README.md

## Deliverables Checklist
- [ ] Validate and clean data
- [ ] Complete Python analysis notebook
- [ ] Run SQL analysis queries and document findings
- [ ] Build Power BI dashboard
- [ ] Add dashboard screenshot to `Images/`
- [ ] Replace the sample insight placeholders below with actual findings

## Insights
> Add 3–5 insights after completing your analysis. Avoid inventing findings before analysis.

## Business Recommendations
> Add 2–4 recommendations tied directly to your measured results.

## How to Use
Download the CSV from the `Dataset` folder. Open the notebook in Jupyter/VS Code and run cells in order. Load the CSV into SQL Server for query practice. Import the cleaned data into Power BI to create the dashboard.
