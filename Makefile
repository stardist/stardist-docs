# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = StarDist
SOURCEDIR     = .
BUILDDIR      = _build
DEPLOYDIR     = ../stardist.github.io

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

deploy:
	make clean html html
	cd "$(DEPLOYDIR)" && git reset --hard && git clean -fd && git rm -r .
	cp $(BUILDDIR)/html/.nojekyll "$(DEPLOYDIR)"
	cp -r $(BUILDDIR)/html/* "$(DEPLOYDIR)"
	cd "$(DEPLOYDIR)" && git add .
	cd "$(DEPLOYDIR)" && git commit -m "Update" && git push origin master
