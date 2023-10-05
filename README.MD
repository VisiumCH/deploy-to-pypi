#  PyPi: Deploy minor bump (Github Action)

## Objective

The purpose of this github action is to implement a CD that automatically deploys a minor bump to PyPi.

## How to use it

You can add the following snippet of code in a file located in `.github/workflows`.

```yaml

name: Deploy Minor Bump to PyPI

on:
  push:
    branches: [ master ]

jobs:
  minor-bump-project-deployment:
    uses: VisiumCH/deploy-to-pypi/.github/workflows/cd.yaml@master

```
