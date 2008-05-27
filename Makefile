all: master.pdf

master.pdf: master.tex macros.tex
	cd tmp; pdflatex qft.tex
	cd tmp; pdflatex qft.tex
	cd tmp; pdflatex qft.tex
	cp tmp/qft.pdf .

master.tex:
	mkdir -p tmp
	./convert_doc.py src/main.xml tmp/qft.xml
	./convert_doc.py tmp/qft.xml tmp/qft.tex

macros.tex:
	cp src/macros.tex tmp/
