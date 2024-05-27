SELECT 
    CustomerData.Customer_City,
    OrderData.order_date_DateOrders,
    OrderData.Order_Profit_Per_Order,
    OrderData.Order_Item_Quantity,
    OrderData.Sales,
    OrderData.Order_Customer_Id, 
    OrderData.Order_Item_Cardprod_Id,
    OrderData.Order_Item_Product_Price,
    OrderData.Order_Region,
    ProductData.Category_Name,
    ProductData.Product_Card_Id,
    ProductData.Product_Status,
    ProductData.Product_Price
FROM OrderData
LEFT JOIN ProductData
    ON OrderData.Order_Item_Cardprod_Id = ProductData.Product_Card_Id
LEFT JOIN CustomerData
    ON OrderData.Order_Customer_Id = CustomerData.Customer_Id;

