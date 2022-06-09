# Fonoster {Service Name}

> {A short description of the image, same as the Github Repo description.}

{Badges should all be in one row without carriage returns. Replace the {name} with your docker image name.}

[![publish to docker hub](https://github.com/fonoster/nodejs-service/actions/workflows/gh_docker.yml/badge.svg)](https://github.com/fonoster/nodejs-service/actions/workflows/gh_docker.yml)

{Longer description of what the image provides.}

Please read the [documentation](link) on how Fonoster services are created and how to work with them.

## Available Versions

{Keep this as-is, but replace {name} with your Docker image name.}

You can see all images available to pull from Docker Hub via the [Tags]() page. Docker tag names that begin with a "change type" word such as task, bug, or feature are available for testing and may be removed at any time.

## Installation

You can clone this repository and manually build it.

```
cd fonoster/{service}\:%%VERSION%%
docker build -t fonoster/{service}:%%VERSION%% .
```

Otherwise, you can pull this image from the docker index.

```
docker pull fonoster/{service}:%%VERSION%%
```

## Usage Example

{An example of running the container. Most Fonoster services use docker-compose, and docker run is also beneficial.}

The following is a basic example of using this image.

```bash
docker run ...
```

or with Node:

```bash
npm i
npm start
```

## Specs

Optional specification notes.

{List of packages and tools, H3 section breakouts for more detail}

## Environment Variables

Environment variables are used in the entry point script to render configuration templates. You can specify the values of these variables during `docker run`, `docker-compose up`, or in Kubernetes manifests in the `env` array.

{Each environment variable might have 1-2 sentences of description. For anything longer, we should probably have a sub-section within Specs to elaborate.}

- `EXAMPLE_VAR2` - Example variable 1. **Required**
- `EXAMPLE_VAR2` - Example optiona variable

## Exposed ports

- `3000` - Default application port for HTTP

## Volumes

- `/your/file/location` - File location
- `/some/special/script.sh` - List special scripts

## Useful File Locations

- `/some/special/script.sh` - List special scripts
- `/magic/dir` - And also directories

## Contributing

Please read [CONTRIBUTING.md](https://github.com/fonoster/fonoster/blob/master/CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests to us.

## Authors

- [Pedro Sanders](https://github.com/psanders)

See the List of contributors who [participated](https://github.com/fonoster/fonoster/contributors) in this project.

## License

Copyright (C) 2022 by Fonoster Inc. MIT License (see [LICENSE](https://github.com/fonoster/fonoster/blob/master/LICENSE) for details).
