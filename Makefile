PYTHON:=python3
CC:=gcc


all:
	$(PYTHON) setup.py build_ext --inplace

clean:
	rm -rf build
	rm -rf __pycache__
	rm -rf wrap/__pycache__
	rm -rf wrap/*.so
	rm -rf *~