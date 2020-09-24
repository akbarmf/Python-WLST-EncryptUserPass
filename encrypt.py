#!/usr/bin/python

from java.io import FileInputStream

propInputStream = FileInputStream(sys.argv[1])
configProps = Properties()
configProps.load(propInputStream)

url = configProps.get("adminUrl")
username = configProps.get("importUser")
password = configProps.get("importPassword")
nmKey = configProps.get("keyName")
exportPath = configProps.get("exportFilePath")
confFile = exportPath+'/'+nmKey+'_config.props'
keyFile = exportPath+'/'+nmKey+'_key.props'

connect(username, password, url)

storeUserConfig(confFile,keyFile)
print("\n[INFO] Generating key and config file\n")
print("Conf file = "+confFile)
print("Key file = "+keyFile+"\n")

disconnect()

exit()