

function seeFirst
{
    $filenamePattern = $args[0];
    $searchPattern = $args[1];
    gci . $filenamePattern -rec | ? { $_ | select-string $searchPattern } | % { $x = ($_ | select-string $searchPattern ); $x.path + " " + $x.line } 
}
