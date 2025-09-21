# terraform modules import code
# it is not indentation specific

#providers = cloud specific providers: GCP/Azure/AWS

terraform {

    required_providers {
        local = {
            source = "hashicorp/local"
        }
  #      ,
  #        aws = {
  #    source  = "hashicorp/aws"
  #    version = "~> 6.0"
  #  }
    }
}

# content / code / task

provider "local" {}
# some providers need key: AWS / GCP: {...default..configuration}

resource "local_file" "hello" {
    content = "migration to v3 - Aman"
    filename= "${path.module}/hello.txt"
}

# resource = infra
# fileName = hello.txt
# content = "Hello from terraform on Windows!"
