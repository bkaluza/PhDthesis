 Introduction
===============

This package provides all of the files needed to support the production and typesetting of a PhD thesis at Jozef Stefan International Postgraduate School. For contributions, comments, and bug reports, please contact ?? at ?@ijs.si.

Contributions were made by Petra Kralj Novak, Vedrana Vidulin, Bostjan Kaluza, Biljana Mileva Boshkoska, Vid Podpecan and many others.

Contents
===============
### Documentation

  - **README.md** this file.
  - **thesis.pdf** example thesis, read this before you start.
  
### Files you should edit

  - **thesis.tex** generates the thesis document. Edit this to change the title, author and year of the thesis and to include each of your chapters and appendices.
  - **references.bib** BibTeX files containing references cited in the thesis. 
  - **chapters/** directory containing LaTeX files for each of your chapters or appendices. Edit these as you wish. The file **chapters/introduction.tex** describes how the various facilities provided in this template can be used. Edit these as you wish.
  - **frontmatter/** directory containing LaTeX files for abstract in english and slovene, and list of abbrevations used in thesis. Edit these as you wish.
  - **figures/** directory containing all figures used in the thesis. Edit these as you wish.
  
### Files you should not edit
  - **MPSthesis.cls**  controls the way that the thesis is typeset. Do not edit this.
  - **mps4_5.bst** controls the way references are formated. Do not edit this.
  - **babelbst.tex** controls the way references are formated. Do not edit this.
  - **englbst.tex** controls the way references are formated. Do not edit this.

All other files are automatically generated.
  


Installation and usage
==================

The template for MPS thesis is fully contained with in MPSThesis.cls. The starting document is thesis.tex. Follow the initial setup in the file. The user should be acquainted with the basics of the Glossaries package (http://www.ctan.org/tex-archive/macros/latex/contrib/glossaries) and not afraid of using shell (or command prompt for Windows users).


To successfully compile the thesis.tex and produce the thesis.pdf proceed with the following steps:

1. `latex thesis.tex` (this command means to compile the latex file thesis.tex; if you use figures with extensions other than ps/eps, use the command pdflatex thesis.tex, which accepts also  JPG, PNG and PDF formats, or even TIF, if you are running under MAC system). The following happens:
	- a thesis.pdf and some additional files are created. 
	- the pdf is not yet complete; the following structures are missing: table of contents, list of abbreviations, citations, publications related to the dissertation, lists of tables, figures and algorithms are empty. 
	- to finish the document, follow the steps:  
2. `latex thesis.tex` (compile the second time)
	- the MPS logo is added
3. `latex thesis.tex` (compile the third time)
	- table of contents appeared, and list of tables, figures and algorithms are filled
4. `bibtex thesis` (compile the bibliography)
	- auxiliary files are created that are necessary for adding the references and citations in the thesis.pdf
5. `latex thesis.tex` (compile the file)
6. `latex thesis.tex` (compile again)
	- after compiling twice, the citations and the list of references should appear. If they do not, try compiling several more times. 
7. `sh mkGlos.sh` (this command creates the necessary files for the List of abbreviations. Alternatively, open the file mkGlos.sh and run the two commands that are given inside)
8. `latex thesis.tex` (compile the file)
9. `latex thesis.tex` (compile again)
	- list of abbreviations should appear; if it does not, compile several more times
10. `bibtex bu1.aux` ( run bibtex for all bu*.aux files: bu1.aux, bu2.aux etc.)
11. `latex thesis.tex` (compile the file) 
	- publications related to the dissertation should appear.

The thesis.pdf s now complete.



### For Windows ###

 * Download and install MikTex: http://miktex.org/
 * Download this Git Repo 

To complie, from the MSYS command prompt run: 
    `xelatex -synctex=-1 thesis.tex`


### For Mac OS X ###

TODO

### For Ubuntu ###

TODO




TODO List
=================

### Critical:

 - **Tekst**:
	- pisava modern \usepackage{lmodern}
	- stran z referencami ima glavo in stevilko strani (glavo sem znal odstraniti, stevilke strani ne)
	- naslova "List of figures" in "List of tables" sta v vecji pisavi (pa Abstract in povzetek tudi)
	- imena poglavij v headerjih so z velikimi tiskanimi crkami (a je to prav)
	- ostevilcevanje slik in tabel v appendixu nima predpone A,B,... pri sebi sem dodal \setcounter{figure}{0} \renewcommand{\thefigure}{A.\arabic{figure}} za vsak apendix posebej
	- paket "arydshln" mora biti nalozen kasneje kot array, longtable, colortab, colortbl, sicer pride do cudnih napak (jaz sem dodal \usepackage{longtable} na konec in zelo dolgo iskal napako)
	- ali je poglavje "Publications related to the dissertation" ostevilceno ali ne (ali je del appendixa)
	- velikost fonta stevilke pri naslovu poglavja je vecja od fonta naslova
	- zgornji rob pri naslovu poglavja je nizji od ostalih
 - **V izpisu referenc**
	* za url-jem se vedno izpise pika
	* pri doktoratih in magisterijih ustanova ni v oklepaju
	* inbook citati so cisto narobe, recimo pri Springer knjigah, ki so izsle kot volume X serije LNCS
 - **Bibliografija:**
	* v kategoriji "incollection" se izpis strani ponovi 3x
	* pri proceedings se izpise samo booktitle (kratica) namesto title
	* publisher se pojavlja v oklepaju (ne vem ali je to pravilno ali ne)
	
### Nice to have:
 - 
 - skripta, ki zgenerira thesis.pdf
 - pdf bookmarks
 - razsirjena navodila v thesis.pdf

