# Terraform Azure Web Apps Demo

This project demonstrates how to use Terraform to provision and manage Azure Web Apps in multiple environments. It showcases Infrastructure as Code (IaC) principles and automated deployment capabilities for software service teams.

## Overview

This demo creates:
- Multiple environments (Dev and Prod) with identical infrastructure
- App Service Plan for each environment
- Two web applications per environment:
  - WebPortal application
  - Storm application
- All resources are organized within a resource group

## Prerequisites

Before running `terraform apply`, you MUST:

Update `locals.tf` with:
   - Your username in the `username` variable
   - Your existing Azure resource group name in `resource_group_name`

