# Raid Proto

Repository for Raid project protobuf contracts with code generation for Go and PHP.

## Project Structure

```
raid-proto/
├── proto/              # Protobuf files (.proto)
├── gen/
│   ├── go/            # Generated Go code
│   └── php/           # Generated PHP code
├── go.mod             # Go module
├── composer.json      # PHP dependencies  
└── Makefile          # Code generation scripts
```

## Installation

### For code generation

1. Install protoc: https://grpc.io/docs/protoc-installation/
2. Install Go plugins:
   ```bash
   go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
   go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
   ```
3. Install PHP plugin:
   ```bash
   pecl install protobuf
   ```

### For Go project
```bash
go mod tidy
```

### For PHP project
```bash
composer install
```

## Code Generation

Generate code for all `.proto` files:
```bash
make proto
```

Generate Go code only:
```bash
make go  
```

Generate PHP code only:
```bash
make php
```

Clean generated files:
```bash
make clean
```

## Usage

### In Go project
```go
import "raid-proto/gen/go/example"
import "raid-proto/gen/go/geo_location"
```

### In PHP project
```php
use RaidProto\Example\MyMessage;
use RaidProto\GeoLocation\GeoLocationRequest;
```
