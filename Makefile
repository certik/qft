all:
	mkdir -p tmp
	cp src/macros.tex tmp/
	./convert_doc.py src/main.xml tmp/qft.xml
	./convert_doc.py tmp/qft.xml tmp/qft.tex
	cd tmp; pdflatex qft.tex
	cd tmp; pdflatex qft.tex
	cd tmp; pdflatex qft.tex
	cp tmp/qft.pdf .

clean:
	rm -rf tmp/
