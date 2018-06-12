require_relative 'services/weather_by_city_name_service'

class Openweather

  def weather_by_city_name_service
    WeatherByCityNameService.new
  end

end

city = Openweather.new.weather_by_city_name_service
city.get_city('london')

p city.get_city_main_temp_max
