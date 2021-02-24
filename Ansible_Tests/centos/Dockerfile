FROM centos:7

RUN yum -y install openssh-server

RUN mkdir /root/.ssh && \
    chmod 700 /root/.ssh

COPY remote-key.pub /root/.ssh/authorized_keys

RUN chown root. -R /root/.ssh && \
    chmod 600 /root/.ssh/authorized_keys

RUN /usr/sbin/sshd-keygen

RUN yum -y install python3

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py 

CMD /usr/sbin/sshd -D
