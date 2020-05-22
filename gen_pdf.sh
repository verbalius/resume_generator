#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'
echo "[>] Starting a script"

function error {
	echo "[x] Creating file failed.."
}

trap error INT TERM

DATE=`date '+%Y-%m-%d_%H:%M:%S'`
input_file=$1
output_file=${input_file%.*}.pdf

MAIN_FONT=LinLibertine_R.otf
BOLD_FONT=LinLibertine_RB.otf
ITALIC_FONT=LinLibertine_RI.otf
BOLD_ITALIC_FONT=LinLibertine_RBI.otf

echo "[>] Creating PDF from $input_file"

pandoc --pdf-engine=xelatex	\
		-V mainfont="$MAIN_FONT" \
		-V "mainfontoptions:BoldFont=$BOLD_FONT, ItalicFont=$ITALIC_FONT, BoldItalicFont=$BOLD_ITALIC_FONT" \
		-V geometry:paperwidth=210mm	\
		-V geometry:paperheight=290mm	\
		-V geometry:margin=0.5in		\
		-s $input_file					\
		-o $output_file

if [ $? -eq 0 ];
then
	echo "[+] Created $output_file"
else
	echo "[!] Error!"
fi