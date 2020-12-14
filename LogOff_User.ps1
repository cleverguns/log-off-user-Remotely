#log-off user Remotely From multiple Servers

#Mentioned systems name in below format from you need to logoff specific user

$servers = 'System 1' , 'System 2' , 'System 3' , 'System 4'

# Mentioned the username w/c need to get log off from remote systems
$username = 'Test_User 1'

# This loop will connect the system one by ine and where the specific user ID match will logoff automatically.
foreach ($servers in $servers)
{
    try{
        $session = ((quser /server:$servers | ? {$_ -match $username}) -split ' +') [2] 
        logoff $session /server:$servers 
    }
    catch {


    }
}