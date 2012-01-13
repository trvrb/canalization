# Do a full compile, outputting to PDF and HTML

filestem = ARGV[0]
`pdflatex #{filestem}`
`bibtex #{filestem}`
`pdflatex #{filestem}`
`pdflatex #{filestem}`
`htlatex #{filestem} ms`
`ruby clean.rb #{filestem}`
`mv #{filestem}.html index.html`
