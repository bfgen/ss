setup:
	cp ./env/example ./.env
	docker compose build

up:
	docker compose up

down:
	docker compose down

app:
	docker compose exec app bash
