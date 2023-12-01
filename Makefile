setup: env build up-d vendor

build:
	docker compose build

env:
	cp ./env/example ./.env

up:
	docker compose up

up-d:
	docker compose up -d

down:
	docker compose down

app:
	docker compose exec app bash

vendor:
	docker compose exec app composer install
