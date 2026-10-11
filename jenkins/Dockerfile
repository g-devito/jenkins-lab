FROM docker.io/jenkins/jenkins:lts

USER root

RUN cd /tmp && \
curl -fsLO https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz && \
tar -xzf docker-29.9.0.tgz -C /usr/local/bin --strip-components=1 docker/docker && \
rm docker-29.9.0.tgz && \
curl -fsLO https://mirror.openshift.com/pub/openshift-v4/clients/ocp/stable/openshift-client-linux.tar.gz && \
tar -xzf openshift-client-linux.tar.gz -C /usr/local/bin oc && \
rm openshift-client-linux.tar.gz


USER jenkins
