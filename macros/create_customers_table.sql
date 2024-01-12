-- macros/create_customers_table.sql

{% macro create_customers_table() %}
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(255),
    email VARCHAR(255)
);
{% endmacro %}
