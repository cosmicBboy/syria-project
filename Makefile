setup: install-python

install-python:
	# Install pyenv and python 2.7.11
	curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
	pyenv update
	echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
	echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
	echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
	exec "$SHELL"
	pyenv install 2.7.11
	# Install pyenv-virtualenv
	git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
	echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile

install-virtual-env:
	# TODO: automate creation of virtual enviroment. Look at these docs
	# https://github.com/yyuu/pyenv-virtualenv

install-jupyter-kernel:
	# TODO: automate creation of Jupyter Kernel for the virtual environment
	# See here for instructions:
	# http://www.alfredo.motta.name/create-isolated-jupyter-ipython-kernels-with-pyenv-and-virtualenv/

deps:
	pip install -r requirements.txt
