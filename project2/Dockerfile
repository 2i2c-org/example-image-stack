ARG IMAGE_NAME_PREFIX
FROM ${IMAGE_NAME_PREFIX}base:latest

# We copy the `environment.yml` file in this repo, only adding in extra
# packages that aren't in our base image.
COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml
