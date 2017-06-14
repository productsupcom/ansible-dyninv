all : docker

init :
	git submodule init

#composer : init
#	cd src/ansible-dyninv-api && composer install --no-dev -nq --no-scripts

docker: init
	docker build . -t ansible-dyninv-data
	docker build fpm/ -t ansible-dyninv-fpm

launch: docker
	docker-compose up

# ex: set noexpandtab:
