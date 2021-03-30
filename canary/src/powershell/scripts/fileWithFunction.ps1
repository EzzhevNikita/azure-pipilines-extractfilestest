function MethodInOtherScript()  { 

  param(
        [string]
        $arg,

       [bool]
       $runScriptInSeparateScope
    )

  Write-Output "Inner function called"

  Write-Output "Call variables from Not Global scope"
  if (Get-Variable Variable1 -ErrorAction SilentlyContinue)
  { $true } else {
    Write-Error "Variable doesn't exists in not global scope" -ErrorAction Stop 
  }

  Write-Output "Call variables from Global scope"
  Write-Output "Use Call operator - " $runScriptInSeparateScope
  if ( $runScriptInSeparateScope )
  { 
    if (Get-Variable Variable1 -Scope Global -ErrorAction SilentlyContinue)
    { Write-Error "Variable shouldn't exist in global scope" -ErrorAction Stop } else {
      $false
    }
  } else
  {
    if (Get-Variable Variable1 -Scope Global -ErrorAction SilentlyContinue)
    { $true } else {
      Write-Error "Variable doesn't exists in global scope" -ErrorAction Stop
    }
  }
}