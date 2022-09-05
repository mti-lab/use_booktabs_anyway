.PHONY: all build clean clean_all

all: clean build

# -shell-escape is required for minted
build:
	uplatex -shell-escape ./src/main.tex 
	uplatex -shell-escape ./src/main.tex 
	dvipdfmx main.dvi -o main.pdf
	mv main.pdf web/main.pdf

clean:
	rm -rf *.dvi *.log *.aux *.out _minted*

clean_all: clean
	rm -rf web/main.pdf


