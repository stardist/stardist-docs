MKDOCS = python -m mkdocs

serve:
	$(MKDOCS) $@

build:
	$(MKDOCS) $@ --clean # --verbose

install:
	python -m pip install -r requirements.txt

deploy:
	$(MKDOCS) gh-deploy --force

