SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = sphinx-intl
SOURCEDIR     = .
BUILDDIR      = build


all: html

doc: html

builddir:
	mkdir -p build/html

clean:
	rm -rf build/html

html: builddir
	sphinx-build -b html -D language=zh_CN . ./build/html

livehtml: builddir
	sphinx-autobuild --ignore "*.git/*" --ignore "*.lock" --ignore "*.pyc" --ignore "*.swp" --ignore "*.swpx" --ignore "*.swx" -b html -D language=zh_CN . ./build/html

commit:
	git add * && git commit -m 'Update generated docs'

.PHONY : all doc builddir clean html livehtml

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)