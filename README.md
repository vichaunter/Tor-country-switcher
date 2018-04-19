# Tor-country-switcher
This script make easy switching between countries when you want to use different one in tor. Just execute bat or sh and set desired country in prompt (2 char code).

## Download
First of all you should go to official tor page and download any Windows or Linux versions you go to use.

Once you have decompressed, download this branch, decompress in tor folder (next to Browser folder), and go to next section

## If you use Linux
In this case you should open a command line, go to folder where is all files decompressed and execute this command to make it executable:

```
sudo sh +x startFrom.sh
```

From this point you can execute Tor selecting Country just executin startFrom file with:
```
./startFrom.sh
```
Or if you have configured it, you can double click hover the sh file.

## If you use Windows
Everything is set, you only need to double click hover startFrom.bat, and it will ask you for country to execute.

# Have in mind

* You should write only the country code from the allowedCountries, for example es,cz,de,fr,pl,uk, etc.
* allowedCountries.txt should be there, because the script check if the country is allowed by Tor, otherwise it will fail if tor is not able to use country set
