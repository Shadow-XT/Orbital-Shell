﻿#!orbsh
# this is the default orbsh user profile init script

# here you can set the default foreground and background default colors
#echo (df=white,db=black)
#echo (df=white)

# set the prompt
# to do: add ANSI.RSTXTA at line begin (replace rdc)
#prompt "(RSTXTA)(b8=19) (b8=20) (exec=System.Environment.CurrentDirectory) (b8=19,f8=46) (b8=18) (b8=17) (br)(f=yellow) > (rdc)"
#prompt "(RSTXTA)(f=cyan)(uon)(exec=System.Environment.CurrentDirectory)(tdoff)(br) (f=yellow,b=darkblue)>(rdc) "
prompt "(RSTXTA)(f=green)(uon)(exec=System.Environment.CurrentDirectory)(tdoff)(br)(f=black,b=green)>(rdc) "
#prompt "(RSTXTA)(b8=19) (b8=20) $USERDOMAIN (b8=19,f8=46) (b8=18,f=yellow)>(b8=17) (rdc)"
#prompt "(RSTXTA)(f=cyan)$USERDOMAIN (f=white)> (rdc)"
#prompt "(RSTXTA) > "

# samples
#echo "(b8=196) (b8=202) (b8=208) (b8=214) (b8=220) (b8=226) (b8=190) (b8=154) (b8=118) (b8=82) (b8=46) (b8=41) (b8=36) (b8=31) (b8=26) (b8=21) (b8=20) (b8=19) (b8=54) (b8=90) (b8=126) (b8=162) (b8=198) (b8=204)"

# load a module (offical, from orbital shell)
echo "loading module: PromptGitInfo ... " -n
module -l "$shell/../../../../OrbitalShell-Modules/OrbitalShell-Module-PromptGitInfo/bin/debug/netcoreapp3.1/OrbitalShell-Module-PromptGitInfo.dll"
echo ""

alias proj "cd '$shell/../../../..'"
alias gits "git status"
alias gita "git add . && git status"