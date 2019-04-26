#!/bin/bash
# http://rus-linux.net/MyLDP/BOOKS/abs-guide/flat/abs-book.html#PRELIMEXER
# Напишите сценарий, который выводит дату, время, список зарегистрировавшихся пользователей, 
# и uptime системы и сохраняет эту информацию в системном журнале.

sudo logger  "==== Begin logging example ======"
sudo date | logger
sudo uptime | logger
sudo  cat /etc/passwd |grep -P "(^.*?):" | logger
sudo logger  "==== End logging example ======"
sudo cat /var/log/syslog

