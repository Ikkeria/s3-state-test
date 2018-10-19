# Terraform state example
This is a small example code that shows what happens when you try to request the same unique resource (this case s3 bucket) twice in terraform.
One of the state files will be left empty due to an error.

# Running instructions
* Export your AWS profile or access key pair to your environment 
* cd to the s3-test/live foldervariable like: `Export AWS_PROFILE=aws-account`
* Run `terragrunt -apply-all`

In s3-1 and s3-2 there will be generated a Terragrunt cache folder with a unique name. Each of those folders will contain a terraform state file. The one in s3-1 should contain the info for the s3 bucket while the one in s3-2 should be missing info about a bucket since it will fail on creating the bucket already present in s3-1.

## Optional test
In the live2 folder a manual runner is present. If you want to do manual tests you can go to this folder and simply run `terraform init`followed by `terraform apply`. It will ask you for the s3 bucket name that you require.
If you want to do the test without Terragrunt, the live2 content and be duplicated to another folder like live3 and then do the optional test in both folders. if you feed both of them with the same s3 bucket name then the test should fail equally to the main test.

# Prerequisite
To run this example you need to have AWS CLI, Terraform and Terragrunt installed.

In s3-test/lives3-1 and s3-2 there will be a terraform.tfvars file present. For this code to fail as expected they should be equal. You might want to change the s3name variable to something different than default to make sure only of of the statefiles will fail to get propagated.


## Install AWS CLI

Remember to do an `aws configure --profile aws-account` after install to be able to export your profile.

### OSX
You can install AWS CLI on OSX using [Homebrew](https://brew.sh/): `brew install awscli`.

### Linux - Untested
You can install AWS CLI on Linux using [Linuxbrew](https://linuxbrew.sh/): `brew install awscli`.

### Manual
You can install AWS CLI manually by going to this [instruction page](https://docs.aws.amazon.com/cli/latest/userguide/cli-install-macos.html),
and follow the guide from AWS that suites your needs

## Install Terraform

### OSX
You can install Terraform on OSX using [Homebrew](https://brew.sh/): `brew install terraform`.

### Linux - Untested
You can install Terraform on Linux using [Linuxbrew](https://linuxbrew.sh/): `brew install terraform`.

### Manual
You can install Terragrunt manually by going to the [download page](https://www.terraform.io/downloads.html),
downloading the binary for your OS, renaming it to `terraform`, and adding it to your PATH.

## Install Terragrunt

### OSX
You can install Terragrunt on OSX using [Homebrew](https://brew.sh/): `brew install terragrunt`.

### Linux
You can install Terragrunt on Linux using [Linuxbrew](https://linuxbrew.sh/): `brew install terragrunt`.

### Manual
You can install Terragrunt manually by going to the [Releases Page](https://github.com/gruntwork-io/terragrunt/releases),
downloading the binary for your OS, renaming it to `terragrunt`, and adding it to your PATH.