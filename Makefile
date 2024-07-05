.DEFAULT_TARGET=all
.SHELLFLAGS = -ec

HTML_FILE = go-game-record-form.html
PDF_FILE = go-game-record-form.pdf
PNG_FILE = go-game-record-form.png

all: $(PDF_FILE) $(PNG_FILE)

## Tool binaries
CHROME ?= /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome

$(PDF_FILE): $(HTML_FILE)
	$(CHROME) \
		--headless \
		--run-all-compositor-stages-before-draw \
		--print-to-pdf=$(PDF_FILE) \
		--no-pdf-header-footer \
		file://$(HTML_FILE)

$(PNG_FILE): $(PDF_FILE)
	magick -density 300 $(PDF_FILE) -alpha remove $(PNG_FILE)
