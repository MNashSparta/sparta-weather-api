require 'json'
require 'yaml'

class GenerateRandomCityService

  def get_data
    @city_data = JSON.parse(File.read("src/city_list.json"))
  end

  def get_ids
    @city_ids = YAML.load_file('src/city_id.yml')
  end

  def get_city_ids
    @city_ids
  end

  def get_city_data
    @city_data
  end

  def generate_random_number
    Random.rand(0..get_city_ids.length-1)
  end

  def generate_random_city_id
    get_city_ids[generate_random_number]
  end

  def find_city_name id
    get_city_data.each do |city_data_set|
      if city_data_set.has_value?(id)
        return city_data_set["name"]
      end
    end
  end

  def get_random_city_name
    find_city_name(generate_random_city_id)
  end
end
