
build:
	docker-compose build
	# DOCKER_BUILDKIT=1 docker-compose build --progress=plain -t abc:1 . --no-cache

init:
	make build

up:
	docker-compose up

lab:
	docker compose exec app jupyter lab --allow-root --ip=0.0.0.0

notebook:
	docker compose exec app jupyter notebook --allow-root --ip=0.0.0.0