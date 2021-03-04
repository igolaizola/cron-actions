#!/bin/bash
SHELL =  /bin/bash

.PHONY: build
build:
	mkdir tmp
	cd tmp && \
	git clone https://github.com/igolaizola/timpbot.git
	cd tmp/timpbot && \
	GOOS=linux GOARCH=amd64 go build cmd/timpbot/main.go
	mv tmp/timpbot/main bin/timpbot
	chmod +x bin/timpbot
	rm -rf tmp

.PHONY: clean
clean:
	rm -rf tmp
