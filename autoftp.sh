#!/usr/bin/expect

# IP of the ftp server
set ftp_addr 	""

# Username of the ftp user
set ftp_user	""

# Password of the ftp user
set ftp_pass	""

# Getting the user name for the expect script
set login	[exec whoami] 

spawn ftp $ftp_addr
expect "Name: ($ftp_addr:$login)"
send "$ftp_user\r" 
expect "Password:"
send "$ftp_pass\r" 
#
#
# Now you are logged in and can add more commands to exec inside the ftp connection
#
#
interact
