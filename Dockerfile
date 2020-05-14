FROM python:3-slim

RUN mkdir /ansible && chmod 700 /ansible
WORKDIR /ansible
RUN pip install ansible paramiko

ENTRYPOINT ["ansible-playbook"]