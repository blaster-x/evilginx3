TARGET=evilginx
PACKAGES=core database log parser

.PHONY: all build clean install
all: build

build:
	@go build -o ./build/$(TARGET) -mod=vendor main.go

clean:
	@go clean
	@rm -f ./build/$(TARGET)

install:
	@install -m 0755 ./build/$(TARGET) /usr/local/bin/$(TARGET)

