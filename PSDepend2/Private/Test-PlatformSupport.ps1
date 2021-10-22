function Test-PlatformSupport {
    [cmdletbinding()]
    param
    (
        $Type,
        [string[]]
        $Support
    )
    $os = Get-OSEnvironment
    foreach ($supportEntry in $Support)
    {
        $supportOS, $edition = $supportEntry -split ':'
        if ($edition -eq 'Desktop')
        {
            return $PSVersionTable.PSEdition -eq 'Desktop'
        }
        else
        {
            if ($supportOS -eq 'core')
            {
                if ($PSVersionTable.PSEdition -eq 'Core')
                {
                    return $true
                }
            }
            else
            {
                if ($supportOS -eq $os)
                {
                    return $true
                }
            }
        }
    }
    return $false
}