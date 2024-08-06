$apps = @(
    "Microsoft.VisualStudioCode",
    "Git.Git",
    "REALiX.HWiNFO",
    "Proton.ProtonMailBridge",
    "Logitech.GHUB",
    "OpenJS.NodeJS",
    "Valve.Steam",
    "Bitwarden.Bitwarden",
    "OpenWhisperSystems.Signal",
    "Discord.Discord",
    "Telegram.TelegramDesktop",
    "Proton.ProtonDrive",
    "Microsoft.Sysinternals.Autoruns",
    "Microsoft.Sysinternals.ProcessMonitor",
    "Microsoft.Sysinternals.ProcessExplorer"
)

foreach ($app in $apps) {
    winget install --id $app --silent --accept-package-agreements --accept-source-agreements
}

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name AppsUseLightTheme -Value 0
