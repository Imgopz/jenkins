FROM jenkins/jenkins

USER root

RUN curl -O https://bootstrap.pypa.io/3.3/get-pip.py && \
    python get-pip.py && \
    pip install ansible

USER jenkins
