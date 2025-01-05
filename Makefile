# NOTE: makeはデフォルトでは一番上のコマンドが実行されるので，デフォルト値を変更
.DEFAULT_GOAL := build
SRC_DIR = .
BUILD_DIR = bin
GO_SRC = $(wlidcard $(SRC_DIR)/*.go)

.PHONY: fmt
fmt:
	goimports -w .

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)

.PHONY: lint
lint: fmt
	staticcheck

.PHONY: vet
vet: fmt
	go vet

.PHONY: build
build: vet $(GO_SRC)
	@mkdir -p bin
	go mod tidy
	go build -o $(BUILD_DIR)
	@ls -lhS $(BUILD_DIR)
