from docutils.nodes import make_id


# slugify as used by sphinx for backwards compatibility (to not break existing links)
# - https://github.com/sphinx-doc/sphinx/issues/2574
# - https://github.com/sphinx-doc/sphinx/issues/8709#issuecomment-763605496
# use same signature as pymdownx.slugs.slugify
def slugify(text, sep):
    if sep != "-":
        raise NotImplementedError(sep)
    return make_id(text)
