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
	@echo "Generating PHP protobuf code..."
	@mkdir -p gen/php
	protoc --proto_path=proto \
		--php_out=gen/php \
		--grpc_out=gen/php \
		--plugin=protoc-gen-grpc=/opt/homebrew/bin/grpc_php_plugin \
		$(PROTO_FILES)
	@echo "PHP protobuf code generated successfully"

proto: go php

clean:
	rm -rf gen/*

# Note for PHP:
# After generating the PHP code, you may need to run 'composer install'
# to ensure the google/protobuf dependency is installed and the autoloader is up to date.
