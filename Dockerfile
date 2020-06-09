# XXX: https://github.com/travelaudience/docker-nexus/pull/47
# FROM quay.io/travelaudience/docker-nexus:3.21.2-03
FROM caarlos0/nexus:3.24.0

ENV GITHUB_ORG=''

RUN wget -O /opt/sonatype/nexus/deploy/nexus3-github-oauth-plugin.kar https://github.com/larscheid-schmitzhermes/nexus3-github-oauth-plugin/releases/download/3.1.0/nexus3-github-oauth-plugin.kar

COPY run /etc/service/nexus/run
