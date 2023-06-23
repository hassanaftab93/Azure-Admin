projectPath="/home/hassanaftab/Documents/Projects/Azure-Admin"
templateFile="$projectPath/ARM-Templates/azuredeploy-parameters.json"
today=$(date +"%d-%b-%Y")
DeploymentName="addnameparameter-"$today
storageAccountName="storagaccounthassanaftab"
storageSkuType="Standard_LRS"

az deployment group create \
  --name $DeploymentName \
  --template-file $templateFile \
  --parameters storageSKU=$storageSkuType storageName=$storageAccountName