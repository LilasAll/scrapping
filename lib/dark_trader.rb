 
require 'nokogiri'
require 'pry'
require 'open-uri'

def dark_trader

  page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
  
  #Get the name of the money
  names = page.xpath('//td[@class="text-left col-symbol"]') 

  #Get the abbreviation of the money
  names_array = names.collect(&:text) 

  #Get the price of th money
  prices = page.xpath('//td/a[@class="price"]') 

  #Get the abbreviation of the price
  prices_array = prices.collect(&:text)

  #Add the price in the array with money 
  zipped = names_array.zip(prices_array) 

  #Create an Hase
  result = (Hash[zipped])
  puts result

end

dark_trader