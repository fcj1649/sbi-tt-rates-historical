#sudo service tor restart
#sleep 5
#curl --socks5 localhost:9050 https://www.sbi.co.in/documents/16012/1400784/FOREX_CARD_RATES.pdf --output ~/sbi-tt-rates-historical/$(date '+%Y-%m-%d-%H:%M').pdf
curl --create-dirs https://www.sbi.co.in/documents/16012/1400784/FOREX_CARD_RATES.pdf --output $(date '+%Y')/$(date '+%m')/$(date '+%Y-%m-%d-%H%M').pdf
git add .
git config user.email "eswaramaharaja@gmail.com"
git config user.name "fcj1649"
git commit -m "Daily update $(date '+%Y-%m-%d-%H%M')"
git push origin master
