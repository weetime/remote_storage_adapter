.PHONY: build fmt lint

build:
	go build

fmt:
	go fmt ./...
	goimports -w  -local remote_storage_profile ./

lint:
	golangci-lint run --allow-parallel-runners ./...
