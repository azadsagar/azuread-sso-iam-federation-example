use_ssm_store_sso_secrets = true
namespace                 = "demo"
stage                     = "dev"
pgp_key_file              = "/tmp/public-key-binary.gpg"
saml_xml_file_path        = "/tmp/aws-cloud-coe.xml"
aws_region                = "us-east-1"

Azure_AD_SSO_Roles = [
  {
    name = "AzureSSOSupportRole"
    policy_arns = [
      "arn:aws:iam::aws:policy/ReadOnlyAccess",
      "arn:aws:iam::aws:policy/job-function/NetworkAdministrator"
    ]
    permission_boundary_policy_arn = ""
  }
]