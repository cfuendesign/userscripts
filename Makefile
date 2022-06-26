THIS_REPO := $(abspath $(lastword $(MAKEFILE_LIST)))

clean:
	sh ./scripts/clean.sh;

update: clean
	git submodule update --init --recursive;

spill: update
	sh ./scripts/spill.sh;
