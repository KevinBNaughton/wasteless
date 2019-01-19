require 'json'
require 'csv'
require 'pry'

class ExcelLoader
  def self.load_data(file)
    counties = Hash.new
    #right now just waste data
    CSV.foreach(file) do |row|
      #binding.pry
      counties[row[0]] = row[11].gsub(",","").to_f / row[1].gsub(",","").to_f
    end
    counties
  end

end
