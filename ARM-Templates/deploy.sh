projectPath="/home/hassanaftab/Documents/Projects/Azure-Admin"
templateFile="$projectPath/ARM-Templates/azuredeploy-parameters.json"
today=$(date +"%d-%b-%Y")
DeploymentName="addnameparameter-"$today
storageAccountName="storagaccounthassanaftab"

az deployment group create \
  --name $DeploymentName \
  --template-file $templateFile \
  --parameters storageName=$storageAccountName