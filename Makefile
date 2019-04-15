all: primap-hist-data-description.pdf

primap-hist-data-description.pdf: data-description/primap-hist-data-description.md
	pandoc data-description/primap-hist-data-description.md -o primap-hist-data-description.pdf -V geometry:margin=1in --variable=geometry:a4paper --filter pandoc-citeproc --bibliography data-description/primaphist.bib --csl data-description/copernicus-publications.csl --variable urlcolor=orange
