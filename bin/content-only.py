import bs4
import sys

directory = sys.argv[1]

main = bs4.BeautifulSoup(open(f'{directory}/index.html', 'rb')).find('article')

with open(f'{directory}/faq.content-only.html', 'wb+') as fp:
    fp.write(bytes(str(main), 'utf-8'))
