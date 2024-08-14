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

release: build
	gh api \
		--method POST \
		-H "Accept: application/vnd.github+json" \
		-H "X-GitHub-Api-Version: 2022-11-28" \
		/repos/OWNER/REPO/releases \
		-f "tag_name=v1.0.0" -f "target_commitish=master" -f "name=v1.0.0" -f "body=Description of the release" -F "draft=false" -F "prerelease=false" -F "generate_release_notes=false"