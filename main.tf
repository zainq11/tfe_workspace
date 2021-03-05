variable "oauth_token_id" {}

# data "tfe_oauth_client" "client" {
#   oauth_client_id = var.oauth_token_id
# }

resource "tfe_workspace" "workspace_by_tfe" {
  name         = "workspace_by_tfe"
  organization = "georgiman"
  working_directory = "test"
  terraform_version = "0.12.28"
  
  vcs_repo {
    identifier  = "berchevorg/tfe_workspace"
    oauth_token_id = var.oauth_token_id
  }
}
