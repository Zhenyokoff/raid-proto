.PHONY: all proto clean

all: proto

# To generate code, you need to install protobuf compiler and plugins:
# 1. Install protoc: https://grpc.io/docs/protoc-installation/
# 2. Install Go plugins: 
#    go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
#    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
# 3. Install PHP plugin: pecl install protobuf

PROTO_FILES=$(wildcard proto/*.proto)

go:
	@echo "Generating Go protobuf code..."
	@mkdir -p gen/go
	@PATH=$$(go env GOPATH)/bin:$(PATH) protoc --proto_path=proto \
		--go_out=gen/go --go_opt=paths=source_relative \
		--go-grpc_out=gen/go --go-grpc_opt=paths=source_relative \
		$(PROTO_FILES)
	@echo "Go protobuf code generated successfully"

php:
	@mkdir -p gen/php
	protoc --proto_path=proto --php_out=gen/php $(PROTO_FILES)

proto: go php

clean:
	rm -rf gen/*

# Note for PHP:
# After generating the PHP code, you may need to run 'composer install'
# to ensure the google/protobuf dependency is installed and the autoloader is up to date.
