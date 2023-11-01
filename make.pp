make -f makeimpi pp.impi
make[1]: Entering directory '/kfs2/projects/hpcapps/tkaiser/kestrel-tds_0829/reframe/src'
mpiicc -DUSEFAST  ppong.c -O3 -o pp.impi
/usr/bin/bash: mpiicc: command not found
make[1]: *** [makeimpi:31: pp.impi] Error 127
make[1]: Leaving directory '/kfs2/projects/hpcapps/tkaiser/kestrel-tds_0829/reframe/src'
make: *** [Makefile:46: pp.impi] Error 2
