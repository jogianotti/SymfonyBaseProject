.PHONY: init
init: build start deps

.PHONY: start
start:
	docker-compose up --detach

.PHONY: stop
stop:
	docker-compose stop

.PHONY: build
build:
	docker-compose build

.PHONY: deps
deps: composer/install

composer/install:
	docker-compose exec php composer install
