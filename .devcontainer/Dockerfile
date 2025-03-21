FROM mcr.microsoft.com/devcontainers/base:jammy

ENV INSTALL_DIR=/usr/local/bin
ENV PATH=${INSTALL_DIR}:${PATH}
RUN mkdir -p ${INSTALL_DIR}

RUN curl https://zyedidia.github.io/eget.sh | sh && mv eget ${INSTALL_DIR}/eget
RUN eget --download-only mutagen-io/mutagen && tar -zxvf mutagen_*.tar.gz -C ${INSTALL_DIR} && rm mutagen_*.tar.gz
RUN eget --to=${INSTALL_DIR} mutagen-io/mutagen
RUN eget --to=${INSTALL_DIR} pomdtr/smallweb
RUN eget --to=${INSTALL_DIR} --asset=deno-aarch64-unknown-linux-gnu.zip denoland/deno
RUN eget --to=${INSTALL_DIR} --asset=_linux_arm64.tar.gz cli/cli
