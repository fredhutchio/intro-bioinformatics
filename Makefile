ALL_MDS = $(wildcard src/*.mds)
ALL = $(notdir $(ALL_MDS:mds=html))

LAST_MDS = $(shell ls -tu src/*.mds | head -1)
LAST = $(notdir $(LAST_MDS:mds=html))

SVGS=$(shell grep svg $(LAST_MDS) | cut -f 2 -d' ')
CSS = --css public/css/poole.css --css public/css/syntax.css --css public/css/hyde.css --css public/css/MyFontsWebfontsKit.css --css public/css/custom.css

# Default target: last modified .mds file
last-modified: $(LAST)

all: $(ALL)



nomachine-directions.html: src/nomachine-directions.md
	pandoc $(CSS) src/nomachine-directions.md -o nomachine-directions.html

index.html: README.md nomachine-directions.html
	# Adding the theme Erick wanted for the README.md
	echo  "<div class='theme-fredhutch'> <br/>" > README.alt.md
	echo  "# Intro to Bioinformatics" >> README.alt.md
	cat README.md >> README.alt.md
	echo  "</div>" >> README.alt.md
	pandoc $(CSS) README.alt.md -o index.html

%.html: src/template-revealjs.html src/header.html src/%.mds insert.py Makefile build.sh
	./build.sh src/$*.mds $@

continuous:
	while :; do inotifywait -e modify $(LAST_MDS); make $(LAST); done

edit:
	gvim $(LAST_MDS)

view:
	chromium-browser $(LAST)

count:
	grep "<section" $(LAST) | wc -l

png: $(SVGS)
	sed -e 's/\.svg/.svg.png/' $(LAST) > png_$(LAST)
	for i in $(SVGS); do inkscape --without-gui --export-png=$$i.png --export-dpi 200 $$i; done


