param([string]$pluginDir)

npm -g install generator-yo-wordpress
New-Item -Type Directory -Name $pluginDir

Write-Host "Starting yeoman. Please fill out the requested details."
yo yo-wordpress:plugin

Write-Host "Installing PHP 5.4 and 5.5"
cinst PHP54ForIISExpress -source webpi
cinst PHP55ForIISExpress -source webpi
Write-Host "Installing Composer"
cinst composer