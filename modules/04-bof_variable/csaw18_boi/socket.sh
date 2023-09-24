#!/bin/sh

# socat -T60 TCP-LISTEN:5000,reuseaddr,fork EXEC:"./boi",pty,stderr,setsid,sigint,sane,crnl,
socat -d TCP-LISTEN:5000,reuseaddr,fork EXEC:'./boi',pty,stderr,crnl,sigint,sigquit
# https://gtfobins.github.io/gtfobins/socat/
# https://manpages.debian.org/testing/socat/socat.1.en.html#crnl