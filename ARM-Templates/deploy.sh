templateFile="C:\Users\HassanAftab\Projects\Azure-Admin\ARM-Templates\azuredeploy-parameters.json"
today=$(date +"%d-%b-%Y")
DeploymentName="addnameparameter-"$today

az deployment group create \
  --name $DeploymentName \
  --template-file $templateFile \
  --parameters storageName=storagaccounthassanaftab