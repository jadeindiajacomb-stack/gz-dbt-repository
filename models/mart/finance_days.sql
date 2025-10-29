SELECT 
date_date, 
COUNT (orders_id), AS Total_transactions,
SUM (revenue) AS Total_revenue,
SUM(revenue)/ COUNT(orders_id) AS Average_Basket,
SUM (puchase_cost) AS Total_purchase_cost,
SUM (shipping_fee) AS Total_shipping_fees,
SUM (logcost) AS Total_log_costs,
SUM (quantity) AS Total_quantity_of_products_sold,
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date