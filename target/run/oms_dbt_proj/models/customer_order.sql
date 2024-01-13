
  create view "postgres"."postgres"."customer_order__dbt_tmp"
    
    
  as (
    SELECT
  co.*,
  cu.*
FROM customers cu
JOIN orders co ON cu.customer_id = co.customer_id
  );