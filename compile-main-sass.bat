@setlocal enabledelayedexpansion
@echo off
if [%1] neq [] (set %1)
if [%2] neq [] (set %2)
rem these are the custom options when compiling the .scss files
rem --output-style = (nested | expanded | compact | compressed)
rem "--include-path node_modules" is required to get node-sass to import bootstrap scss files
set cssOptions=--output-style compressed --source-map true --source-map-contents true --include-path node_modules
rem cmd first cmd parameter that'll override the cssOutputPath (e.g. C:\development\project)
set cssOutputDirOverride=%output%
rem cmd second cmd parameter that'll add additional compile options (e.g. --watch)
set cssAdditionalOptions=%options%

rem Example Cmd (compile-main-sass.bat "output=C:\development\project" "options=--watch")

rem ONLY SECTION THAT SHOULD BE MODIFIED
rem --------------------------------------------------------------------------------------
set cssSrcPath=src\main
set cssSrcName=main.scss
set cssOutputPath=dist\css
set cssOutputName=main.css
rem --------------------------------------------------------------------------------------

rem run bat to start compile
call config-end.bat