locals {
  aws_account_id = "577523824419"
  aws_env_name   = "management"
  organization   = "tqer39"
  platform       = "aws"
  prefix         = "pl"
  owner          = "tqer39"
  region = {
    apne1 = "ap-northeast-1"
    use1  = "us-east-1"
  }
  repository = "terraform-aws"
}

locals {
  common_tags = {
    "${local.prefix}:environment" = local.aws_env_name
    "${local.prefix}:iac"         = "terraform"
    "${local.prefix}:owner"       = "${local.owner}+${local.platform}-${local.aws_env_name}@gmail.com"
    "${local.prefix}:product"     = "terraform-aws"
    "${local.prefix}:repository"  = "${local.organization}/${local.repository}"
  }

  # tflint-ignore: terraform_unused_declarations
  tfstate_bucket_name = {
    apne1 = "terraform-tfstate-${local.owner}-${local.aws_account_id}-${local.region.apne1}"
    use1  = "terraform-tfstate-${local.owner}-${local.aws_account_id}-${local.region.use1}"
  }
}
