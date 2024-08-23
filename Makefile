all: pdf

pdf: html
	wkhtmltopdf \
		--enable-local-file-access\
		cv.html\
		cv.pdf

html:
	pandoc --standalone \
		-o cv.html\
		-c style.css\
		cv.md

clean:
	rm -f cv.html cv.pdf
