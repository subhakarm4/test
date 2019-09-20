#!/bin/ksh
sqlplus /nolog <<EOF
connect sys/sys as sysdba
shutdownabort
startup
quit
EOF
cd /home/opt/product/12.1.0/dbhome_1/bin
./lsnrctl stop >>/home/hyperion/logs/lsnrstop.log
sleep 5
./lsnrctl start >>/home/hyperion/logs/lsnrstart.log
exit
