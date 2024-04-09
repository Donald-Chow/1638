require "csv"

def save_csv(items)
  # define filepath
  filepath = File.dirname(__FILE__) + '/data/christmas_list.csv'
  # open and write into csv
  CSV.open(filepath, 'wb', col_sep: ',', force_quotes: true, quote_char: '"') do |csv|
    # We had headers to the CSV
    csv << ['name', 'marked']
    # add each item
    items.each do |key, value|
      csv << [key, value]
    end
  end
end

def load_csv(items)
  # define filepath
  filepath = File.dirname(__FILE__) + '/data/christmas_list.csv'
  # open and load the csv into array
  CSV.foreach(filepath, col_sep: ',', quote_char: '"', headers: :first_row, header_converters: :symbol) do |row|
    # TODO: build new gift from information stored in each row
    name = row[:name]
    # turn marked attr to a boolean
    marked = row[:marked] == "true"
    items[name] = marked
  end
end
