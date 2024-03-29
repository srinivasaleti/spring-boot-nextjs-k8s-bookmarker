include tools/kind/kind.mk
include tools/docker/docker.mk

.PHONY: up
up:
	cd bookmarker-api && ./gradlew clean build
	docker-compose up --build &

build:
	cd bookmarker-api && ./gradlew clean build

down:
	docker-compose down

test:
	cd bookmarker-api && ./gradlew test
