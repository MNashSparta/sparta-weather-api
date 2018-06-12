require 'httparty'
require 'json'

class WeatherByCityNameService

  include HTTParty

  base_uri 'api.openweathermap.org'

  def get_city city_name
    @city_data = JSON.parse(self.class.post("/data/2.5/weather?q=#{city_name},uk&appid=259c0014cae2125002a9796e65ad00fc").body)
  end

  def get_city_data
    @city_data
  end


# Co-ord methods
  def get_city_coord
    @city_data["coord"]
  end

  def get_city_longitude
    get_city_coord["lon"]
  end

  def get_city_latitude
    get_city_coord["lat"]
  end


  # Weather Methods
  def get_city_weather
    @city_data["weather"][0]
  end

  def get_city_weather_id
    get_city_weather["id"]
  end

  def get_city_weather_main
    get_city_weather["main"]
  end

  def get_city_weather_description
    get_city_weather["description"]
  end

  def get_city_weather_icon
    get_city_weather["icon"]
  end


  # Base Methods
  def get_city_base
    @city_data["base"]
  end

  # Main Methods
  def get_city_main
    @city_data["main"]
  end

  def get_city_main_temp
    get_city_main["temp"]
  end

  def get_city_main_pressure
    get_city_main["pressure"]
  end

  def get_city_main_humidity
    get_city_main["humidity"]
  end

  def get_city_main_temp_min
    get_city_main["temp_min"]
  end

  def get_city_main_temp_max
    get_city_main["temp_max"]
  end



  def get_city_visibility
    @city_data["visibility"]
  end

  # Wind Methods
  def get_city_wind
    @city_data["wind"]
  end

  def get_city_wind_speed
    get_city_wind["speed"]
  end

  def get_city_wind_deg
    get_city_wind["deg"]
  end


  # Cloud Methods
  def get_city_clouds
    @city_data["clouds"]
  end

  def get_city_clouds_all
    get_city_clouds["all"]
  end


  def get_city_dt
    @city_data["dt"]
  end


  # Sys Methods
  def get_city_sys
    @city_data["sys"]
  end

  def get_city_sys_type
    get_city_sys["type"]
  end

  def get_city_sys_id
    get_city_sys["id"]
  end

  def get_city_sys_message
    get_city_sys["message"]
  end

  def get_city_sys_country
    get_city_sys["country"]
  end

  def get_city_sys_sunrise
    get_city_sys["sunrise"]
  end

  def get_city_sys_sunset
    get_city_sys["sunset"]
  end


  def get_city_id
    @city_data["id"]
  end

  def get_city_name
    @city_data["name"]
  end

  def get_city_cod
    @city_data["cod"]
  end
end
