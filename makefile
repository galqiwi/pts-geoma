all:
	./scripts/comp.sh
	make clear

clear:
	rm -f {.,./old}/*.{aux,log,out,synctex.gz}

raw:
	./scripts/comp_raw.sh
	make clear

svg:
	./scripts/svg.sh

init:
	./scripts/init.sh