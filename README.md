# python-tooling
Template for data science projects including automated tooling such as formatting, linter and testing. 

## Project structure:
```yml
├── data/
├── docs/
├── Makefile
├── notebooks/
│   └── sample_notebook.ipynb
├── README.md
├── requirements.txt
├── setup.cfg
├── setup.py
└── src
    ├── tests
    │   └── test_utils.py
    └── utils.py
```
Jupyter notebooks are put in the `notebooks/` directory and may import functions, classes etc. from modules placed in the `src/` directory. To handle imports in a convenient way, `src` is installed as a local package. The basic idea is that you can have many different notebooks for testing different things in the directory `notebooks/` and some will utilize the same functions or classes. To maximize reusability, functions and classes should be defined in clean, well-formatted and tested code placed in `src/` directory.

The `Makefile` contains commands for creating a virtual environment, installing dependencies, formatting, linting and testing. 

## Installing dependencis
- `make create-env`: creates a local conda environment with a specific python version
- `conda activate ./.env`: activates this environment
- `make install`: installs the dependencies specified in `requirements.txt` as well as local package `src`

Do not forget to activate the environment and select the correct kernel when running  a jupyter notebook

## Formatting, linting and testing
- `make format` will run *isort* (sorting imports) and *black* (PEP 8 compliant code formatter) on all `.py` in `src/` and all `.ipynb` files in `notebooks/`
- `make lint` will run *pylint* (static code analysis) on all `.py` files in `src/`
- `make test` will run *pytest* and all tests defined in `src/tests/`

Linting is not applied to notebooks since it is a bit too strict and not always suitable considering how notebooks are used. But the option exists and you can use `nbqa pylint --rcfile=setup.cfg notebooks/` to run linter on notebooks as well. 
