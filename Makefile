IDRIS := idris
PKG   := sandbox

.PHONY: build install clean rebuild check test

build:
	${IDRIS} --build ${PKG}.ipkg

install:
	${IDRIS} --install ${PKG}.ipkg

clean:
	${IDRIS} --clean ${PKG}.ipkg

doc:
	${IDRIS} --mkdoc ${PKG}.ipkg

doc_clean:
	rm -rf ${PKG}_doc

rebuild: clean build

check:
	${IDRIS} --checkpkg ${PKG}.ipkg

test:
	${IDRIS} --testpkg ${PKG}.ipkg

