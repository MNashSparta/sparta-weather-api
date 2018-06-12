require_relative 'services/weather_by_city_name_service'

class Openweather

  def weather_by_city_name_service
    WeatherByCityNameService.new
  end

end

city = Openweather.new
p city.weather_by_city_name_service.get_city('london')
