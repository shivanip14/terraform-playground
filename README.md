# terraform-playground

This repo is just a playground for me to get started with Terraform and use it to deploy Azure RGs and resources. This readme serves the purpose of a basic, step-by-step tutorial of some simple Terraform + Azure tasks.

## Prerequisites
### 1. Github repo to host terraform scripts.

The directory structure is as follows:
1. _/modules_ - contains sub-directories (one each) for the different types of Azure resources to be deployed. The individual tf scripts contain the details required by the corresponding resource type. For a little more but still basic details on the contents, refer to the comments in the script.
2. _main.tf_ - Lists all the available modules, and providers used (only Azure based for the scope of this project, more providers can be found <a href="https://learn.microsoft.com/en-us/azure/developer/terraform/overview#terraform-providers-for-azure-infrastructure">here</a>).
3. _variables.tf_ - Lists all the tf variables used by any tf script in the project. Not sure if this is the right way to do it or not, but it works.
   
### 2. Terraform Cloud account
1. Signup for a free TF Cloud account
2. Create a workspace and a project inside that workspace (default project works just fine for PoC/testing) - for this project, we've chosen the *Version Control Workflow* which means *plans* will be triggered when there is any change in the associated repo:

<img src="https://github.com/shivanip14/terraform-playground/assets/92314538/abcd0f12-4843-4624-bd4e-0b309fcbc6c4" style="height:50%; width:50%;" />

3. Associate any VCS to the workspace. Github in this example.
4. Link the repo which will have the tf scripts and whose changes will be tracked.

<img src="https://github.com/shivanip14/terraform-playground/assets/92314538/c1e30af6-a9c7-4361-a3a9-e64b5dec5235" style="height:50%; width:50%;" />

5. You can also configure additional advanced settings such as whether you want the *plans* to be triggered every time there is a change, in a specific directory or branch, or when a  Git tag is published.
   
### 3. Azure subscription
A free trial is enough for this!

<img src="https://github.com/shivanip14/terraform-playground/assets/92314538/f7206bda-7a65-4cc4-86fd-0362a0c51974" style="height:50%; width:50%;" />


## Creating Resource Group


## Creating a Resource (Storage Account) under a given RG

