# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

HotDateRails.config do |config|
  config.date_format = "MM d, yy"
  config.time_format = "h:mm tt"
end