mkdir OMERO.java-5.6.10-ice36
unzip $SRC_DIR/OMERO.java-5.6.10-ice36.zip -d $PREFIX/opt/OMERO.java-5.6.10-ice36

# Copy the [de]activate scripts to $PREFIX/etc/conda/[de]activate.d.
# This will allow them to be run on environment activation.
mkdir -p "${PREFIX}/etc/conda/activate.d"
echo 'export OMERODIR='$PREFIX'/opt/OMERO.java-5.6.10-ice36' > "${PREFIX}/etc/conda/activate.d/${PKG_NAME}_activate.sh"
mkdir -p "${PREFIX}/etc/conda/deactivate.d"
echo 'unset OMERODIR' > "${PREFIX}/etc/conda/deactivate.d/${PKG_NAME}_deactivate.sh"