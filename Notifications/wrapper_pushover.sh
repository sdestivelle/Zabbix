#!/bin/bash

#=====================================================================
#
# ZABBIX pushover notification wrapper
# Steve DESTIVELLE
#
# Modifications : 
# ---le--- -----par----- ---------------objet---------------
# 2015/06/12 S. DESTIVELLE   Creation of the script
# 2015/11/18 S. DESTIVELLE   Modification of the script (add device variable). Thanks to Marco
# 2016/03/27 G. LEITGAB      Use variables for easier handling
#
#=====================================================================

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# To do:
# Add the Application Token
# Add the name of your device declared at "https://pushover.net"
# 
App_Token="XXXX"
Device="XXX"
Sound="classical"
User="${1}"
Title="${2}"
Message="${3}"

# The command
${DIR}/pushover.sh -d "${Device}" -T "${App_Token}" -s "${Sound}" -U "${User}" -t "${Title}" "${Message}"
