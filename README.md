# Deploy RG + Storage with GitHub Actions + Bicep

1. Create an Azure Service Principal and set two GitHub Secrets in the repository:
   - `AZURE_CREDENTIALS` (JSON from `az ad sp create-for-rbac --sdk-auth ...`)
   - `AZURE_SUBSCRIPTION_ID` (your subscription id)

2. Create GitHub Environments: Dev, UAT, Prod. Add required reviewers for UAT and Prod if you want approvals.

3. Ensure the parameter files contain the correct resource group names and storage account names (storage account names must be globally unique and lowercase).

4. Push to `dev`, `uat`, or `main` branches to trigger the corresponding deployment. You can also run the workflows manually from the Actions tab (`workflow_dispatch`).
