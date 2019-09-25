# docker-nexus-oss

This is an another Nexus OSS with GitHub Authentication Realm installed.

## Getting Started

These instructions will cover usage information and for the docker container

### Prerequisities

In order to run this container, you'll need Docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Container Parameters

List the different parameters available to your container

```shell
docker run -p 8081:8081 -v /nexus-data:/nexus-data totvslabs/docker-nexus:[latest|<version>]
```

#### Environment Variables

* `GITHUB_ORG` - Provides your GitHub Organization name.

#### Volumes

* `/nexus-data` - All Nexus Configs, databases and repositories

#### Ports

* `8081` - Nexus OSS Web access

#### Useful File Locations

* `/opt/sonatype/nexus` - NEXUS_HOME location

## Built With

* Alpine Linux 3.10
* OpenJDK JRE 8u212
* Nexus Repository Manager OSS 3.17.0 (release notes)

## Find Us

* [TotvsLabs GitHub](https://github.com/totvslabs/docker-nexus-oss)
* [Travel Audience Quay.io](https://quay.io/repository/travelaudience/docker-nexus)

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the
[tags on this repository](https://github.com/totvslabs/docker-nexus-oss).

## Authors

* **Giovani Zamboni** - *Initial work* - [gzamboni](https://github.com/gzamboni)

See also the list of [contributors](https://github.com/totvslabs/docker-nexus-oss/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

* [Travel Audience DevOps](https://github.com/travelaudience) for an awesome base image
