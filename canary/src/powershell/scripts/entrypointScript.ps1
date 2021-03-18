param(
  [Parameter(Mandatory=$false)][string] $Variable1 = "Test variable value",
  [string] $useCallOperator
)

. $PSScriptRoot\fileWithFunction.ps1

try {
  $useCallOperatorBool = [System.Convert]::ToBoolean($useCallOperator) 
} catch [FormatException] {
  $result = $false
}

Write-Host "Variables defined in entrypoint file v1 = $Variable1"

MethodInOtherScript -arg "Script arg" -useCallOperator $useCallOperatorBool
