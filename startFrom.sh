#!/bin/sh
echo "Country code:" 
read id
if grep -q "{$id}" "allowedCountries.txt"; then
  
	echo ExitNodes {$id} StrictNodes 1 > ./Browser/TorBrowser/Data/Tor/torrc
	./Browser/start-tor-browser
else
	echo "Country not found, press a key to see allowed countries list."; read dummy;
	less allowedCountries.txt
fi
