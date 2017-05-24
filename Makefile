all : init

init : src/ansible-dyninv-api/.git src/ansible-dyninv-api-ui/.git
    git submodule init

