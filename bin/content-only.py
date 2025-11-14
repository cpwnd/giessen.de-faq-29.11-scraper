import bs4

main = bs4.BeautifulSoup(open('giessen.de.index.html', 'rb')).find('article')

with open('giessen.de/faq.content-only.html', 'wb+') as fp:
    fp.write(bytes(str(main), 'utf-8'))
