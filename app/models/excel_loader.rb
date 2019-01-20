require 'json'
require 'csv'
require 'pry'

# 11 is the default value. This is the food waste in the csv
class ExcelLoader
  def self.load_data(file, option = nil)
    counties = Hash.new
    #right now just waste data
    val_index = 11
    if option == "recycle_waste"
      val_index = 12
    end
    CSV.foreach(file) do |row|
      #binding.pry
      counties[row[0]] = row[val_index].gsub(",","").to_f / row[1].gsub(",","").to_f
    end
    counties
  end

  private 
  def get_val_index(option = nil)
  end
end
