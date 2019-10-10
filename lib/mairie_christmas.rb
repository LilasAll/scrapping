require 'nokogiri'
require 'open-uri'

def townhall_url

	#Get the url and run Nokogiri
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/"))

  #Get the url of townhall
  townhall_urls = page.xpath('//td/a/@href')

  #Create an Array for the urls
  townhall_urls_array = Array.new

  #Puts each url in the array
  townhall_urls.each do |elements|
  	townhall_urls_array << "#{url}#{elements}"
  end

  #Puts the list of urls of all townhalls
  puts townhall_urls_array

end

def get_townhall_email(townhall_url)

end

get_townhall_urls