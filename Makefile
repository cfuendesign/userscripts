THIS_REPO := $(abspath $(lastword $(MAKEFILE_LIST)))

clean:
	sh ./scripts/clean.sh;

ask: clean
	@echo Repository Dir: ${THIS_REPO}
	git config --global --add safe.directory "${THIS_REPO}";

update: ask
	git submodule update --init --recursive;

spill: update
	sh ./scripts/spill.sh;
