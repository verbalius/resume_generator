
output: resume.md gen_pdf.sh
ifeq ($(shell which pandoc 2> /dev/null),)
	$(shell echo "No pandoc, please install pandoc!")
else
	./gen_pdf.sh resume.md
endif