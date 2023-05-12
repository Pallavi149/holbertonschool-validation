lint:	##lint should fail when the linter catches and error
	golangci-lint run ./main.go

build:  lint ## Compiles source code of application to a binary
	go build -o awesome-api

run:	## Run application in background
	./awesome-api >./awesome-api.log 2>&1 &

stop:	## Stop the application
	pkill awesome-api || true

clean:	stop ##the application and deletes the binary and log file
	rm -rf ./awesome-api awesome-api.log coverage-units.out coverage-integrations.out

test:	## Testing current connection
	make unit-tests
	make integration-tests

unit-tests:	##should be implemented and should execute (successfully) the Golang unit tests
	go test -v -short -coverprofile=coverage-units.out

integration-tests:	## Run tests to check integrations coverage
	go test -v -coverprofile=coverage-integrations.out

help:	## Prints a list of targets and their use
	cat Makefile | grep '##' | tr -d '##' | head -n -1	
