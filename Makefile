install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest --nbval electricity_pricing_prediction.ipynb

format:
	black *.py

lint:
	pylint --disable=R,C test.py

all: install lint test