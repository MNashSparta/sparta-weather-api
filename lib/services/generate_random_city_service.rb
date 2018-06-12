require 'json'

class GenerateRandomCityService

  def get_data
    @city_data = JSON.parse(File.read("src/city_list.json"))
  end

  def get_city_data
    @city_data
  end

  def find_city_name id
    get_city_data.each do |city_data_set|
      if city_data_set.has_value?(id)
        return city_data_set["name"]
      end
    end
  end


end

# data = GenerateRandomCityService.new
# data.get_data
# p data.find_city_name(707860)
