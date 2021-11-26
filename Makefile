SRC_DIR = src
NOTEBOOK_DIR = notebooks

create-env:
	conda create --prefix ./.env python=3.9
	conda config --set env_prompt '({name}) '

install:
	pip install -r requirements.txt
	pip install -e .

format:
	isort $(SRC_DIR)
	black $(SRC_DIR)
	nbqa isort $(NOTEBOOK_DIR)
	nbqa black $(NOTEBOOK_DIR)

lint:
	pylint --rcfile=setup.cfg $(SRC_DIR)

test:
	pytest --cov=$(SRC_DIR) $(SRC_DIR)/tests/