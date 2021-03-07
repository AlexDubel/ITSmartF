#Get hardware information from Management vCenter
#Connect-VIServer -Server vcm01.kvcloud.local `
# -Credential (Get-Credential -Message "Put your credentials to connect to management vCenter" -UserName sasha@kvcloud.local) -SaveCredentials
#Get-VMHost | Format-Table -AutoSize
#Get-Datacenter
Get-Datastore | Select-Object name, id, type, FileSystemVersion, CapacityGB, FreeSpaceGB, Datacenter | Format-Table -AutoSize
#Get-Datastore | Format-Table -AutoSize
Get-VMHost | Select-Object name, state, ConnectionState, Manufacturer, Model, NumCpu, ProcessorType, StorageInfo, Version, Build, TimeZone
#Example
get-vm zabbix01 | Select-Object *
Get-VDSwitch | Select-Object *

$serverlist=Get-Content C:\Users\oldubel\Documents\PowerShell\vCloud\TestScripts\get-servinfo.txt
$ss=New-PSSession -Credential (Get-Credential -Message ggg -UserName oldubel@kvcloud.local) -ComputerName $serverlist
#https://business.vodafone.ua/produkty/infrastructure-as-a-service
