SELECT 
date_date,
Average_Basket,
Total_log_costs,
Total_shipping_fees,
Total_purchase_cost,
Total_revenue,
Total_quantity_of_products_sold,
click,
impression,
ads_cost,
margin,
operational_margin,
(operational_margin - ads_cost) AS ads_margin
FROM {{ ref('int_campaigns_day') }} 
LEFT JOIN {{ ref('finance_days') }}
USING (date_date)
ORDER BY date_date DESC;