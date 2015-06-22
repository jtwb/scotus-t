FROM python:2-onbuild

VOLUME /var/dataset

CMD [ "scrapy", "runspider", "spiders/oyez.py", "-o", "/var/dataset/crawl", "-t", "pickle" ]
