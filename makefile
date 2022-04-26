.PHONY: clean build dist-test dist
SHELL := /bin/bash

clean:
	rm -rf dist

build:
	python -m pip install --upgrade build
	python -m build

dist-test:
	python -m pip install --user --upgrade twine
	python -m twine upload --repository testpypi dist/*

dist:
	python -m pip install --user --upgrade twine
	python -m twine upload dist/*
