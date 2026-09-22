# Shipped by the cstar-ocean conda package; installed to
# $PREFIX/etc/conda/activate.d at build time (see recipe.yaml) so it runs on
# every activation of an env containing cstar-ocean.
#
# Keeps the env isolated from Python's user-site (~/.local/lib/pythonX.Y).
# User-site precedes the env's site-packages on sys.path, so anything there
# silently shadows the env's packages. On HPC systems this is a chronic
# failure mode: a module-provided Python of the same minor version shares
# ~/.local, and one stray `pip install --user` (or pip's --user fallback when
# an env isn't writable) breaks the env in ways that are hard to diagnose —
# imports resolve to stale packages, `ModuleNotFoundError` for packages that
# are demonstrably installed, pip installs that "vanish".
#
# The previous value is saved (in a package-specific variable, so it cannot
# collide with the similar hook cstar-ocean's dev-setup.sh writes) and
# restored by the paired deactivate.d script.
export _CSTAR_FORGE_PKG_SAVED_PYTHONNOUSERSITE="${PYTHONNOUSERSITE:-}"
export PYTHONNOUSERSITE=1
