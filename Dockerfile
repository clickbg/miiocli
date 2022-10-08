FROM python:alpine

RUN ln -s /usr/bin/dpkg-split /usr/sbin/dpkg-split
RUN ln -s /usr/bin/dpkg-deb /usr/sbin/dpkg-deb
RUN ln -s /bin/rm /usr/sbin/rm
RUN ln -s /bin/tar /usr/sbin/tar

RUN apk add --no-cache \
    py-cryptography \
    build-base \
    libressl-dev \
    libffi-dev \
    gcc \
    musl-dev \
    python3-dev 

RUN pip install -U pip
RUN pip install python-miio

RUN apk del build-base libressl-dev libffi-dev gcc musl-dev python3-dev \
    && rm -rf /root/.cache/
