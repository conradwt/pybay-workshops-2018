# Pybay Workshops 2018

The purpose of this repository is to simplify the process of installing the basic set of tools for Python workshops.

## Supported Operating Systems

- macOS 10.13 or higher

- Linux 16.04 or 18.04

- Windows 10 Pro

## Docker Installation

- [Docker Desktop](https://www.docker.com/products/docker-desktop)

- Verify Installation

  If you installed everything correctly, you should see a message similar to the following:

  ```text
  Unable to find image 'hello-world:latest' locally
  latest: Pulling from library/hello-world
  ca4f61b1923c: Pull complete
  Digest: sha256:ca0eeb6fb05351dfc8759c20733c91def84cb8007aa89a5bf606bc8b315b9fc7
  Status: Downloaded newer image for hello-world:latest

  Hello from Docker!
  This message shows that your installation appears to be working correctly.
  ...
  ```

  Note: If you didn't get the above message, please do verify that Docker is running on your
  computer system.

## Download Docker Image

- [Python Workshop Image](https://hub.docker.com/r/conradwt/pybay-workshops-2018)

  - From Internet

    ```
    $ docker pull conradwt/pybay-workshops-2018
    ```

    Note: The compressed image is roughly about 2 GB is size.

  - From Flash Drive (MAY NOT BE AVAILABLE)

    ```
    $ docker load < pybay-workshops-2018-latest.tar.gz
    ```

    Note: I may be roaming around with a couple of flash drives if you haven't had the
    opportunity to install the image.

## Git Installation

- [Git](https://git-scm.com)

## Clone Repository

```
$ git clone https://www.github.com/conradwt/pybay-workshops-2018
```

## Using Python Read-Eval-Print-Loop (REPL)

- Starting Python REPL

  - macOS or Linux

    ```
    docker run --rm -it -v ${PWD}:/home/pyuser/pybay-workshops-2018 conradwt/pybay-workshops-2018 /bin/bash -c python
    ```

  - Windows

    ```
    docker run --rm -it -v %cd%:/home/pyuser/pybay-workshops-2018 conradwt/pybay-workshops-2018 /bin/bash -c python
    ```

- Exiting Python REPL

  ```
  ^D
  ```

## Using Ubuntu Enviornment

- Starting Ubuntu Environment

  - macOS or Linux

    ```
    docker run --rm -it -v ${PWD}:/home/pyuser/pybay-workshops-2018 conradwt/pybay-workshops-2018 /bin/bash
    ```

  - Windows

    - PowerShell

      ```
      docker run --rm -it -v ${PWD}:/home/pyuser/pybay-workshops-2018 conradwt/pybay-workshops-2018 /bin/bash
      ```

    - Command Line (cmd)

      ```
      docker run --rm -it -v %cd%:/home/pyuser/pybay-workshops-2018 conradwt/pybay-workshops-2018 /bin/bash
      ```

* Exiting Ubuntu Environment

  ```
  $ exit
  ```

Note: One can use any editor within the current host operating system (OS) directory to
edit and run Python files and applications within the guest OS (i.e. Ubuntu).

## Support

Bug reports and feature requests can be filed with the rest for the Phoenix project here:

- [File Bug Reports and Features](https://github.com/conradwt/pybay-workshops-2018/issues)

## License

Python-Workshop is released under the [MIT license](https://mit-license.org).

## Copyright

copyright:: (c) Copyright 2018 Conrad Taylor. All Rights Reserved.
