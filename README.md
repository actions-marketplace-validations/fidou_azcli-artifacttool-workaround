# azcli-artifacttool-workaround
Azure github action for az cli to upload/download artifacts and workaround known issue download artifacttool on linux alpine. Uses the latest version of the azurecli and the latest version of the azure devops extension.

## Inputs

- `inlineScript`: The script to be run inside by the action. **Required**

## Example usage

```
uses: fidou/azcli-artifacttool-workaround@v1.0.2
env:
    AZURE_DEVOPS_EXT_PAT: ${{ secrets.AZURE_DEVOPS_PAT_TOKEN }}
with:    
    inlineScript: |
    az artifacts universal download --organization https://dev.azure.com/my-org --feed my-package-feed --name mypackage --version  *.*.* --path .
```
