$tcp = New-Object System.Net.Sockets.TcpClient
try {
    $tcp.Connect('10.129.177.97', 81)
    Write-Host "Port 81 is OPEN"
    $tcp.Close()
} catch {
    Write-Host "Port 81 is CLOSED"
}

$tcp2 = New-Object System.Net.Sockets.TcpClient
try {
    $tcp2.Connect('10.129.177.97', 80)
    Write-Host "Port 80 is OPEN"
    $tcp2.Close()
} catch {
    Write-Host "Port 80 is CLOSED"
}
