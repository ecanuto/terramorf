# Terramorf

Terramorf is a thin wrapper for [Terraform](https://www.terraform.io/) that
provides environment management and automatic Terraform version download and
setup.

## Features

* Enrironment variable management
* Automatic terraform version download, setup and management

## Installation

You can install or upgrade Terramorf using:

```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ecanuto/terramorf/main/install.sh)"
```

## Usage

```sh
terramorf [envivonment] <subcommand> [args]
```

Where **envivonment** is one of the environments available on "envivonments"
folder and all others parameters are terraform commands and arguments.

## License

The code is free and unencumbered software released into the public domain.  
For more information, please refer to <https://unlicense.org>
