param($rede)
if (!$rede)
{
write-host "Modo de uso ./script.ps1 192.168.1"
}
else{
foreach ($ip in 1..254)  {
try{$MeuPing = ping -n 1 "$rede.$ip" | select-string "TTL" 
$MeuPing.Line.Split(' ')[2] -replace ":",""
    } catch {}
                         }
    }