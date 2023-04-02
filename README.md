# Create_repo_using_terraform
Terraform code to create repo on github

File Details -

provider.tf - It contains code related to provider . It tells terraform to download github plugin . Also passed token as argument to let terraform know about github account where repo will be created.

    Note : you can pass token directly as string but here i have created 
    environmental variable in my local system and used it in the code.

    In windows , you can create env variable like this . terraform 
    automatically reads and use in configuration.
    set TF_VAR_githubtoken=<pass token without quotes>


terraform.tfvars - To pass required details about repo.

variables.tf - It contains code to declare variables.

main.tf - It contains code for creating repo . There you can find two resource blocks . In first block , i have used list to take repo name inputs and in later one , used map to take repo name and description as input .







