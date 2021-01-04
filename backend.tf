# terraform {
#   backend "azurerm" {
#     resource_group_name  = "StorageAccount-ResourceGroup"
#     storage_account_name = "abcd1234"
#     container_name       = "tfstate"
#     key                  = "prod.terraform.tfstate"
#   }
# }

terraform {
	backend "s3" {
	bucket = "terraform-iaacs"
	key = "path/to/my/remote_state"
	region = "us-east-1"
	}
}