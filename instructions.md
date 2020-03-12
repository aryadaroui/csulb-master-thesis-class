# CSULB MS Thesis Template Instructions

The thesis template will automatically format the thesis document; all the writer has to worry about is writing and inserting the proper information.

The thesis template has divided major parts of the document into different files for easier navigation, but they are all included into the `main.tex` file for compilation. Simply go through the different files: `title.tex`, `abstract.tex` , etc., and fill in your content.

Make sure to input your thesis `\title{}` and `author{}` name at the top of `main.tex`

## Chapters

Your main content will go in the chapter files. If you need more chapters, duplicate one of the given  edit it, and `\include{}` it in  `main.tex`.

## Appendices

If you have only one appendix entry make sure you only use the following code in `main.tex`:

```latex
%% for SINGLE appendix --- %%
\input{Appendix/appendix-single.tex}
%% ----------------------- %%
```

If you have multiple appendix entries use the following:

```latex
%% for MULTIPLE appendices --- %%
%% Add more appendices below in new .tex files as needed. Use these given appendices as a template.
\appendicesTitlePage	% adds appendices title page
\begin{appendices}		% fixes appendices chapter numbering
	\input{Appendix/appendixA.tex}
	\input{Appendix/appendixB.tex}	

\end{appendices}
%% --------------------------- %%
```

Both have been already provided in the template. Either comment out or delete the one not used.

It is important to use the given files to work from as they use special commands for formatting the title pages, `\singleAppendixTitle{}` and `\multAppendixTitle{}`. If you need more than two appendices, duplicate one of the given ones and work from there.

## References/bibliography

You can manage your bibliography contents in the `references.bib` (preferably using software like BibDesk). Cite the references using the `\cite{}` command. The Bibliography style can be changed in the `\bibliographystyle{}` line.

## File structure

-   `CSULB Master Thesis Template/`
    -   `Chapters/`
        -   `chapter1.tex`
        -   `chapter2.tex`
    -   `Appendices/`
        -   `appendix-single.tex`
        -   `appendixA.tex`
        -   `appendixB.tex`
    -   `Figures/`
        -   `lb.pdf`
    -   `Front matter/`
        -   `title.tex`
        -   `copyright.tex`
        -   `abstract.tex`
        -   `acknowledgments.tex`
        -   `abbreviations.tex`
        -   `works.tex`
        -   `preface.tex`
    -   `main.tex`
    -   `references.bib`
    -   `csulbmsthesis.cls`
    -   `main.pdf`
    -   `instructions.pdf`
    -   `intro to latex.pdf`

The `csulbmsthesis.cls` file contains the major formatting instructions and command definitions for the template. It is not recommended that you edit anything in there unless you're comfortable with $\mathrm{\LaTeX}$. 