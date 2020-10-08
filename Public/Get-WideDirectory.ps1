function Get-WideDirectory {

    [CmdletBinding()]
    param (

        [Parameter(ValueFromPipeline)]
        [string[]]
        $Path = @('.'),

        [ValidateSet('','KB','MB')]
        [string]
        $Size = ''
    )

    # -------------------------------------------------------------------------
    BEGIN {

    }

    # -------------------------------------------------------------------------
    PROCESS {

        foreach ($Path1 in $Path) {

            Write-Verbose "Evaluating $Path1"
            $ResolvedPath = Resolve-Path $Path1 # it's OK to fail here

            if ($ResolvedPath.Provider.Name -ne 'FileSystem') {
                Write-Error "$Path1 is not FileSystem path"
                continue
            }
            $Path1 = $ResolvedPath.Path

            "`n`n    Directory: $Path1`n"
            $Directories = Get-ChildItem -Path $Path1 -Directory -Force

            $Output = foreach ($Dir1 in $Directories) {
                try {
                    $Files = Get-ChildItem -Path ($Dir1.FullName) -File -Force -ea Stop
                    if ($Size) {
                        $Attribute = ($Files | Measure-Object Length -Sum).Sum
                        if ($Size -eq 'KB') {$Attribute /= 1KB}
                        if ($Size -eq 'MB') {$Attribute /= 1MB}
                    } else {
                        $Attribute = @($Files).Count
                    }
                    # Output for pipeline
                    $Description = "{0} [{1}]" -f ($Dir1.Name), [int]$Attribute
                }
                catch
                {
                    $Description = "{0} [x]" -f ($Dir1.Name)
                }
                [PSCustomObject]@{Description=$Description}
            }

            $Output | Format-Wide -AutoSize
        }
    }

    # -------------------------------------------------------------------------
    END {

    }
}

Set-Alias dw Get-WideDirectory