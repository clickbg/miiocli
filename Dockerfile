FROM python:slim

ENV PYTHONUNBUFFERED 1
ENV CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse

RUN ln -s /usr/bin/dpkg-split /usr/sbin/dpkg-split
RUN ln -s /usr/bin/dpkg-deb /usr/sbin/dpkg-deb
RUN ln -s /bin/rm /usr/sbin/rm
RUN ln -s /bin/tar /usr/sbin/tar

RUN apt-get clean \
    && apt-get update \
    && apt-get install -y build-essential rustc libssl-dev libffi-dev python3-dev cargo pkg-config \
    && apt-get clean \
    && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

RUN pip install -U pip
RUN --mount=type=tmpfs,target=/root/.cargo pip install python-miio

RUN apt-get remove -y build-essential rustc libssl-dev libffi-dev python3-dev cargo pkg-config \
    && apt-get autoremove -y \
    && rm -rf /root/.cache /root/.cargo
