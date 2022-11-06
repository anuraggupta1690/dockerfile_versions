FROM jenkins/jenkins
USER root
RUN  apt-get update 
RUN apt install -y python && apt install -y pip && pip install pytest && pip install pytest-xdist && pip install openpyxl && pip install pytest-html
RUN apt-get install -y --no-install-recommends     ca-certificates     curl     git     gnupg     gpg     libfontconfig1     libfreetype6     ssh-client     tini     unzip
USER jenkins
