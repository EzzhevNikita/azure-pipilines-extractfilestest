param(
  [Parameter(Mandatory=$false)][string] $Variable1 = "Test variable value"
)

. $PSScriptRoot\fileWithFunction.ps1

Write-Host "Variables defined in entrypoint file v1 = $Variable1"

MethodInOtherScript("Script arg")
