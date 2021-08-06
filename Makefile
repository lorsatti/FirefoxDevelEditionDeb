all: fresh build install

fresh:
	echo fresh

install: 
	echo install

build:
	echo build

clean:
	rm -rf debian/firefox-devedition
	rm -rf debian/*.substvars debian/*.log debian/*.debhelper debian/files debian/debhelper-build-stamp

deb:
	./init_vars.sh
	debuild -i -us -uc -b

.PHONY : install

