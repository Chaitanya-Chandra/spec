module "nodejs-internal-ami" {
  source      = "git::https://github.com/raghudevopsb61/terraform-ami.git"
  COMPONENT   = "spec"
  APP_VERSION = var.APP_VERSION
  NEXUS_USERNAME = var.NEXUS_USERNAME
  NEXUS_PASSWORD = var.NEXUS_PASSWORD
  ENV = var.ENV
  PROJECT = var.PROJECT
}

variable "APP_VERSION" {}
variable "NEXUS_USERNAME" {}
variable "NEXUS_PASSWORD" {}
variable "ENV" {}
variable "PROJECT" {}


provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-nonprod-state-chaitu-env"
    key    = "ami/nodejs-internal/terraform.tfstate"
    region = "us-east-1"
  }
}

