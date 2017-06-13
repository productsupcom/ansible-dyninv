all : docker

init :
	git submodule init

composer : init
	cd src/ansible-dyninv-api && composer install --no-dev -nq --no-scripts

docker: composer
	docker build . -t ansible-dyninv-data

launch: docker
	docker-compose up

# ex: set noexpandtab:
