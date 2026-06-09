ARG BASE_IMAGE
FROM ${BASE_IMAGE}

COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml