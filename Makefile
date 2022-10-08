tag := latest

all: build-container

build-container:
	docker build -t miiocli:${tag} .

push:
	docker buildx build --push --platform linux/arm/v5,linux/arm/v6,linux/arm/v7,linux/arm64/v8,linux/i386,linux/amd64 --tag clickbg/miiocli:${tag} .

.PHONY: all push build-container
