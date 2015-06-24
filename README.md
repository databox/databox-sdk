# Databox SDK

Meta-repository and test suite for all Databox SDKs.

## SDKs

| Language / SDK                                              |   CI Status                                                                                                       |
|-------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
| [JavaScript](https://github.com/databox/databox-js)         | [![Build Status](https://travis-ci.org/databox/databox-js.svg)](https://travis-ci.org/databox/databox-js)         |
| [Ruby](https://github.com/databox/databox-ruby)             | [![Build Status](https://travis-ci.org/databox/databox-ruby.svg)](https://travis-ci.org/databox/databox-ruby)     |
| [Go](https://github.com/databox/databox-go)                 | [![Build Status](https://travis-ci.org/databox/databox-go.svg)](https://travis-ci.org/databox/databox-go)         |
| [PHP](https://github.com/databox/databox-php)               | [![Build Status](https://travis-ci.org/databox/databox-php.svg)](https://travis-ci.org/databox/databox-php)       |
| [Python](https://github.com/databox/databox-python)         | [![Build Status](https://travis-ci.org/databox/databox-python.svg)](https://travis-ci.org/databox/databox-python) |

## Running suite

This repository contains [Dockerfile](Dockerfile) that can used as basis for testing [Databox](http://databox.com) SDKs. [Rake](sdks/Rakefile) is used to `pull` data from repositories run its unit tests and examples.

Installs all SDKs & runs all tests

    docker run -ti otobrglez/databox-sdk \
      /bin/bash -l -c "rake"

Run specific suite (JavaScript SDK in this example)

    docker run -ti otobrglez/databox-sdk \
      /bin/bash -l -c "rake clean js"

## Development

Help yourself with [boot2docker](http://boot2docker.io/).

    boot2docker init
    boot2docker up

Build databox-sdk image with local [Dockerfile](Dockerfile).

    docker build -t otobrglez/databox-sdk .

Image mounts `/sdks` folder. When developing, you can also mount local folder to container:

    docker run -t -i -v `pwd`/sdks:/sdks otobrglez/databox-sdk \
      /bin/bash -l -c \
      "rake clean all"

## Author

- [Oto Brglez](https://github.com/otobrglez)

