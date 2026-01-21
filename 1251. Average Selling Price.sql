SELECT P.product_id, 
COALESCE(ROUND( SUM(p.price*1.0*u.units) / SUM(u.units),2),0)
AS average_price
FROM Prices P 
LEFT JOIN UnitsSold U ON P.product_id=U.product_id 
AND purchase_date BETWEEN start_date AND end_date
GROUP BY P.product_id;