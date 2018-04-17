# Python Workshop

The purpose of this repository is to simplify the process of installing the basic set of tools for Python workshops.

## Software Requirements

  - [Docker Community Edition](https://www.docker.com/community-edition)

  - [Python Workshop Image](https://hub.docker.com/conradwt/)

  - [Git](https://git-scm.com)

## Clone Repository

```
$ git clone https://www.github.com/conradwt/python-workshop
```

## Using Jupyter Notebooks

  - Start Jupyter

    ```
    $ docker-compose up jupyter -d
    ```

  - Stop Jupyter

    ```
    $ docker-compose down
    ```

## Using Python Read-Eval-Print-Loop (REPL)


  - Start Python REPL

    ```
    $ docker run --rm -it -v ${PWD}:/home/pyuser/python-workshop conradwt/python-workshop:1.0.0 /bin/bash -c python
    ```

  - Stop Python REPL

    ```
    ^D
    ```

## Using Ubuntu Enviornment

  - Start Ubuntu Environment

    ```
    $ docker run --rm -it -v ${PWD}:/home/pyuser/python-workshop conradwt/python-workshop:1.0.0 /bin/bash
    ```

  - Stop Ubuntu Environment

    ```
    $ exit
    ```

  Note:  One can use any editor within the current host operating system (OS) directory to 
         edit and run Python files and applications within the guest OS (i.e. Ubuntu).

## Support

Bug reports and feature requests can be filed with the rest for the Phoenix project here:

* [File Bug Reports and Features](https://github.com/conradwt/python-workshop/issues)

## License

Python-Workshop is released under the [MIT license](https://mit-license.org).

## Copyright

copyright:: (c) Copyright 2018 Conrad Taylor. All Rights Reserved.
