build:  ## Generates website from markdown and configuration files in dist/ directory
	hugo

clean:  ## Cleans up the content of the dist/ directory
	rm -rf dist/*

post:   ## Creates a new blog post whose name and title come from env variables
	hugo new posts/$(POST_NAME).md
	sed -i '2s/.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help:	## Prints a list of targets and their usage
	cat Makefile | grep '##' | tr -d '##' | head -n -1


