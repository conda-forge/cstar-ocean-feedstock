# Shipped by the cstar-ocean conda package; installed to
# $PREFIX/etc/conda/deactivate.d at build time (see recipe.yaml).
# Restores PYTHONNOUSERSITE to its pre-activation value (see activate.sh).
if [ -n "${_CSTAR_OCEAN_PKG_SAVED_PYTHONNOUSERSITE:-}" ]; then
  export PYTHONNOUSERSITE="$_CSTAR_FORGE_PKG_SAVED_PYTHONNOUSERSITE"
else
  unset PYTHONNOUSERSITE
fi
unset _CSTAR_OCEAN_PKG_SAVED_PYTHONNOUSERSITE
