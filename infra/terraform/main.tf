provider "aws" {
  region = "us-west-1"
}

terraform {
  backend "s3" {
    bucket = "joel-terraform-state-bucket"
    key = "terraform/state/terraform.tfstate"
    region = "us-west-1"
    dynamodb_table = "terraform-lock-table"
    encrypt = true
  }
}

resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "joel-terraform-state-bucket"

  tags = {
    Name        = "Terraform state bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_policy" "terraform_state_bucket_policy" {
  bucket = aws_s3_bucket.terraform_state_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Deny"
        Principal = "*"
        Action = "s3:*"
        Resource = [
          "arn:aws:s3:::${aws_s3_bucket.terraform_state_bucket.id}",
          "arn:aws:s3:::${aws_s3_bucket.terraform_state_bucket.id}/*"
        ]
        Condition = {
          Bool = {
            "aws:SecureTransport": "false"
          }
        }
      }
    ]
  })
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_s3_bucket" "landing_zone_bucket" {
  bucket = "engenharia-dados-satc-landing-zone-bucket"
  tags = {
    Name = "Landing Zone Bucket"
  }
}

resource "aws_s3_bucket" "bronze_bucket" {
  bucket = "engenharia-dados-satc-bronze-bucket"
  tags = {
    Name = "Bronze Bucket"
  }
}

resource "aws_s3_bucket" "silver_bucket" {
  bucket = "engenharia-dados-satc-silver-bucket"
  tags = {
    Name = "Silver Bucket"
  }
}

resource "aws_s3_bucket" "gold_bucket" {
  bucket = "engenharia-dados-satc-gold-bucket"
  tags = {
    Name = "Gold Bucket"
  }
}


resource "aws_s3_bucket_policy" "landing_zone_policy" {
  bucket = aws_s3_bucket.landing_zone_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Deny"
        Principal = "*"
        Action = "s3:*"
        Resource = [
          "arn:aws:s3:::${aws_s3_bucket.landing_zone_bucket.id}",
          "arn:aws:s3:::${aws_s3_bucket.landing_zone_bucket.id}/*"
        ]
        Condition = {
          Bool = {
            "aws:SecureTransport": "false"
          }
        }
      }
    ]
  })
}

resource "aws_s3_bucket_policy" "bronze_policy" {
  bucket = aws_s3_bucket.bronze_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Deny"
        Principal = "*"
        Action = "s3:*"
        Resource = [
          "arn:aws:s3:::${aws_s3_bucket.bronze_bucket.id}",
          "arn:aws:s3:::${aws_s3_bucket.bronze_bucket.id}/*"
        ]
        Condition = {
          Bool = {
            "aws:SecureTransport": "false"
          }
        }
      }
    ]
  })
}

resource "aws_s3_bucket_policy" "silver_policy" {
  bucket = aws_s3_bucket.silver_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Deny"
        Principal = "*"
        Action = "s3:*"
        Resource = [
          "arn:aws:s3:::${aws_s3_bucket.silver_bucket.id}",
          "arn:aws:s3:::${aws_s3_bucket.silver_bucket.id}/*"
        ]
        Condition = {
          Bool = {
            "aws:SecureTransport": "false"
          }
        }
      }
    ]
  })
}

resource "aws_s3_bucket_policy" "gold_policy" {
  bucket = aws_s3_bucket.gold_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Deny"
        Principal = "*"
        Action = "s3:*"
        Resource = [
          "arn:aws:s3:::${aws_s3_bucket.gold_bucket.id}",
          "arn:aws:s3:::${aws_s3_bucket.gold_bucket.id}/*"
        ]
        Condition = {
          Bool = {
            "aws:SecureTransport": "false"
          }
        }
      }
    ]
  })
}

resource "aws_iam_user" "data_access_user" {
  name = "data-access-user"
}

resource "aws_iam_access_key" "data_access_key" {
  user = aws_iam_user.data_access_user.name
}

resource "aws_iam_policy" "data_access_policy" {
  name        = "DataAccessPolicy"
  description = "Policy to allow list, get, put, and delete access to specific S3 buckets"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:ListBucket",
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject"
        ]
        Resource = [
          "arn:aws:s3:::engenharia-dados-satc-landing-zone-bucket",
          "arn:aws:s3:::engenharia-dados-satc-landing-zone-bucket/*",
          "arn:aws:s3:::engenharia-dados-satc-bronze-bucket",
          "arn:aws:s3:::engenharia-dados-satc-bronze-bucket/*",
          "arn:aws:s3:::engenharia-dados-satc-silver-bucket",
          "arn:aws:s3:::engenharia-dados-satc-silver-bucket/*",
          "arn:aws:s3:::engenharia-dados-satc-gold-bucket",
          "arn:aws:s3:::engenharia-dados-satc-gold-bucket/*"
        ]
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "attach_data_access_policy" {
  user       = aws_iam_user.data_access_user.name
  policy_arn = aws_iam_policy.data_access_policy.arn
}

