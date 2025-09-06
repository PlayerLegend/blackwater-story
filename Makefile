
all: Chapter.pdf
Chapter.pdf: Chapter.md
	pandoc $< -o $@ -V geometry:paperwidth=4in -V geometry:paperheight=6in -V geometry:margin=.5in

wc:
	wc -w Chapter.md

check-interactive:
	clear
	aspell --personal=aspell-personal.txt -c Chapter.md

check:
	clear
	aspell --home-dir=. --personal=aspell-personal.txt list < Chapter.md