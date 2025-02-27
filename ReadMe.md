# Terraform Project for Dev Environment

This project demonstrates how to create and manage a new development environment using Terraform.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed
- An Azure account

## Project Structure

```
.
├── environments/
│   └── templates/
│       ├── environment/
│       │   ├── main.tf         # Environment-specific resources
│       │   ├── variables.tf    # Environment variables
│       │   └── outputs.tf      # Environment outputs
│       └── web-app/
│           ├── main.tf         # Web app configuration
│           ├── variables.tf    # Web app variables  
│           └── outputs.tf      # Web app outputs
├── main.tf                     # Main configuration file
├── variables.tf               # Global variables
├── outputs.tf                # Global outputs
└── README.md                 # Project documentation

```

## Usage

1. **Clone the repository:**
    ```sh
    git clone <repository-url>
    cd DotNetTeamSession
    ```

2. **Initialize Terraform:**
    ```sh
    terraform init
    ```


## Customization

To create a new environment easily, you can modify the `variables.tf` file to change the configuration parameters such as resource names, sizes, and regions.

## Resources

- [Terraform Documentation](https://www.terraform.io/docs)
- [Azure Provider Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)

## License

This project is licensed under the MIT License.