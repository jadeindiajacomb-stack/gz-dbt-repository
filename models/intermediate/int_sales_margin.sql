SELECT *,
sales.quantity * product.purchase_price AS purchase_cost,
sales.revenue -  (sales.quantity * product.purchase_price) AS margin
FROM {{ ref('stg_raw__sales') }} sales
LEFT JOIN {{ ref('stg_raw__product') }} product
USING(products_id)
