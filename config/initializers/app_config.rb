require 'ostruct'
require 'yaml'

config = YAML.load_file(
  File.join(Rails.root, 'config', 'app_config.yml')) || {}
  AppConfig = Openstruct.new(config[Rails.env] || {})