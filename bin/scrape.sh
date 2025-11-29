#!/bin/env bash
curl -X 'GET' --connect-timeout 30 --max-time 60 -v 'https://www.giessen.de/index.php?object=tx,2874.5&ModID=7&FID=2874.74601.1' -o giessen.de/index.html
python ./bin/content-only.py giessen.de
pandoc -f html -t gfm-raw_html giessen.de/faq.content-only.html > giessen.de/faq.content-only.md

curl -X 'GET' --connect-timeout 30 --max-time 60 -v 'https://www.giessen.de/index.php?La=1&object=tx,2874.74742.1&kuo=2&NavID=1894.6&sub=0#' -o liveticker.giessen.de/index.html
python ./bin/content-only.py liveticker.giessen.de
pandoc -f html -t gfm-raw_html liveticker.giessen.de/faq.content-only.html > liveticker.giessen.de/faq.content-only.md

curl -X 'GET' --connect-timeout 30 --max-time 60 -v 'https://www.polizei.hessen.de/die-polizei/einsaetze-grossveranstaltungen/einsatzlage-giessen' -o polizei.hessen.de/index.html
python ./bin/content-only.py polizei.hessen.de
pandoc -f html -t gfm-raw_html polizei.hessen.de/faq.content-only.html > polizei.hessen.de/faq.content-only.md
