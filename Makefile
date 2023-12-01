setup: env build

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
