#all : impi  cray  gnu  intel open mpich openg mpichg dmod pp
all :  impi  cray  gnu  intel open mpich openg mpichg dmod

impi: makeimpi
	make -f makeimpi 

cray: makeprgcray
	make -f makeprgcray

gnu: makeprggnu
	make -f makeprggnu

intel: makeprgintel
	make -f makeprgintel

open: makeopen
	make -f makeopen

mpich: makempich
	make -f makempich


openg: makeopen_g
	make -f makeopen_g

mpichg: makempich_g
	make -f makempich_g

clean:
	make -f makeimpi clean
	make -f makeprgintel clean
	make -f makeprggnu clean
	make -f makeprgcray clean
	make -f makeopen clean
	make -f makempich clean
	make -f makeopen_g clean
	make -f makempich_g clean
	rm -rf runall.tgz simple.tgz

dmod:
	rm -rf *.o *mod

pp: pp.impi pp.cray pp.gnu pp.intel pp.open pp.mpich pp.openg pp.mpichg

pp.impi: makeimpi
	make -f makeimpi pp.impi

pp.cray: makeprgcray
	make -f makeprgcray pp.cray

pp.gnu: makeprggnu
	make -f makeprggnu pp.gnu

pp.intel: makeprgintel
	make -f makeprgintel pp.intel

pp.open: makeopen
	make -f makeopen pp.open

pp.mpich: makempich
	make -f makempich pp.mpich


pp.openg: makeopen_g
	make -f makeopen_g pp.openg

pp.mpichg: makempich_g
	make -f makempich_g pp.mpichg

tar:
	tar -czf runall.tgz \
             cases eagle ecases fhostone.F90 getcore.c make1api Makefile makefile.include \
             makeimpi makeopen makeprgcray makeprggnu makeprgintel maskgenerator.py masks.txt \
             phostone.c post ppong.c readme.md runall runpp subsweep sweep todo.py tymer \
	     scases array mapping.py simple makempich makempich_g makeopen_g

simple.tgz: 
	tar -czf simple.tgz fhostone.F90  getcore.c  make1api  Makefile  makefile.include  \
		makefile.org  makeimpi  makeopen  makeprgcray  makeprggnu  makeprgintel \
		phostone.c  post  ppong.c simple makempich makempich_g makeopen_g
