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

    it "should return a float for the longitude of 0.13" do
      expect(@city.get_city_longitude).to be_kind_of(Float)
      expect(@city.get_city_longitude).to eq -0.13
    end

    it "should return a float for the latitude of 51.51" do
      expect(@city.get_city_latitude).to be_kind_of(Float)
      expect(@city.get_city_latitude).to eq 51.51
    end

    it "should return a hash for the weather containing the 4 specified keys" do
      expect(@city.get_city_weather).to be_kind_of(Hash)
      expect(@city.get_city_weather.keys).to eq (["id", "main", "description", "icon"])
    end


    it "should return an integer for weather id" do
      expect(@city.get_city_weather_id).to be_kind_of(Integer)
    end

    it "should return an integer for weather id" do
      expect(@city.get_city_weather_main).to be_kind_of(String)
    end

    it "should return an integer for weather id" do
      expect(@city.get_city_weather_description).to be_kind_of(String)
    end

    it "should return an integer for weather id" do
      expect(@city.get_city_weather_icon).to be_kind_of(String)
    end




    it "should return a string for base with a value: stations" do
      expect(@city.get_city_base).to be_kind_of(String)
      expect(@city.get_city_base).to eq("stations")
    end


    it "should return a hash for main" do
      expect(@city.get_city_main).to be_kind_of(Hash)
      expect(@city.get_city_main.keys).to eq(["temp", "pressure", "humidity", "temp_min", "temp_max"])
    end


    it "should return a float for main: temp" do
      expect(@city.get_city_main_temp).to be_kind_of(Float)
    end

    it "should return a float for main: temp" do
      expect(@city.get_city_main_pressure).to be_kind_of(Integer)
    end

    it "should return a float for main: temp" do
      expect(@city.get_city_main_humidity).to be_kind_of(Integer)
    end

    it "should return a float for main: temp" do
      expect(@city.get_city_main_temp_min).to be_kind_of(Float)
    end

    it "should return a float for main: temp" do
      expect(@city.get_city_main_temp_max).to be_kind_of(Float)
    end


    it "should return an integer for visibility" do
      expect(@city.get_city_visibility).to be_kind_of(Integer)
    end

    it "should return a hash for wind" do
      expect(@city.get_city_wind).to be_kind_of(Hash)
    end

    it "should return a float for wind: speed" do
      expect(@city.get_city_wind_speed).to be_kind_of(Float)
    end

    it "should return an integer for wind: deg" do
      expect(@city.get_city_wind_deg).to be_kind_of(Integer)
    end

    it "should return a hash for clouds with 1 specified key" do
      expect(@city.get_city_clouds).to be_kind_of(Hash)
      expect(@city.get_city_clouds.keys).to eq(["all"])
    end

    it "should return an integer for clouds: all" do
      expect(@city.get_city_clouds_all).to be_kind_of(Integer)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end

    it "should return " do
      # expect(@city.get_city_).to be_kind_of(Array)
    end





  end
end
