require 'rspec'
require 'nokogiri'
require 'open-uri'

def cher_depute

	#Put the best url to find informations
	page = Nokogiri::HTML(open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&lang=fr#pagination_deputes"))

	#Create array to put email and name of deputy
	deputy_email = Array.new
	deputy_name = Hash.new

	email = get_link(page).css('ul[class="no_puce list_ann"]')


	#Association each mail to each deputy
	list[deputy_name]=deputy_email

	return list 

end 

