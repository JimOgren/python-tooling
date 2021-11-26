create-env:
	conda create --prefix ./.env python=3.9
	conda config --set env_prompt '({name}) '

install:
	pip install -r requirements.txt
	pip install -e .

format:
	isort src/
	black src/
	nbqa isort notebooks/
	nbqa black notebooks/