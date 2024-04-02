compile: compile-presentation compile-distribution

compile-presentation:
	pandoc -t beamer --slide-level 2 -i presentation.md -o presentation.pdf

compile-distribution:
	pandoc -t beamer --slide-level 2 presentation.md -o presentation-dist.pdf

watch:
	fd presentation.md | entr pandoc -t beamer --slide-level 2 presentation.md -o presentation-dist.pdf
