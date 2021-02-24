FROM ubuntu:18.04

RUN apt update && \
    apt install -y openssh-server curl

RUN mkdir /root/.ssh && \
    chmod 700 /root/.ssh

COPY remote-key.pub /root/.ssh/authorized_keys

RUN chown root. -R /root/.ssh && \
    chmod 600 /root/.ssh/authorized_keys

RUN /usr/bin/ssh-keygen -f /root/.ssh/id_rsa

RUN apt install -y python3 python3-distutils

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python3 get-pip.py 

RUN mkdir -p /run/sshd

CMD /usr/sbin/sshd -D
