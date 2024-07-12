--Data Preparation and SQL Queries
/*Before creating the visualizations, ensure that the data is properly prepared and queried*/

--Q1 Total Sales Amount by Transaction Type
SELECT 
    'Transaction Type', 
    SUM('Amount (AED)') AS Total_Sales_Amount
FROM 
    property_transactions
GROUP BY 
   'Transaction Type';



--Q2 Average Price per Square Foot by Community
SELECT 
    'Community', 
    AVG('AED/Sqf') AS Average_Price_Per_Sqf
FROM 
    property_transactions
GROUP BY 
    'Community';



--Q3 Total Number of Transactions by Property Type
SELECT 
    'Property Type', 
    COUNT(*) AS Number_Of_Transactions
FROM 
    property_transactions
GROUP BY 
    'Property Type';



--Q4.Average Size of Properties by Number of Bedrooms
SELECT 
    'Bedrooms', 
    AVG('Size (Sqf)') AS Average_Size_Sqf
FROM 
    property_transactions
GROUP BY 
    'Bedrooms';




--Q5Total Finance Value by Developer

SELECT 
    'Developer', 
    SUM('Finance Value (AED)') AS Total_Finance_Value
FROM 
    property_transactions
GROUP BY 
    'Developer';



--Q6 Transaction Volume Over Time


SELECT 
    DATE_FORMAT('Date', '%Y-%m') AS Month, 
    COUNT(*) AS Number_Of_Transactions
FROM 
    property_transactions
GROUP BY 
    Month
ORDER BY 
    Month;


--Q7 Distribution of Property Sizes
SELECT 
    'Size (Sqf)'
FROM 
    property_transactions;

--Q8 Sales Amount by Number of Bedrooms
SELECT 
    'Bedrooms', 
    SUM('Amount (AED)') AS Total_Sales_Amount
FROM 
    property_transactions
GROUP BY 
    'Bedrooms';













