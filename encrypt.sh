#!/bin/bash
#

#Define WebLogic binary path
WL_HOME=/oracle/bin/wls/12.2.1.3/oracle_common

#Define script location path
SCRIPT_LOC="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

#Define script and properties name
py=encrypt.py
prop=encrypt.properties


#Running wlst
"${WL_HOME}"/common/bin/wlst.sh "${SCRIPT_LOC}"/"${py}" "${SCRIPT_LOC}"/"${prop}"


#Get target path from properties
targetPath="$( cat "${SCRIPT_LOC}"/"${prop}" | grep "exportFilePath" | grep -v "#" | cut -d "=" -f 2 )"

#Change permission target dir
echo -e "[INFO] Change Directory Target Permission to 700\n"
chmod 700 "${targetPath}"
