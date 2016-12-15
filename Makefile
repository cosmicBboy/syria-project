PYTHON ?= python
PROJECT_NAME ?= syria-project

setup: install-python

setup-pyenv:
	# Install pyenv
	curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

install-python:
	# Install python 2.7.11
	pyenv update
	pyenv install 2.7.11

setup-virtual-env:
	pyenv virtualenv 2.7.11 $(PROJECT_NAME)
	echo "$(PROJECT_NAME)" > .python-version

install-jupyter-kernel:
	$(PYTHON) -m ipykernel install --user --name $(PROJECT_NAME)

deps:
	brew install geos
	brew install proj
	pip install -r requirements.txt
	pip install cartopy
