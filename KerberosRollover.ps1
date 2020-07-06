#[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
#Install-Module -Name Az -Repository PSGallery -Force
Update-Module -Name Az
Import-Module "C:\Program Files\Microsoft Azure Active Directory Connect\AzureADSSO.psd1"
New-AzureADSSOAuthenticationContext
Get-AzureADSSOStatus | ConvertFrom-Json
$creds = Get-Credential
Update-AzureADSSOForest -OnPremCredentials $creds
