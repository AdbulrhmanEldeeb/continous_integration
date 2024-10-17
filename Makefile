install: 
	pip install -r  requirements.txt 

test : 
	python -m pytest -vv test_main.py 

format: 
	black *.py 

lint: 
	pylint main.py

all: 
	install lint test format 