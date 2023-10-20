# Terraform Beginner Bootcamp 2023


This project is going to use [Semantic Versioning](https://semver.org/)

The versioning uses the format **MAJOR.MINOR.PATCH** e.g **1.0.1** 

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes



## Terraform Basics 

### Terraform Registry 

Terraform sources are Providers and Modules from the Terraform Registry located at [registry.terraform.io](https://registry.terraform.io/)
- **Providers**: A Terraform provider is a plugin that enables Terraform interact with external services. 
    - Examples of Terraform providers include AWS, GCP, Azure, Kubernetes, Oracle, Random etc. 
- **Modules**: A Terraform module is simply a directory containing Terraform configuration 

N/B: For this particular PR, the [Random](https://registry.terraform.io/providers/hashicorp/random/) provider was used. The Random provider generates a random identifier that can be used in Terraform modules for naming resources. 


#### Terraform CLI 
Run `terraform` to see all the Terraform commands. 

#### Terraform Init
`terraform init`    
This would download the binaries of Terraform providers that are declared in the Terraform module. 

#### Terraform Plan
Running `terraform plan` will generate a change set of resources and what will be changed once executed. The changeset can be passed to apply which would then execute.

#### Terraform Apply 
`terraform apply`    
This would plan and pass the changesets to be executed by terraform. Running `terraform apply` will prompt `yes` or `no`. To automatically run `terraform apply` without the prompt, run `terraform apply --auto-approve`. 

#### Terraform Lock Files 
`.terraform.lock.hcl` contains the locked versioning for the providers or modules that should be used with this project.    

The Terraform Lock File should be committed to Version Control.


#### Terraform State Files 
`.terraform.tfstate` contains information about the current state of your infrastructure.   

This file **should not be committed to Version Control** as this file can contain sensitive data. Losing this file means losing the state of your infrastructure. 

`.terraform.tfstate.backup` is the previous state file. 


#### Terraform Directory 
The directory that contains the downloaded binaries of the Terraform Providers. 
