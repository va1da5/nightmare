#!/bin/sh

# socat -T60 TCP-LISTEN:5000,reuseaddr,fork EXEC:"./boi",pty,stderr,setsid,sigint,sane
socat -d TCP-LISTEN:5000,reuseaddr,fork SYSTEM:"./just_do_it",pty,setsid,setpgid,stderr,crnl

# https://gtfobins.github.io/gtfobins/socat/
# https://manpages.debian.org/testing/socat/socat.1.en.html