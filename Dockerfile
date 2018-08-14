FROM ubuntu:18.04
LABEL maintainer="Conrad Taylor <conradwt@gmail.com>"

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get -qq update -y && apt-get -qq install -y \
  apt-transport-https \
  apt-utils \
  autoconf \
  bison \
  build-essential \
  bzip2 \
  ca-certificates \
  curl \
  dpkg \
  git \
  grep \
  libbz2-dev \
  libffi-dev \
  libgdbm-dev \
  libgdbm5 \
  libglib2.0-0 \
  libncurses5-dev \
  libreadline6-dev \
  libsm6 \
  libsqlite3-dev \
  libssl-dev \
  libxext6 \
  libxrender1 \
  libyaml-dev \
  mercurial \
  sed \ 
  sqlite3 \
  subversion \
  sudo \
  wget \
  zlib1g-dev

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
  apt-get -qq update -y && apt-get -qq install -y nodejs && \
  curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get -qq update -y && apt-get -qq install -y yarn

RUN TINI_VERSION=`curl https://github.com/krallin/tini/releases/latest | grep -o "/v.*\"" | sed 's:^..\(.*\).$:\1:'` && \
  curl -L "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini_${TINI_VERSION}.deb" > tini.deb && \
  dpkg -i tini.deb && \
  rm tini.deb && \
  apt-get clean

RUN useradd -m -s /bin/bash -G sudo pyuser
RUN echo "pyuser:pyuser" | chpasswd
USER pyuser
WORKDIR /home/pyuser

RUN wget --quiet https://repo.continuum.io/archive/Anaconda3-5.2.0-Linux-x86_64.sh -O ~/anaconda.sh && \
  /bin/bash ~/anaconda.sh -b -p /home/pyuser/anaconda && \
  rm ~/anaconda.sh && \
  echo ". /home/pyuser/anaconda/etc/profile.d/conda.sh" >> ~/.bashrc && \
  echo "conda activate base" >> ~/.bashrc

RUN /home/pyuser/anaconda/bin/pip install --upgrade pip tensorflow && \
  /home/pyuser/anaconda/bin/pip install --upgrade pip bokeh==0.13 && \
  /home/pyuser/anaconda/bin/bokeh sampledata && \
  /home/pyuser/anaconda/bin/conda install -c conda-forge jupyterlab

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]
