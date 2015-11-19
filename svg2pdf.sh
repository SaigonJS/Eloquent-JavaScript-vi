#!/bin/bash
# For MAC OSX ONLY, where the CLI inkscape cannot find files with relative path

for file in `find img -type f -name *.svg`
do
	base=$(basename $file .svg);
	echo "Converting: $base.svg -> $base.pdf";
	/Applications/Inkscape.app/Contents/Resources/bin/inkscape --export-pdf="$PWD/img/generated/$base.pdf" "$PWD/img/$base.svg"
done