Dir["#{Rails.root.to_s}/lib/extensions/**/*.rb"].each { |file| require file }