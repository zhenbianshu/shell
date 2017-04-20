#!/usr/bin/expect

set timeout 2
spawn ssh vagrant@172.16.18.16
expect "*password*"
send "vagrant\r"
send "sudo -s\r"
send "cd /data1/logs/pay.huixinglicai.com\r"
interact

# use command
# vim ~/.bash_profile
# alias me="/Users/mfhj-dz-001-441/zbs"
# source ~/.bash_profile
