FROM centos:7.9.2009

ENV RUST_VERSION=1.63.0

RUN yum update -y && \
    yum install -y \
    gcc \
    gcc-c++ \
    make \
    wget \
    tar \
    xz \
    python2 \
    python2-pip

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain $RUST_VERSION && \
    echo 'source $HOME/.cargo/env' >> ~/.bashrc

RUN yum clean all && \
    rm -rf /var/cache/yum

ENV PATH="/root/.cargo/bin:${PATH}"

RUN rustc --version && \
    cargo --version && \
    python2 --version 
    #&& \
    # pip2 --version

WORKDIR /root/workspace/exp

CMD ["/bin/sh", "run.sh"]