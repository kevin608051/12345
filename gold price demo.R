rm(list=ls(all=TRUE))
library(XML)
library(bitops)
library(RCurl)
library(httr)

orgURL = 'http://www.gck99.com.tw/gold.php'

html = getURL(orgURL, ssl.verifypeer = FALSE)
xml = htmlParse(html, encoding ='utf-8')
address = xpathSApply(xml, "//tr[@class='main_1']//td[3]", xmlValue)

address
address