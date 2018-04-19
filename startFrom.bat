@echo off
set /p id=Country code: 

findstr {%id%} allowedCountries.txt
echo %errorlevel%
if %errorlevel% equ 0 (
	@echo ExitNodes {%id%} StrictNodes 1 > Browser\TorBrowser\Data\Tor\torrc
	start Browser\firefox.exe
) else (
	echo "Country not found, please use one from this list:"
	pause
	type allowedCountries.txt
	pause
	goto done
)
