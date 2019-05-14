#!/bin/bash
# gain.sh; Version 1.1, Linux; Author: Jason Ellis, jellis@verdantservices.com
# Copyright (c) 2011 Verdant Services, Inc.

PROGRAM=`basename $0`
USER="$1"

# Define Functions
usage() {
        echo "USAGE: ${PROGAM} username"
        exit 1
}

# Main

if [ $# -lt 1 ];
then
        usage
fi

if [ ${USER} = "root" ];
then
        /usr/local/bin/rootsh -i
else
        /usr/local/bin/rootsh -i -u ${USER}
fi
