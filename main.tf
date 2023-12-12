module "service_account_default_iam_grants" {
  source  = "terraform-google-modules/org-policy/google"
  version = "~> 3.0.2"

  policy_for      = "folder"
  constraint      = "constraints/compute.disableAllIpv6"
  policy_type     = "boolean"
  folder_id       = "235730749365"
  enforce         = true
}


