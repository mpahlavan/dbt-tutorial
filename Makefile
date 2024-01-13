.PHONY: up down run-dbt-docs run-dbt-tbls

up:
	docker-compose --project-name dbtmakefile up -d

down:
	docker-compose down

run-dbt-tbls:
	docker-compose --project-name dbtmakefile run dbt dbt run-operation create_customers_table create_orders_table

run-dbt-docs:
	docker-compose --project-name dbtmakefile run dbt dbt docs serve
