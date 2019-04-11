IMAGE := codejamninja/green-docker
VERSION := 0.0.1

MAJOR := $(shell echo $(VERSION) | cut -d. -f1)
MINOR := $(shell echo $(VERSION) | cut -d. -f2)
PATCH := $(shell echo $(VERSION) | cut -d. -f3)

.EXPORT_ALL_VARIABLES:

.PHONY: all
all: clean build

.PHONY: build
build:
	@docker-compose build

.PHONY: pull
pull:
	@docker-compose pull

.PHONY: push
push:
	@docker-compose push
