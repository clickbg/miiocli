tag := latest

all: build-container

build-container:
	docker buildx rm -f miiocli-builder || true
	docker buildx create --driver docker-container --name miiocli-builder --buildkitd-flags '--allow-insecure-entitlement security.insecure' --use
	docker build -t miiocli:${tag} .
	docker buildx rm -f miiocli-builder || true

push:
	docker buildx rm -f miiocli-builder || true
	docker buildx create --driver docker-container --name miiocli-builder --buildkitd-flags '--allow-insecure-entitlement security.insecure' --use
	docker buildx build --push --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --tag clickbg/miiocli:${tag} .
	docker buildx rm -f miiocli-builder || true

.PHONY: all push build-container
