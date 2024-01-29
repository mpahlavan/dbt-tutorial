.PHONY: up down run-dbt-docs add-dbt-tbls dbt-compile

up:
	docker-compose --project-name dbttest up -d 

down:
	docker-compose down

add-dbt-tbls:
	docker-compose --project-name dbttest run dbt build
	
dbt-compile:
	docker-compose --project-name dbttest run dbt compile