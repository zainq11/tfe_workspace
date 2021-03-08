variable "organization" {}
variable "terraform_version" {}
variable "vcs_oauth_token_id" {}


module "my_new_workspace" {

  source = "./modules/workspace"

  organization = var.organization

  vcs_reponame = "different-repo"

  vcs_working_directory = "test"

  vcs_oauth_token_id = var.vcs_oauth_token_id

  terraform_version = var.terraform_version

  environments = ["dev", "test"]

  trigger_prefixes = ["./module"]

}
