Ansible Dyninv
==================

## Alpha state
This project is still in Alpha status, use at your own risk. Pull requests are more then welcome.

## Installation
The current repo is a wrapper for the project to get up and running quickly. If you're using [Docker](https://www.docker.com/) you can use the supplied `Makefile` to get started.

`make all` will do all of the described below
`make init` will pull the git submodules from the other repo's
`make build` builds the Docker images
`make launch` does a `docker-compose up`
`make clean` will do a clean and remove all Docker orphans

# LICENSE
MIT license Copyright (c) 2017 Products Up GmbH, Yorick Terweijden yt@productsup.com
