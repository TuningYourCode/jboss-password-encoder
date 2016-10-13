#!/bin/sh

if [ -z $1 ]; then
	echo "You need to supply the password to encode as first argument"
	exit 1;
fi

export CLASSPATH="`pwd`/jars/picketbox-4.0.7.Final.jar:`pwd`/jars/jboss-logging-3.1.0.GA.jar:$CLASSPATH"
java org.picketbox.datasource.security.SecureIdentityLoginModule $1
