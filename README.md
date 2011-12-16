========================================================================
Canalization of the evolutionary trajectory of the human influenza virus
========================================================================

There's a lot going on with the epidemiology and evolution of influenza; I've made a model that 
attempts capture all the salient details. This includes things like the yearly attack rates, rate of 
antigenic evolution, genetic diversity, and geographic spread. At it's core, the model assumes that 
the antigenic phenotype of the virus can be adequately explained as a point in a Euclidean space. 
Mutation serves to jostle the location of the virus in this space and infection by one virus confers 
immunity to subsequent infection by nearby viruses in this antigenic space. The geometric basis of 
the model stems from empirical studies of influenza's antigenic phenotype (see Smith et al. 2004). 
In this study, I find that evolution in such a space results in a "canalized" trajectory. The best 
move for a virus is to move as far away from its past as possible, resulting in linear antigenic 
movement and a distinctive single-trunked phylogenic tree.

-------------------------------------------

The manuscript is written in LaTeX.  I've included everything necessary to compile to PDF and to 
HTML.  Here I have `canal.bbl` which includes all my references all run through `bibtex`. In this case, 
to compile run:

	pdflatex canal
	pdflatex canal
	
This will produce a PDF entitled `canal.pdf`.  If you want HTML output, run:

	htlatex canal ms
	
This uses `ms.cfg` and `ms.css` to style the resulting HTML output.  This produces a file entitled 
`canal.html`.  There were a couple of styling issues that I couldn't take care of through the 
stylesheet and so I added a small Ruby script to do some post-hoc styling.  Run:

	ruby clean.rb canal.html

-------------------------------------------

Additionally, I've made use of GitHub pages.  This repository is stored in the branch `gh-pages`.  
This causes files to be published at `trvrb.github.com/canalization/`. Here, I've renamed `canal.html` to
`index.html`.  A full compile is possible with:

	pdflatex canal
	pdflatex canal
	htlatex canal ms
	ruby clean.rb canal.html
	mv canal.html index.html

-------------------------------------------

All text is copyright Bedford, Rambaut and Pascual 2011. Distributed under the GPL v3.