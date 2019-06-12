function Prompt {
    $esc = [char] 27

    $txtblk = "$esc[0;30m" # Black - Regular
    $txtred = "$esc[0;31m" # Red - Regular
    $txtgrn = "$esc[0;32m" # Green - Regular
    $txtylw = "$esc[0;33m" # Yellow - Regular
    $txtblu = "$esc[0;34m" # Blue - Regular
    $txtpur = "$esc[0;35m" # Purple - Regular
    $txtcyn = "$esc[0;36m" # Cyan - Regular
    $txtwht = "$esc[0;37m" # White - Regular
    $bldblk = "$esc[1;30m" # Black - Bold
    $bldred = "$esc[1;31m" # Red - Bold
    $bldgrn = "$esc[1;32m" # Green - Bold
    $bldylw = "$esc[1;33m" # Yellow - Bold
    $bldblu = "$esc[1;34m" # Blue - Bold
    $bldpur = "$esc[1;35m" # Purple - Bold
    $bldcyn = "$esc[1;36m" # Cyan - Bold
    $bldwht = "$esc[1;37m" # White - Bold
    $unkblk = "$esc[4;30m" # Black - Underline
    $undred = "$esc[4;31m" # Red - Underline
    $undgrn = "$esc[4;32m" # Green - Underline
    $undylw = "$esc[4;33m" # Yellow - Underline
    $undblu = "$esc[4;34m" # Blue - Underline
    $undpur = "$esc[4;35m" # Purple - Underline
    $undcyn = "$esc[4;36m" # Cyan - Underline
    $undwht = "$esc[4;37m" # White - Underline
    $bakblk = "$esc[40m"   # Black - Background
    $bakred = "$esc[41m"   # Red - Background
    $badgrn = "$esc[42m"   # Green - Background
    $bakylw = "$esc[43m"   # Yellow - Background
    $bakblu = "$esc[44m"   # Blue - Background
    $bakpur = "$esc[45m"   # Purple - Background
    $bakcyn = "$esc[46m"   # Cyan - Background
    $bakwht = "$esc[47m"   # White - Background
    $txtrst = "$esc[0m"    # Text Reset - Useful for avoiding color bleed

    return "$($txtrst)PS $($bldgrn)$env:USER$($txtrst)@$($bldred)$([System.Environment]::MachineName)$($txtrst):$($bldylw)$($executionContext.SessionState.Path.CurrentLocation)$($bldgrn)$([System.Environment]::NewLine)$('>' * ($nestedPromptLevel + 1)) $($txtrst)"
}
