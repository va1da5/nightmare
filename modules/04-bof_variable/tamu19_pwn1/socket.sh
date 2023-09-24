#!/bin/sh

# https://gtfobins.github.io/gtfobins/socat/
socat -d -T60 TCP-LISTEN:5000,reuseaddr,fork EXEC:"./pwn1",pty,setsid,setpgid,stderr
