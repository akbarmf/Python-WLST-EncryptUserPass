To Generate User and Password File Config and Key Encrypted 

1. Open properties file and edit variable values

	adminUrl		= url to connect wlst e.g t3://192.168.43.21:7001
	importUser		= admin user for connecting to wlst
	importPassword	= password
	keyName			= name of config file and key that will generated
	exportFilePath	= target path for config and key file that will generated. Don't end with "/"

2. Open "encrypt.sh" and edit variable:
	
	WL_HOME= path to WL_HOME location (binary path until oracle_common)

3. Run script sh:

	./encrypt.sh

4. File will be generated to:
	
	- config file : "/exportFilePath/keyName_config.props"
	- key file : "/exportFilePath/keyName_key.props"