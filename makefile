
REVEALJS := /node_modules/reveal.js
PANOPTS := --standalone --mathjax -V center=false -V history=false -V revealjs-url=$(REVEALJS) --template=template.html
#PANOPTS := -V center=false -V history=false -V revealjs-url=reveal.js --template=template.html
BIBOPTS := --bibliography refs.bib --filter pandoc-citeproc

all: index.html

index.html: talk.md template.html refs.bib
	pandoc -s -t revealjs $(PANOPTS) $(BIBOPTS) -o $@ $<

clean:
	rm -f index.html
