# A WIDE OPEN POWERSHELL CHALLENGE

This is a PowerShell module made for "A Wide Open PowerShell Challenge" published on ironscripter.us

See challenge details [here](CHALLENGE.md) or online at
https://ironscripter.us/a-wide-open-powershell-challenge/

# How to use

First, clone the repository and import new commands in your session
```PowerShell
PS:\> git clone https://github.com/iricigor/IronScripter-2020-10.git
PS:\> Import-Module .\IronScripter-2020-10\WideDirectory.psm1 -Force
```

That will give you three new commands in your session:
```PowerShell
PS:\> Get-Command -Module WideDirectory
```

```
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Get-DOSWideDirectory                               0.0        WideDirectory
Function        Get-PSWideDirectory                                0.0        WideDirectory
Function        Get-WideDirectory                                  0.0        WideDirectory
```