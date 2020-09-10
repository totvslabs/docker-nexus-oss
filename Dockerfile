FROM quay.io/travelaudience/docker-nexus:3.26.1

ENV GITHUB_ORG=''

RUN wget -O /opt/sonatype/nexus/deploy/nexus3-github-oauth-plugin.kar https://github.com/larscheid-schmitzhermes/nexus3-github-oauth-plugin/releases/download/3.1.0/nexus3-github-oauth-plugin.kar

COPY run /etc/service/nexus/run
