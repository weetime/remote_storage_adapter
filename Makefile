.PHONY: build fmt lint install-tools

TOOLS_MOD_DIR = ./internal/tools

build:
	go build

fmt:
	go fmt ./...
	goimports -w  -local remote_storage_profile ./

lint:
	golangci-lint run --allow-parallel-runners ./...

install-tools:
	cd $(TOOLS_MOD_DIR) && go install golang.org/x/tools/cmd/goimports
	cd $(TOOLS_MOD_DIR) && go install github.com/golangci/golangci-lint/cmd/golangci-lint
