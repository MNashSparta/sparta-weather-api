require_relative 'services/weather_by_city_name_service'
require_relative 'services/generate_random_city_service'

class Openweather

  def weather_by_city_name_service
    WeatherByCityNameService.new
  end

  def generate_random_city_service
    GenerateRandomCityService.new
  end


end

# city = Openweather.new.weather_by_city_name_service
# city.get_city('london')
#
# p city.get_city_main_temp_max
