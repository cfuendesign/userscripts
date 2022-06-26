clean:
	sh ./scripts/clean.sh;

update: clean
	git submodule update --init --recursive;

spill: update
	sh ./scripts/spill.sh;
