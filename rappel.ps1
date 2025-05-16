Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$notifyIcon = New-Object System.Windows.Forms.NotifyIcon
$notifyIcon.Icon = [System.Drawing.SystemIcons]::Information
$notifyIcon.Visible = $true
$notifyIcon.BalloonTipTitle = "🔒 Sécurité"
$notifyIcon.BalloonTipText = "Pense à verrouiller ton ordi !"

while ($true) {
    $notifyIcon.ShowBalloonTip(5000)
    Start-Sleep -Seconds 300
}
