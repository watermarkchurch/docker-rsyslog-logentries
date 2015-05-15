#!/bin/bash

if [ -z $LOGENTRIES_TOKEN ]
then
  echo "You must specify the LOGENTRIES_TOKEN environment variable"
  exit 1
fi

sed -i -- "s/{{LOGENTRIES_TOKEN}}/$LOGENTRIES_TOKEN/" /etc/rsyslog.conf

exec /usr/sbin/rsyslogd -n
