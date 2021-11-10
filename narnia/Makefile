NEXT_LEVEL_NAME?=
VENV_LOCATION?=venv

setup:
	python -m venv $(VENV_LOCATION)

install: setup
	sudo apt-get install -y sshpass
	$(VENV_LOCATION)/bin/pip install -e binary_utils

new_level:
	./new_level.sh $(NEXT_LEVEL_NAME)
