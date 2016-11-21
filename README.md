# URLChkr

This program reads URLs from a .txt file and checks the returned HTTP status code.  

If the HTTP status code is not 200 "OK", this program logs the invalid URL for future reference.

<h4>Usage from LINUX commandline:</h4>

bash read_lines.sh <i>filename</i>.txt

<h4>Invalid URLs log:</h4>

Invalid URLs are logged in a .txt file called 'invalid_urls'.

<h4>Clear log file:</h4>

bash clear_log.sh


