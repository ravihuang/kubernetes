FROM centos

RUN yum install -y epel-release && \
    sed -i -e 's/keepcache=0/keepcache=1/' /etc/yum.conf && \
    yum install -y make git golang which && \
    git clone https://github.com/kubernetes/kubernetes.git && \
    cd kubernetes && make && make install
