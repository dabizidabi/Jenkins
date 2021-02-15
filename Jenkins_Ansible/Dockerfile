FROM jenkins/jenkins


USER root

RUN curl -O https://bootstrap.pypa.io/2.7/get-pip.py && \
    python get-pip.py && \
    pip install ansible --upgrade


USER jenkins
