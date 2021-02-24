FROM ubuntu:18.04

RUN apt update && \
    apt install -y openssh-server curl

RUN useradd -m remote_user && \
    echo "remote_user:1234" | chpasswd && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user. -R /home/remote_user/.ssh && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/bin/ssh-keygen -f /home/remote_user/.ssh/id_rsa

RUN apt install -y python3 python3-distutils

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python3 get-pip.py 

RUN mkdir -p /run/sshd

CMD /usr/sbin/sshd -D
