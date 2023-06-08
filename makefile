.PHONY = build publish mypy tox
DEFAULT_TARGET: build

init:
	python -m venv .venv
	source .venv/bin/activate
	pip install -e .
	pip install '.[test]'
	pip install '.[check]'

mypy:
	mypy src
	mypy tests
	mypy tools

build:
	rm -rf build dist
	python -m build --sdist --wheel --outdir dist/

publish:
	twine upload --verbose dist/*
