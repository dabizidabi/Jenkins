FROM jenkins/jenkins


USER root

RUN apt update && \
    apt install -y python3 python3-distutils

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python3 get-pip.py && \
    pip install ansible --upgrade

USER jenkins
