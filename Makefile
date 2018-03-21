VERSION:=1.13.1
all: build push

build:
	docker build -t hbouvier/docker-cli:${VERSION} .

push:
	docker push hbouvier/docker-cli:${VERSION}