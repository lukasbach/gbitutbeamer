@echo off
echo Recompiling all slides...
echo
FOR %%f in (*.tex) DO ( 
	IF "%%f" == "slides_tutall.tex" (
		echo found
	) ELSE (
		REM PAUSE
		echo Generating live beamer slides: %%f
		pdflatex "\input{%%f}"
		pdflatex "\input{%%f}"
		MOVE %%~nf.pdf slides\liveslide_%%~nf.pdf
		echo Generating printing beamer slides: %%f
		pdflatex "\def\compiletype{print} \input{%%f}"
		pdflatex "\def\compiletype{print} \input{%%f}"
		MOVE %%~nf.pdf slides\printslide_%%~nf.pdf
	)
)

REM pdflatex slides_tutall.tex
REM pdflatex slides_tutall.tex
REM MOVE slides_tutall.pdf slides\slides_tutall.pdf
	
cleanup.bat
pause