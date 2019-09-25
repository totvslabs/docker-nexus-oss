FROM quay.io/travelaudience/docker-nexus:3.17.0
ARG GITHUB_ORG
RUN mkdir -p /opt/sonatype/nexus/system/com/larscheidschmitzhermes/ &&\
    wget -O /opt/sonatype/nexus/system/com/larscheidschmitzhermes/nexus3-github-oauth-plugin.zip https://github.com/larscheid-schmitzhermes/nexus3-github-oauth-plugin/releases/download/2.0.2/nexus3-github-oauth-plugin.zip &&\
    unzip /opt/sonatype/nexus/system/com/larscheidschmitzhermes/nexus3-github-oauth-plugin.zip -d /opt/sonatype/nexus/system/com/larscheidschmitzhermes/ &&\
    echo "mvn\:com.larscheidschmitzhermes/nexus3-github-oauth-plugin/2.0.2 = 200" >> /opt/sonatype/nexus/etc/karaf/startup.properties && \
    echo "github.org=${GITHUB_ORG}" > /opt/sonatype/nexus/etc/githuboauth.properties
