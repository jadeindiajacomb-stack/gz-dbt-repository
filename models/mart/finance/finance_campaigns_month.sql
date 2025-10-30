SELECT
EXTRACT (MONTH FROM date_date) AS datemonth,
SUM(Average_Basket) AS Average_Basket,
SUM(Total_log_costs) AS Total_log_costs,
SUM(Total_shipping_fees) AS Total_shipping_fees,
SUM(Total_purchase_cost) AS Total_purchase_cost,
SUM(Total_revenue) AS Total_revenue,
SUM(Total_quantity_of_products_sold) AS Total_quantity_of_products_sold,
SUM(click) AS click,
SUM(impression) AS impression,
SUM(ads_cost) AS ads_cost,
SUM(margin) AS margin,
SUM(ads_margin) AS ads_margin,
SUM(operational_margin) AS operational_margin
FROM {{ ref('finance_campaigns_day') }}
GROUP BY datemonth
