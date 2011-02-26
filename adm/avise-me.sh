#!/bin/bash
#
# avise-me.sh
# 
# Avisa o término da execução de um programa através de uma message box no kde
# 
# 
# Fonte: 
#
# [0] http://techbase.kde.org/Development/Tutorials/Shell_Scripting_with_KDE_Dialogs

$1

kdialog --msgbox "O comando '$1' terminou a sua execução."

