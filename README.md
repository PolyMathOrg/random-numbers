<p align="center"><img alt="PolyMath" src="https://raw.githubusercontent.com/PolyMathOrg/PolyMath/master/assets/logos/logo.png" style="width: 25%; height: 25%">
<h1 align="center">[PolyMath: Random Numbers]</h1>
  <p align="center">
    Scientific Computing with Pharo
    <br>
    <a href="https://github.com/PolyMathOrg/PolyMath/wiki"><strong>Explore the docs »</strong></a>
    <br>
    <br>
    <a href="https://github.com/PolyMathOrg/PolyMath/issues/new?labels=Type%3A+Defect">Report a defect</a>
    |
    <a href="https://github.com/PolyMathOrg/PolyMath/issues/new?labels=Type%3A+Feature">Request feature</a>
  </p>
</p>

[![CI](https://github.com/PolyMathOrg/random-numbers/actions/workflows/continuous.yml/badge.svg)](https://github.com/PolyMathOrg/random-numbers/actions/workflows/continuous.yml)
[![Coverage Status](https://coveralls.io/repos/github/PolyMathOrg/random-numbers/badge.svg?branch=main)](https://coveralls.io/github/PolyMathOrg/random-numbers?branch=main)
[![Pharo version](https://img.shields.io/badge/Pharo-11-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo version](https://img.shields.io/badge/Pharo-10-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo version](https://img.shields.io/badge/Pharo-9-%23aac9ff.svg)](https://pharo.org/download)

Project to provide different random number generators for the Pharo programming language

## Installation

To install this project on your Pharo image, execute the following script: 

```Smalltalk
Metacello new
	githubUser: 'PolyMathOrg' project: 'random-numbers' commitish: 'v1.x.x' path: 'src';
	baseline: 'MathRandomNumbers';
	load
```

To add TinyLogger to your baseline:

```Smalltalk
spec
	baseline: 'MathRandomNumbers'
	with: [ spec repository: 'github://PolyMathOrg/random-numbers:v1.x.x/src' ]
```

Note you can replace the #master by another branch such as #development or a tag such as #v1.0.0, #v1.? or #v1.2.? .

## Quick start

> TODO

## Smalltalk versions compatibility

| Version 	| Compatible Pharo versions    |
|-------------	|------------------------------|
| 1.x.x       	| Pharo 90, 10, 11 |
