.PHONY: test build

default: test

test:
	cabal configure --enable-tests && cabal build && cabal test

build:
	cabal configure && cabal build

dev:
	cabal sandbox init && cabal install --only-dependencies

repl:
	cabal configure && cabal build && cabal repl

run:
	cabal build && dist/build/toaster/toaster