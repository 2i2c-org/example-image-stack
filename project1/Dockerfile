ARG IMAGE_NAME_PREFIX
FROM ${IMAGE_NAME_PREFIX}base:latest

COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml