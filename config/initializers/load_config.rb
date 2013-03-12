APP_CONFIG = YAML.load(ERB.new(File.read("#{Rails.root}/config/diacode13.yml")).result)[Rails.env]
