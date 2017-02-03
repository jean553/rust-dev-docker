# vim:set ft=dockerfile
FROM debian:jessie

# Only installs ansible's minimal required dependencies.

RUN apt-get update -y && \
    apt-get upgrade -y

RUN apt-get install -y \
    python-dev \
    python-pip  \
    libffi-dev \
    libssl-dev

RUN pip install --upgrade \
    ansible \
    setuptools \
    packaging \
    pyparsing \
    appdirs

COPY provisioning/ provisioning

# Execute ansible playbook(s).

RUN ansible-playbook provisioning/site.yml -c local
