FROM centos

RUN yum install -y epel-release && \
    yum install -y make git golang && \
    git clone https://github.com/kubernetes/kubernetes.git && \
    cd kubernetes && make && make install
