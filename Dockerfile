# FROM debian:latest
FROM ubuntu:16.04
LABEL maintainer="Conrad Taylor <conradwt@gmail.com>"

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get -qq update --fix-missing && apt-get -qq install -y wget bzip2 ca-certificates \
  libglib2.0-0 libxext6 libsm6 libxrender1 \
  git mercurial subversion sudo

RUN apt-get -qq install -y curl grep sed dpkg && \
  TINI_VERSION=`curl https://github.com/krallin/tini/releases/latest | grep -o "/v.*\"" | sed 's:^..\(.*\).$:\1:'` && \
  curl -L "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini_${TINI_VERSION}.deb" > tini.deb && \
  dpkg -i tini.deb && \
  rm tini.deb && \
  apt-get clean

RUN useradd -m -s /bin/bash -G sudo pyuser
RUN echo "pyuser:pyuser" | chpasswd
USER pyuser
WORKDIR /home/pyuser

RUN wget --quiet https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh -O ~/anaconda.sh && \
  /bin/bash ~/anaconda.sh -b -p /home/pyuser/anaconda && \
  rm ~/anaconda.sh && \
  echo ". /home/pyuser/anaconda/etc/profile.d/conda.sh" >> ~/.bashrc && \
  echo "conda activate base" >> ~/.bashrc && \
  /home/pyuser/anaconda/bin/pip install --upgrade pip

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]
