Set-ExecutionPolicy RemoteSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

RefreshEnv

Choco install git
Choco install nodejs
Choco install mongodb
Choco install mongodb-compass
Choco install mongodb-shell