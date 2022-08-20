#!/bin/bash

#connect to the vpn 
#protonvpn-cli c -f
echo "what book you want to download? (in quote if the book has spaces in it's name ) "
read bookname 

#fetch the library homepage to dom.html
curl  https://b-ok.asia/s/${bookname} > dom.html

#disconnect the vpn

#protonvpn-cli d -f

books=$(node script.js | fzf | grep  -o 'book/[a-zA-Z0-9.+-]*/[a-zA-Z0-9.+-]*'  )


curl  https://b-ok.asia/${books} > books.html

downloadurl=$(cat books.html | grep -o 'dl/[a-zA-Z0-9.+-]*/[a-zA-Z0-9.+-]*' | head -1)

python  bookfetcher.py  https://b-ok.asia/dl/11754619/783247