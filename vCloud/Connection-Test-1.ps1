#$vchost="incloud.vodafone.ua"
#$vctestport="9443"
#$mycred=(get-Credential -Message "Enter your login and password to connect to the VMware vCloud Director" -UserName "sasha@kvcloud.local")
###$RootCred=New-VICredentialStoreItem -Host $vchost -User $mycred.username -Password $mycred.Password
###Connect-CIServer -Server $vchost -Port $vctestport -User $mycred.username -Password $mycred.Password
#Connect-CIServer -Server $vchost -Port $vctestport -Credential $mycred
# Working!
Connect-VIServer -Server vcm01.kvcloud.local `
 -Credential (Get-Credential -Message "Put your credentials to connect to management vCenter" -UserName sasha@kvcloud.local) -SaveCredentials
#Get-CIDatastore
#$NetAdapterCI=Get-CINetworkAdapter
#$NetAdapterCI 


Get-CINetworkAdapter #| Select-Object {$PSItem.IPAddressAllocationMode, $PSItem.VAppNetwork, $PSItem.VM, $PSItem.IPAddress,$PSItem.MACAddress, $PSItem.ExternalIPAddress}


