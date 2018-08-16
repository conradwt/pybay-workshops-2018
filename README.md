# Pybay Workshops 2018

The purpose of this repository is to simplify the process of installing the basic set of tools for Python workshops.

## Software Installation Requirements

- [Docker Desktop](https://www.docker.com/products/docker-desktop)

- [Python Workshop Image](https://hub.docker.com/r/conradwt/pybay-workshops-2018)

  - From Internet

    ```
    $ docker pull conradwt/pybay-workshops-2018
    ```

    Note: The compressed image is roughly about 1 GB is size.

  - From Flash Drive (MAY NOT BE AVAILABLE)

    ```
    $ docker load < pybay-workshops-2018-latest.tar.gz
    ```

    Note: I may be roaming around with a couple of flash drives if you haven't had the
    opportunity to install the image.

- [Git](https://git-scm.com)

## Clone Repository

```
$ git clone https://www.github.com/conradwt/pybay-workshops-2018
```

## Using Python Read-Eval-Print-Loop (REPL)

- Starting Python REPL

  ```
  $ docker run --rm -it -v ${PWD}:/home/pyuser conradwt/pybay-workshops-2018 /bin/bash -c python
  ```

- Exiting Python REPL

  ```
  ^D
  ```

## Using Ubuntu Enviornment

- Starting Ubuntu Environment

  ```
  $ docker run --rm -it -v ${PWD}:/home/pyuser conradwt/pybay-workshops-2018 /bin/bash
  ```

- Exiting Ubuntu Environment

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
