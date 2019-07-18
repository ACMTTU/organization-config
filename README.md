# Project Scaffolding Automation

We wanted a way to create projects on the fly and with ease. So we made
a Terraform module that talks to GitHub to tell it what we want

# Prerequisites
- [Terraform](https://www.terraform.io/downloads.html)

# How to create Projects

Fill out the `acmttu.auto.tfvars` with the information required

> ./plan-create.sh
> ./apply-changes.sh
  
# How to delete Projects

Leave the `acmttu.auto.tfvars` file the way it is

> ./plan-delete.sh
> ./apply-changes

# Conclusion

This just makes everything easier. If you would like to change some default
settings, go ahead and make a PR :)