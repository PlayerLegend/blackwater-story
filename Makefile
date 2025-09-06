
all: Chapter.pdf
Chapter.pdf: Chapter.md
	pandoc $< -o $@ -V geometry:paperwidth=4in -V geometry:paperheight=6in -V geometry:margin=.5in