MKDOCS = python -m mkdocs

serve:
	$(MKDOCS) $@

build:
	$(MKDOCS) $@ --clean # --verbose

# deploy:
# 	make clean html html
# 	cd "$(DEPLOYDIR)" && git reset --hard && git clean -fd && git rm -r .
# 	cp $(BUILDDIR)/html/.nojekyll "$(DEPLOYDIR)"
# 	cp -r $(BUILDDIR)/html/* "$(DEPLOYDIR)"
# 	cd "$(DEPLOYDIR)" && git add .
# 	cd "$(DEPLOYDIR)" && git commit -m "Update" && git push origin master
