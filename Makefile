.PHONY: all build clean clean_all

all: clean build

# -shell-escape is required for minted
build: build_jp build_cn

build_jp:
	uplatex -shell-escape ./src/main.tex 
	uplatex -shell-escape ./src/main.tex 
	dvipdfmx main.dvi -o main.pdf

build_cn:
	xelatex -shell-escape ./src/main_cn.tex 
	xelatex -shell-escape ./src/main_cn.tex 
	dvipdfmx main_cn.dvi -o main_cn.pdf

clean:
	rm -rf *.dvi *.log *.aux *.out _minted*

clean_all: clean
	rm -rf main.pdf main_cn.pdf


