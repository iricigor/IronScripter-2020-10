function Get-PSWideDirectory {

    [CmdletBinding()]
    param (
        [Parameter()]
        [string]$Path = '.'
    )

    dir $Path -directory | format-wide -autosize
}


Set-Alias dwp Get-DOSWideDirectory