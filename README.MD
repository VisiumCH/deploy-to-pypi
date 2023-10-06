#  PyPi: Deploy minor bump (Github Action)

## Objective

The purpose of this github action is to implement a CD that automatically deploys a minor bump to PyPi.

## How to use it

First, you should have a PyPI API key in your repository secrets. It should be named `PYPI_API_TOKEN`.

You need to add a tag with the version of your package to your repository. The version should be in X.X.X format (e.g., 0.0.0 for the very first version).

Add the following to your `pyproject.toml`:

```toml
[project]
name = "ADD_PROJECT_NAME"
dynamic = ["version"]

[build-system]
requires = ["setuptools>=45", "setuptools_scm[toml]>=6.2"]
build-backend = "setuptools.build_meta"

[tool.setuptools_scm]
```
Other fields such as a description of the project can be added to the project section of this file. More details [here](https://packaging.python.org/en/latest/specifications/declaring-project-metadata/).

*No setup.py file is required anymore and it should be deleted*

Add the following snippet of code in a file located in `.github/workflows`.

```yaml

name: Deploy Minor Bump to PyPI

on:
  push:
    branches: [ main ]

jobs:
  minor-bump-project-deployment:
    uses: VisiumCH/deploy-to-pypi/.github/workflows/cd.yaml@main
    secrets: inherit

```
Finally, you need to make sure that your repository is granted access to a PyPI API key.
