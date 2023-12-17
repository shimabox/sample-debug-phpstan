up:
	docker compose up -d
build:
	docker compose build
init:
	@make destroy
	@make up
	@make install
rebuild:
	@make destroy
	@make up
stop:
	docker compose stop
down:
	docker compose down --remove-orphans
restart:
	@make down
	@make up
destroy:
	docker compose down --rmi all --volumes --remove-orphans
ps:
	docker compose ps
logs:
	docker compose logs
app:
	docker compose exec app bash
phpstan:
	docker compose exec app composer phpstan
phpstan\:6:
	docker compose exec app composer phpstan:6
install:
	docker compose exec app composer install
