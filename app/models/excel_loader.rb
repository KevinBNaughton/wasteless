require 'json'

class ExcelLoader
  def self.load_data(file)
    counties = Hash.new
    CSV.foreach(file) do |row|
      
    end
  end

end
