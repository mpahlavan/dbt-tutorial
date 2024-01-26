.PHONY: up down run-dbt-docs run-dbt-tbls

up:
	docker-compose --project-name dbttest up -d 

down:
	docker-compose down

run-dbt-tbls:
	docker-compose --project-name dbttest run dbt build
	


