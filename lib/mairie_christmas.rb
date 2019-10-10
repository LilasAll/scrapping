require 'nokogiri'
require 'open-uri'

def city_url

	#Get the url and run Nokogiri
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/"))

  #Get the url of townhall
  city_urls = page.xpath('//td/a/@href')

  #Create an Array for the urls
  city_urls_array = Array.new

  #Puts each url in the array
  city_urls.each do |elements|
  	city_urls_array << "#{city_urls}#{elements}"
  end

  #Puts the list of urls of all cities
  puts city_urls_array

end

def get_city_email(city_url)
	
end

city_url