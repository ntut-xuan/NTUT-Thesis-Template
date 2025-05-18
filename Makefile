all: main.pdf

main.pdf: main.tex
	./build.sh

clean:
	find . -type f \( -name "*.aux" -o -name "*.log" -o -name "*.bbl" -o -name "*.blg" \) -delete

.PHONY: main.pdf
