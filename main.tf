

terraform {
  backend "s3" {}
}

module "azuread" {
  source             = "git::https://github.com/azadsagar/terraform-aws-iam-azuread-saml-sso.git?ref=main"
  pgp_key_file       = var.pgp_key_file
  saml_xml_file_path = var.saml_xml_file_path

  azure_ad_provisioner_user = var.azure_ad_provisioner_user
  enable_kms_key_rotation   = var.enable_kms_key_rotation
  kms_description           = var.kms_description
  kms_key_deletion_days     = var.kms_key_deletion_days
  use_ssm_store_sso_secrets = var.use_ssm_store_sso_secrets

  Azure_AD_SSO_Roles = var.Azure_AD_SSO_Roles

  additional_tags = var.additional_tags
  namespace       = var.namespace
  stage           = var.stage
}