![Logo](isa-api_logo.png)

# json2isatab: ISA-JSON to ISA-Tab Converter
Version: 0.9.4

## Short Description

A container image definition for the `json2isatab` converter from the ISA API

## Description

The ISA API is a Python 3 library that can create, manipulate, and convert ISA formatted content. The `json2isatab`
converter takes a valid ISA-JSON document and converts it into a valid ISA-Tab formatted set of files.

## Key features

- Converts ISA-JSON to ISA-Tab.

## Functionality

- Data Management / Study Metadata Format Conversion

## Approaches

- Metabolomics
- Isotopic Labelling Analysis

## Instrument Data Types

- MS
- NMR

## Tool Authors

- [ISA Team](http://isa-tools.org)

## Container Contributors

- [David Johnson](https://github.com/djcomlab) (University of Oxford)
- [Philippe Rocca-Serra](https://github.com/proccaserra) (University of Oxford)

## Website

- https://github.com/ISA-tools/isa-api


## Git Repository

- https://github.com/phnmnl/container-json2isatab.git

## Installation 

For local individual installation:

```bash
docker pull docker-registry.phenomenal-h2020.eu/phnmnl/json2isatab
```

## Usage Instructions

For direct docker usage:

```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/json2isatab <path_to_isajson_file>
```

## Publications

- Sansone, Susanna-Assunta, Rocca-Serra, Philippe, Gonzalez-Beltran, Alejandra, Johnson, David, & ISA Community. (2016, October 28). ISA Model and Serialization Specifications 1.0. Zenodo. http://doi.org/10.5281/zenodo.163640
- Sansone, Susanna-Assunta, et al. (2012, January 27). Towards interoperable bioscience data. Nature Genetics 44, 121–126. http://doi.org/10.1038/ng.1054
