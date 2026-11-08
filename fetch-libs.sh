#!/bin/sh
# Downloads the two libraries so the app works fully offline. Run once, with internet.
cd "$(dirname "$0")/www"
curl -L -o xlsx.full.min.js https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js
curl -L -o jspdf.umd.min.js https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js
