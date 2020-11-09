# Python package template

> Example structure of python project for automatic CI/CD.
>
> **Included**: Linting, tests, releases to pypi.

## Table of contents

- [Python package template](#python-package-template)
  - [Table of contents](#table-of-contents)
  - [Setup your project](#setup-your-project)
    - [1. Adapt this template](#1-adapt-this-template)
    - [2. CI/CD configuration](#2-cicd-configuration)
  - [Develop using this template](#develop-using-this-template)
    - [Install dependencies](#install-dependencies)
    - [Show project commands](#show-project-commands)

## Setup your project

Fork this repository or clone it (and **don't forget to change remote url**).

### 1. Adapt this template

Replace folder `example/` with the one containing your python package.

Change package import in default test (in `tests/` folder).

Edit [setup.py](setup.py) and replace the following rows :

```python
    name='<package name>',
    description='<package description>',
    version='<package version>',
```

Edit [.github/workflows/main.yml](.github/workflows/main.yml) and replace these rows :

```yaml
env:
  PYTHON_VERSION: <python version>
  PACKAGE_NAME: <package name>
```

### 2. CI/CD configuration

- Reserve package on PyPI and generate project token.
- Set the `PYPI_TOKEN` secret under your repository settings.


## Develop using this template

### Install dependencies

A few tools are required to work using this template.

- python
- pipenv
- make

Once these tools available, you will need to install python dev-packages by running :
```bash
make install
```

### Show project commands

Commands have been defined in Makefile to assist further development.

```
$ make help

Usage: make <target>

Development commands
  help        Show this help
  install     Install dependencies in a virtualenv
  freeze      Freeze requirements version for distribution
  lint        Lint package using pylint
  test        Run tests sets

Deployment commands
  patch       Deploy a new patch version of this package
  minor       Deploy a new minor version of this package
  major       Deploy a new patch version of this package
```
