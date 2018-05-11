BUILD := latexmk -pdf -interaction=batchmode -synctex=1 -file-line-error
BUILDV := latexmk -pdf -interaction=nonstopmode -synctex=1 -file-line-error
FILE := $(shell basename "$(CURDIR)")
svgimgs := $(wildcard img/*.svg)
svgimtargets := $(patsubst %.svg,%.pdf,$(svgimgs))

ifeq ($(VERBOSE), 1)
	BUILD := $(BUILDV)
endif

.PHONY: all show upload share clean build

all: | $(FILE).pdf show

build: $(FILE).pdf

$(FILE).pdf: $(FILE).tex $(svgimtargets) $(shell find .. -type f)
	$(BUILD) $(FILE).tex

show:
	xdg-open $(FILE).pdf > /dev/null 2>&1 &

share: build
	curl -H "Max-Days: 1" --upload-file ./$(FILE).pdf https://transfer.sh/$(FILE).pdf
	@echo

img/%.pdf: img/%.svg
	inkscape $< --export-pdf=$@

clean:
	git clean -Xf
