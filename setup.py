#! /usr/bin/python3

from setuptools import setup

setup(
    name='bookie',
    packages=['bookie'],
    version='0.0.1',
    install_requires=[
        'flask',
    ],
    package_data={
        'bookie': ['templates/*.html', 'static/*.css'],
    },
)
