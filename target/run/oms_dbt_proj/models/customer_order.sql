
  create view "postgres"."postgres"."customer_order__dbt_tmp"
    
    
  as (
    WITH CUSTOMERORDERS AS (
SELECT C.CustomerID
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
)
SELECT * 
FROM CUSTOMERORDERS
  );