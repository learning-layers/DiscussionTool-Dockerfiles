#!/bin/bash

# Replace variables if needed
initialScriptLocation=$PWD
if [ ! -f dt-replacement-made.lock ];
then
	source ~/bin/dt-replace-variables.sh
	cd $initialScriptLocation
	touch dt-replacement-made.lock
fi

# Start nginx
sudo /usr/sbin/nginx

