# Makefile for Hello World Go HTTP Server

# Variables
BINARY_NAME=hello

# Build the binary
build:
	go build -o $(BINARY_NAME) main.go

# Run tests
test:
	go test -v
	echo "Tests completed"

# Clean up build artifacts
clean:
	rm -f $(BINARY_NAME)

# Run the HTTP server
run: build
	./$(BINARY_NAME)
