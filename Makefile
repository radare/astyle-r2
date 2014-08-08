DESTDIR?=
PREFIX=/usr

all:
	cd src ; $(MAKE)

clean:
	cd src ; $(MAKE) clean

install:
	cp -f src/astyle-r2 ${DESTDIR}/${PREFIX}/bin
