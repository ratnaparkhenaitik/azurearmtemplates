$password= ConvertTo-SecureString ('$y$@dmin_2020') -AsPlainText -Force
[int]$loop = 4
for([int]$i=1;[int]$i -lt $loop;[int]$i++)
{
$user=New-LocalUser -AccountNeverExpires -Description 'my user' -Name mutti$i -Password $password 
Add-LocalGroupMember -Group 'Administrators' -Member $user 
}
Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -IncludeManagementTools