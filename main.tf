
module "service_account_default_iam_grants" {
  source  = "terraform-google-modules/org-policy/google"
  version = "~> 3.0.2"

  policy_for      = "folder"
  constraint      = "constraints/compute.disableAllIpv6"
  policy_type     = "boolean"
  folder_id       = "235730749365"
  enforce         = true
}

# module "domain_restricted_sharing_constraint" {
#   source           = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
#   version          = "~> 5.2.0"

#   policy_root      = "organization"    # either of organization, folder or project
#   policy_root_id   = ""       # either of org id, folder id or project id
#   constraint       = "constraints/iam.allowedPolicyMemberDomains"    # constraint identifier without constriants/ prefix. Example "compute.requireOsLogin"
#   policy_type      = "list"            # either of list or boolean

#   rules = [
#     # Rule 1
#     {
#       enforcement = false
#       allow       = [""]
#       deny        = []
#       conditions  = [{
#         description = "exempt via tag disable"
#         expression  = "!resource.matchTag('/disable', 'domain-restricted-sharing')"
#         location    = "sample-location.log"
#         title       = "default"
#       }]
#     }
#   ]
# }
