function Get-DOSWideDirectory {

    [CmdletBinding()]
    param (
        [Parameter()]
        [string]$Path = '.'
    )

    & cmd.exe /C "dir $((Resolve-Path $Path).Path) /ad /w"
}


Set-Alias dwd Get-DOSWideDirectory