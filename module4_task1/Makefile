DOCKER=docker run --rm -v ${PWD}/:/app -w /app awesome:build

build:  ## Builds website
	make golang-build
	make hugo-build

build-docker: ## Build docker image from Dockerfile to build te package
	docker build -t awesome:build -f ./.build/Dockerfile .

golang-build:  ## Runs go build in docker conatainer
	$(DOCKER) go build -v

hugo-build:  ## Generates website from markdown and configuration files in dist/ directory
	$(DOCKER) hugo -v

clean:  ## Cleans up the content of the dist/ directory
	rm -rf dist/*

post:   ## Creates a new blog post whose name and title come from env variables
	$(DOCKER) hugo new posts/$(POST_NAME).md -v
	sed -i '2s/.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

package:	## Creates a zip file containing binary and dist/ directory
	make build
	$(DOCKER) zip -FSr awesome-website.zip dist/ awesome-api

test:  ## Runs unit test and integration test
	make unit-tests
	make integration-tests

unit-tests:	## Tests various make recipes
	$(DOCKER) go test -v  -short -coverprofile=coverage-units.out

integration-tests:	## Start a server and check localhost URL
	$(DOCKER) go test -v -coverprofile=coverage-integrations.out

validate:	## Checks the current working directory
	pwd

lint:	## Apply lint to README and DEPLOY files
	$(DOCKER) markdownlint README.md DEPLOY.md

stop:	## Stop the application
	pkill awesome-api || true

help:	## Prints a list of targets and their usage
	cat Makefile | grep '##' | tr -d '##' | head -n -1


