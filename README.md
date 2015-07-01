# Databox SDK

Meta-repository and Docker based test suite for Databox SDKs.

[![Circle CI](https://circleci.com/gh/databox/sdk-tests/tree/master.svg?style=svg)](https://circleci.com/gh/databox/sdk-tests/tree/master)

## SDKs

| Language / SDK           | CI Status                                              |
|--------------------------|--------------------------------------------------------|
| [JavaScript][databox-js] | [![Build Status][js-travis]][js-travis-badge]          |
| [Ruby][databox-ruby]     | [![Build Status][ruby-travis]][ruby-travis-badge]      |
| [Go][databox-go]         | [![Build Status][go-travis]][go-travis-badge]          |
| [PHP][databox-php]       | [![Build Status][php-travis]][php-travis-badge]        |
| [Python][databox-python] | [![Build Status][python-travis]][python-travis-badge]  |
| [Java][databox-java]     | [![Build Status][java-travis]][java-travis-badge]      |

## Running suite

This repository contains [Dockerfile](Dockerfile) that can used as basis for testing [Databox](http://databox.com) SDKs. [Rake](sdks/Rakefile) is used to `pull` data from repositories run its unit tests and examples.

Pull source code from all SDKs, install dependencies and run all tests.

    docker run -ti databox-sdk /bin/bash -lc \
      "rake"

Run specific test suite (JavaScript SDK in this example):

    docker run -ti databox-sdk /bin/bash -lc \
      "rake clean js"

## Development

Help yourself with [boot2docker](http://boot2docker.io/) if you are on OSX.

    boot2docker init
    boot2docker up

Build databox-sdk image with local [Dockerfile](Dockerfile).

    docker build -t databox-sdk .

Image mounts `/sdks` folder. When developing, you can also mount local folder to container:

    docker run -ti -v `pwd`/sdks:/sdks databox-sdk /bin/bash -lc \
      "rake clean all"

## Author

- [Oto Brglez](https://github.com/otobrglez)


[js-travis-badge]: https://secure.travis-ci.org/databox/databox-js.png
[js-travis]: http://travis-ci.org/databox/databox-js
[databox-js]: https://github.com/databox/databox-js
[ruby-travis-badge]: https://secure.travis-ci.org/databox/databox-ruby.png
[ruby-travis]: http://travis-ci.org/databox/databox-ruby
[databox-ruby]: https://github.com/databox/databox-ruby
[go-travis-badge]: https://secure.travis-ci.org/databox/databox-go.png
[go-travis]: http://travis-ci.org/databox/databox-go
[databox-ruby]: https://github.com/databox/databox-go
[php-travis-badge]: https://secure.travis-ci.org/databox/databox-php.png
[php-travis]: http://travis-ci.org/databox/databox-php
[databox-php]: https://github.com/databox/databox-php
[python-travis-badge]: https://secure.travis-ci.org/databox/databox-python.png
[python-travis]: http://travis-ci.org/databox/databox-python
[databox-python]: https://github.com/databox/databox-python
[java-travis-badge]: https://secure.travis-ci.org/databox/databox-java.png
[java-travis]: http://travis-ci.org/databox/databox-java
[databox-java]: https://github.com/databox/databox-java

