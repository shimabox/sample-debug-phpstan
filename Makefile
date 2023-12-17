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
phpstan-src-install:
	rm -rf debug/phpstan-src
	git clone https://github.com/phpstan/phpstan-src.git debug/phpstan-src -b 1.10.x
	docker compose exec app bash -c "cd debug/phpstan-src && composer install"
