.PHONY: all install test docker

IMAGE ?= ganeshksankar/drone-artifactory:1

all: install test

install:
	npm install --quiet

test:
	npm test

docker:
	docker build --rm -t $(IMAGE) .
