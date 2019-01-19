class PagesController < ApplicationController   
  def home
    @waste = ExcelLoader.load_data("app/models/2017_FL.csv")
  end
end
