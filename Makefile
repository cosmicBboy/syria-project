setup:
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

deps:
	pip install -r requirements.txt
