# Python package structure

> Example structure of python project for automatic deployment on PyPI

## Repository configuration

Set the following secrets in your GitHub repository.
```bash
PYPI_TOKEN # PyPI token generated for this package.
```

## Project requirements

- python
- pipenv
- make

## Usage

```
$ make help

Usage: make <target>

Development commands
  help        Show this help
  install     Install dependencies in a virtualenv
  freeze      Freeze requirements version for distribution
  test        Run tests sets

Deployment commands
  patch       Deploy a new patch version of this package
  minor       Deploy a new minor version of this package
  major       Deploy a new patch version of this package
```