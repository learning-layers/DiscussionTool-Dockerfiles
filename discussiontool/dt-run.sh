#!/bin/bash

# Replace variables if needed
if [ ! -f dt-replacement-made.lock ];
then
	source ~/bin/dt-replace-variables.sh
	touch dt-replacement-made.lock
fi

# Start nginx
sudo /usr/sbin/nginx

