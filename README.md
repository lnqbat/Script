# Script

📜 Script complet rappel.ps1 :

```
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Crée l'icône de notification
$notifyIcon = New-Object System.Windows.Forms.NotifyIcon
$notifyIcon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon("$PSScriptRoot\verrou.ico")
$notifyIcon.Visible = $true
$notifyIcon.BalloonTipTitle = "🔒 Sécurité"
$notifyIcon.BalloonTipText = "Pense à verrouiller ton ordi !"

# Boucle infinie
while ($true) {
    $notifyIcon.ShowBalloonTip(5000)
    Start-Sleep -Seconds 300
}
```


📦 Génération de l'exécutable .exe

Ouvre PowerShell dans le dossier où se trouvent les fichiers, puis exécute :

```
Invoke-PS2EXE .\rappel.ps1 .\rappel.exe -noConsole -icon .\verrou.ico
```