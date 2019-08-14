#!/usr/bin/expect

# User of the ssh server
set login	""
# Password of the user
set pw		""
# IP or Domain Name of the ssh server
set addr	""
# hostname of the ssh server
set host	""

spawn ssh $login@$addr
expect "$login@$addr\'s password:"
send "$pw\r"
expect "$login@$host:"
#
#
# Now you are logged in the SSH server and you can add more commands here.
#
#
interact
