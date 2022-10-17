# Terramorf

Terramorf is a thin wrapper for [Terraform](https://www.terraform.io/) that
provides environment management and automatic Terraform version download and
setup.

## Features

* Enrironments management for variables and backend
* Automatic terraform version download, setup and management

## Installation

You can install or upgrade Terramorf using:

```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ecanuto/terramorf/main/install.sh)"
```

## Usage

terramorf.hcl
```terraform
terraform {
  required_version = "1.2.5"

  backend {
    profile = "company-${environment}"
    region  = "eu-west-1"
    bucket  = "terraform-${environment}"
    key     = "${module}/terraform.tfstate"
    encrypt = false
  }

  var_files = [
    "../common/${environment}.tfvars"
  ]

  variables {
    somevar = "somevalue"
  }
}

environment "dev" {

  variables {
    some_env_var = "somevalue devel"
  }
}

environment "prd" {
  variables {
    some_env_var = "somevalue prod"
  }
}
```

```sh
terramorf [envivonment] <subcommand> [args]
```

Where **envivonment** is one of the environments available on "envivonments"
folder and all others parameters are terraform commands and arguments.

## License

The code is free and unencumbered software released into the public domain.  
For more information, please refer to <https://unlicense.org>
