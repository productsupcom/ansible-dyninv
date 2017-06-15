all : build

init :
	git submodule update --init

build: init
	docker-compose build

launch: build
	docker-compose up --force-recreate

clean:
	docker-compose down -v --remove-orphans

# ex: set noexpandtab:
