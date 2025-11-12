FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

RUN apt-get update
RUN apt-get install build-essential chrpath cpio debianutils diffstat file gawk gcc git iputils-ping libacl1 \
     liblz4-tool locales python3 python3-git python3-jinja2 python3-pexpect python3-pip python3-subunit socat \
     texinfo unzip wget xz-utils zstd locales tzdata -y
RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

RUN mkdir -p /var/yocto && \
    groupadd -r yoctobuilder && \
    useradd -m -r -g yoctobuilder yoctobuilder && \
    chown -R yoctobuilder:yoctobuilder /var/yocto

USER yoctobuilder

CMD [ "bash" ]