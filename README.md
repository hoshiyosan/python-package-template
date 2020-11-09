# Python package template

> Example structure of python project for automatic CI/CD.
>
> **Included**: Linting, tests, releases to pypi.

## Setup your project

Clone this repository, and **don't forget to change remote url**.

### 1. Install dependencies

A few tools are required to work using this template.

- python
- pipenv
- make

Once these tools available, you will need to install python dev-packages by running :
```bash
make install
```

### 2. Adapt this template

Replace folder `example/` with the one containing your python package.

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

Then push newly created project to your own repo.
```bash
git remote rename origin template
git remote add origin <your repository>
git push -u origin master
```

### 3. CI/CD configuration

- Reserve package on PyPI and generate project token.
- Create an empty GitHub repository.
- Set the `PYPI_TOKEN` secret under repository settings.


## Develop using this template

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
