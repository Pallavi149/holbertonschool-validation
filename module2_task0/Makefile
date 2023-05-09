build:  ## Compiles source code of application to a binary
	go mod init github.com/pallavi149/awesome-api
	go build -o awesome-api

run:	## Run application in background
	./awesome-api >./awesome-api.log 2>&1 &

stop:	## Stop the application
	pkill awesome-api || true

clean:	stop ##the application and deletes the binary and log file
	rm -rf ./awesome-api
	rm -f go.mod go.sum awesome-api.log

test:	## Testing the project
	curl http://localhost:9999
	curl http://localhost:9999/health

help:	## Prints a list of targets and their use
	cat Makefile | grep '##' | tr -d '##' | head -n -1	
