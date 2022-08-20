#!/bin/bash

#connect to the vpn 
#protonvpn-cli c -f
echo "what book you want to download? (in quote if the book has spaces in it's name ) "
read bookname 

#fetch the library homepage to dom.html
curl  https://b-ok.asia/s/${bookname} > dom.html

#disconnect the vpn

#protonvpn-cli d -f

node script.js | fzf 
