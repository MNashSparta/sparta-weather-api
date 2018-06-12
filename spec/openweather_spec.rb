require 'spec_helper'

describe Openweather do
  context 'requesting information on a specific city: ' do

    before(:all) do
      @city = Openweather.new.weather_by_city_name_service
      @city.get_city('london')
    end

    it "should respond coord as a hash" do
      expect(@city.get_city_coord).to be_kind_of(Hash)
    end

    it "should return a float the longitude of 0.13" do
      expect(@city.get_city_longitude).to be_kind_of(Float)
      expect(@city.get_city_longitude).to eq -0.13
    end

    # it "should " do
    #   expect(@city.get_city_).to be_kind_of(Hash)
    # end


  end
end
