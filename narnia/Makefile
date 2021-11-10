NEXT_LEVEL_NAME?=

setup:
	python -m venv venv

install: setup
	sudo apt-get install -y sshpass
	venv/bin/pip install -e binary_utils

new_level:
	./new_level.sh $(NEXT_LEVEL_NAME)
