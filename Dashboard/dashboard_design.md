# Power BI Dashboard Design Guide — E-Commerce
## Suggested Page 1: Executive Overview
- KPI cards: Net Revenue, Completed Orders, Unique Customers, AOV, Repeat Customer Rate, Return Rate
- Line chart: monthly revenue trend
- Bar chart: revenue by category
- Donut chart: order status distribution
- Slicers: date, region, category, payment method

## Suggested Page 2: Product & Category
- Top 10 products by net revenue
- Units sold by category
- Revenue by product and category matrix
- Discount distribution
- Slicers: category, product, date

## Suggested Page 3: Customer Analysis
- Customers by region and age group
- Repeat vs one-time customers
- Top customers by revenue
- Customer order frequency distribution
- Slicers: region, gender, age group

## Starter DAX Measures
```DAX
Net Revenue = SUM(EcommerceOrders[NetSales])
Order Rows = COUNTROWS(EcommerceOrders)
Unique Customers = DISTINCTCOUNT(EcommerceOrders[CustomerID])
Completed Orders = CALCULATE(COUNTROWS(EcommerceOrders), EcommerceOrders[OrderStatus] = "Completed")
Average Order Value = DIVIDE([Net Revenue], [Completed Orders])
Returned Orders = CALCULATE(COUNTROWS(EcommerceOrders), EcommerceOrders[OrderStatus] = "Returned")
Return Rate = DIVIDE([Returned Orders], [Order Rows])
```
