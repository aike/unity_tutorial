
usage:
	echo 'usage: gitbook build|run|stop|pdf'

build:
	gitbook build

run:
	gitbook serve &
	open -a "Google Chrome" http://localhost:4000

stop:
	ps | grep 'gitbook serve' | grep -v grep | awk '{ print "kill " $$1 }' | sh

pdf:
	gitbook pdf ./ ./unity_scene_tutorial.pdf

test:
	cd textlint; \
	textlint ../*.md ../doc/*.md



