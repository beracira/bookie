#! /usr/bin/python3

from setuptools import setup

setup(
    name='bookie',
    packages=['bookie'],
    version='0.0.1',
    include_package_data=True,
    install_requires=[
        'flask',
    ],
)
