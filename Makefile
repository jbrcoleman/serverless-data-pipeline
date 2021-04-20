setup:
	python3 -m venv ~/.serverless-data-pipeline
install:
	pip3 install --upgrade pip &&\
	pip3 install -r requirements.txt --user

format:
	python3 -m black wiki_lambda/*.py tests/*.py

test:
	python3 -m pytest -vv --cov=wiki_lambda tests/*.py

lint:
	python3 -m pylint --disable=R,C tests/*.py wiki_lambda/*.py
all: install lint test
