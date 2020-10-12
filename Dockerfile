FROM ubuntu:18.04
USER root

ARG ansible_version="2.9.7"

ENV ANSIBLE_VERSION=${ansible_version}}

RUN echo 'alias ap="ansible-playbook"' >> ~/.bashrc

RUN apt update && \
    apt install -y software-properties-common && \
    apt-add-repository -y --update ppa:ansible/ansible && \
    apt-get -y install python3-pip && \
    pip3 install boto && \
    pip3 install boto3 && \
    pip3 install botocore &&\
    pip3 install ansible

WORKDIR /opt/ansible/
CMD /bin/bash