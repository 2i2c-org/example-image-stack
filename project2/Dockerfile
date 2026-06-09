# Inherit from an upstream image
FROM quay.io/2i2c/example-image-stack-base:latest

# We copy the `environment.yml` file in this repo, only adding in extra
# packages that aren't in our base image.
COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

COPY image-tests image-tests
