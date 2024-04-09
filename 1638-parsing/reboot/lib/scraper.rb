# lib/scraper.rb
require 'nokogiri'
require 'open-uri'

def scraper(query)
  # 1. We get the HTML page content
  # filepath = "/home/donald/code/Donald-Chow/lewagonjapan/1638/1638-parsing/reboot/lib/results.html"
  # html_content = File.open(filepath)
  # or
  html_content = URI.open("https://www.etsy.com/search?q=#{query}", "User-Agent" => "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0").read
  # 2. We build a Nokogiri document from this file
  doc = Nokogiri::HTML.parse(html_content)
  # 3. We search for the correct elements containing the items' title in our HTML doc
  results = {}
  doc.search('.v2-listing-card__info .v2-listing-card__title').each do |element|
    # 4. For each item found, we extract its title and print it
    results[element.text.strip] = false
  end
  return results
end
