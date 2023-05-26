build:  ## Builds website
	make golang-build
	make hugo-build

golang-build:  ## Runs go build in docker conatainer
	docker run --rm -v ${PWD}/:/app -w /app golang:1.15.8-buster go build -v
hugo-build:  ## Generates website from markdown and configuration files in dist/ directory
	hugo
clean:  ## Cleans up the content of the dist/ directory
	rm -rf dist/*

post:   ## Creates a new blog post whose name and title come from env variables
	hugo new posts/$(POST_NAME).md
	sed -i '2s/.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

package:	## Creates a zip file containing binary and dist/ directory
	make build
	zip awesome-website.zip dist/index.html

unit-tests:	## Tests various make recipes
	docker run --rm -v ${PWD}/:/app -w /app golang:1.15.8-buster go test -v  -short -coverprofile=coverage-units.out

integration-tests:	## Start a server and check localhost URL
	docker run --rm -v ${PWD}/:/app -w /app golang:1.15.8-buster go test -v -coverprofile=coverage-integrations.out

validate:	## Checks the current working directory
	pwd

lint:	## Apply lint to README and DEPLOY files
	markdownlint README.md DEPLOY.md

stop:	## Stop the application
	pkill awesome-api || true

help:	## Prints a list of targets and their usage
	cat Makefile | grep '##' | tr -d '##' | head -n -1


