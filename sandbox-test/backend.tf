terraform {

    backend "azurerm" {
        storage_account_name = "tfbackendcimtsandboxstg"
        container_name       = "tfstatelock"
        key                  = "sandboxEnv.tfstate"
    }

}