# Inherit from an upstream image
FROM pangeo/pangeo-notebook:2026.06.04

# We copy the `environment.yml` file in this repo, only adding in extra
# packages that aren't in our base image.
COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

COPY image-tests image-tests
