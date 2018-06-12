require 'httparty'
require 'json'

class WeatherByCityNameService

  include HTTParty

  base_uri 'api.openweathermap.org/data/2.5/'

  def get_city city_name
    @city_data = JSON.parse(self.class.post("weather?q=#{city_name}&APPID={259c0014cae2125002a9796e65ad00fc}").body)
  end

  def return_city_data
    @city_data
  end

end
