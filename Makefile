
# Minimal makefile for Sphinx documentation
#

# update metadata
metadata: 
	python Services/aop_wiki/meta.py
	python Services/cdk_depict/meta.py
	python Services/sysrev/meta.py


# update catalogue and clean up
catalog: $(eval SHELL:=/bin/bash)
	curl -O https://raw.githubusercontent.com/VHP4Safety/cloud/main/docs/catalog.md
	mdToRst catalog.md | tee Services/catalog.rst
	rm -rf catalog.md

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)


