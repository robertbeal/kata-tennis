.PHONY: test build

default: build test
	
test:
	docker run -t tennis

build:
	docker build -t tennis .
