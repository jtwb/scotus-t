from scrapy import Item, Field
from scrapy.contrib.spiders import CrawlSpider, Rule
from scrapy.contrib.linkextractors import LinkExtractor


print "HALLO WARLD"


class OralItem(Item):
    url = Field()
    name = Field()
    audio = Field()
    transcriptxml = Field()


class OyezSpider(CrawlSpider):

    name = 'oyez'
    allowed_domains = ['oyez.org']
    start_urls = ['http://www.oyez.org/issues']
    rules = [Rule(LinkExtractor(allow=['/cases/(\w|\d|[-/])+']), 'parse_case')]

    def parse_case(self, response):
        case = OralItem()
        case['url'] = response.url
        case['name'] = response.css("#page-title::text").extract()
        case['audio'] = response.css(".arg-link.audio[href^='/api/media']::attr('href')").extract()
        case['transcriptxml'] = response.css(".arg-link.audio[rel^='/transcripts']::attr('rel')").extract()
        return case
