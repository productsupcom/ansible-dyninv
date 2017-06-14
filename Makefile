all : build

init :
	git submodule update --init

build: init
	docker-compose build --no-cache

launch: build
	docker-compose up --force-recreate

# ex: set noexpandtab:
