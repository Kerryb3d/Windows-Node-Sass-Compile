rem use cssOutputDirOverride cmd parameter if provided
IF NOT "%cssOutputDirOverride%" == "" (
    echo Using Output Directory... %cssOutputDirOverride%
    set cssFinalOutputPath=%cssOutputDirOverride%/%cssOutputName%
) ELSE (
    set cssFinalOutputPath=%cssOutputPath%/%cssOutputName%
)

rem use cssAdditionalOptions cmd parameter if provided
IF NOT "%cssAdditionalOptions%" == "" (
    echo Using Options... %cssAdditionalOptions%
)

rem run node-sass compile
node .\node_modules\node-sass\bin\node-sass %cssOptions% %cssSrcPath%/%cssSrcName% %cssFinalOutputPath% %cssAdditionalOptions%

pause