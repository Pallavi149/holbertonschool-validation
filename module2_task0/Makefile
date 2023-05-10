build:  ## Compiles source code of application to a binary
	go build -o awesome-api

run:	## Run application in background
	./awesome-api >./awesome-api.log 2>&1 &

stop:	## Stop the application
	pkill awesome-api || true

clean:	stop ##the application and deletes the binary and log file
	rm -rf ./awesome-api awesome-api.log

test:	## Testing the project
	curl http://localhost:9999
	curl http://localhost:9999/health

help:	## Prints a list of targets and their use
	@cat Makefile | grep '##' | tr -d '##' | head -n -1	
