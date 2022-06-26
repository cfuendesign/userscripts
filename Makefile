THIS_REPO := $(abspath $(lastword $(MAKEFILE_LIST)))

clean:
	sh ./scripts/clean.sh;

ask: clean
	git config --global --add safe.directory "${THIS_REPO}";

update: ask
	git submodule update --init --recursive;

spill: update
	sh ./scripts/spill.sh;
