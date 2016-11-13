
objects := $(wildcard src/*)

.PHONY: all

all: build

build: dist/package.zip

dist/package.zip: $(objects)
	cd src && zip -r "../$@" $(patsubst src/%,%,$^)

$(objects):

