provider "aws" {
  # Configuration options
  region = "eu-north-1"
}
module "ambavarapu-vpcmodule" {
  source  = "jayakrishnaambavarapu/ambavarapu-vpcmodule/aws"
  version = "4.0.0"
  # insert the 1 required variable here
  cidr = "10.0.0.0/16"
}

output "module-result-checking" {
  value = module.ambavarapu-vpcmodule.jayakrishna-vpc-result.id

}
#submodule module-a to create the resources
module "ambavarapu-vpcmodule_module-a" {
  source  = "jayakrishnaambavarapu/ambavarapu-vpcmodule/aws//modules/module-a"
  version = "4.0.0"
  # insert the 1 required variable here
  cidr-block-1 = "10.10.0.0/16"
}

output "module-a-result" {
   value = module.ambavarapu-vpcmodule_module-a.result.id
}

/* Note:

user created module:https://registry.terraform.io/modules/jayakrishnaambavarapu/ambavarapu-vpcmodule/aws/latest

checks this for reference

*/
