
FILE=slides
.PHONY: clean all watch

all: ${FILE}.pdf

${FILE}.pdf: ${FILE}.md
	marp --pdf --allow-local-files ${FILE}.md

watch:
	marp -w --pdf --allow-local-files ${FILE}.md

clean:
	rm ${FILE}.pdf

