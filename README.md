# Nice resume template

This is my personal template for resume (CV) generation. It generates a resume with size of A4 page with 10mm margins around using "Linux Libertine font".

## How to use:

1. Populate `resume.md` file using [Markdown](https://www.markdownguide.org/basic-syntax) markup style.

2. Install requirements for pdf file generation:
	- `pandoc` — general markup converter
	- `xelatex` — pdf engine

	- on debian or ubuntu run this:

	`sudo apt update && sudo apt install pandoc texlive-xetex`

3. run `make` and test the results in `resume.pdf`
4. (optional) tweak your markdown using custom `pandoc.css`