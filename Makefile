NAME = narra

.PHONY: start debug log stop restart down

start:
ifeq ($(OS),Windows_NT)
	SET DEBUG=false & docker-compose -p $(NAME) -f ./docker/docker-compose.yml -f ./docker/docker-compose.development.yml up
else
	export DEBUG=false; docker-compose -p $(NAME) -f ./docker/docker-compose.yml -f ./docker/docker-compose.development.yml up
endif

debug:
ifeq ($(OS),Windows_NT)
	SET DEBUG=true & docker-compose -p $(NAME) -f ./docker/docker-compose.yml -f ./docker/docker-compose.development.yml up
else
	export DEBUG=true; docker-compose -p $(NAME) -f ./docker/docker-compose.yml -f ./docker/docker-compose.development.yml up
endif

log:
ifeq ($(OS),Windows_NT)
	SET DEBUG=false & docker-compose -p $(NAME) -f ./docker/docker-compose.yml -f ./docker/docker-compose.development.yml logs
else
	export DEBUG=false; docker-compose -p $(NAME) -f ./docker/docker-compose.yml -f ./docker/docker-compose.development.yml logs
endif

stop:
ifeq ($(OS),Windows_NT)
	SET DEBUG=false & docker-compose -p $(NAME) -f ./docker/docker-compose.yml -f ./docker/docker-compose.development.yml stop
else
	export DEBUG=false; docker-compose -p $(NAME) -f ./docker/docker-compose.yml -f ./docker/docker-compose.development.yml stop
endif

restart:
ifeq ($(OS),Windows_NT)
	SET DEBUG=false & docker-compose -p $(NAME) -f ./docker/docker-compose.yml -f ./docker/docker-compose.development.yml restart
else
	export DEBUG=false; docker-compose -p $(NAME) -f ./docker/docker-compose.yml -f ./docker/docker-compose.development.yml restart
endif

down:
ifeq ($(OS),Windows_NT)
	SET DEBUG=false & docker-compose -p $(NAME) -f ./docker/docker-compose.yml -f ./docker/docker-compose.development.yml down
else
	export DEBUG=false; docker-compose -p $(NAME) -f ./docker/docker-compose.yml -f ./docker/docker-compose.development.yml down
endif
