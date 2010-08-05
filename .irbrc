# load libraries
require 'rubygems'
require 'wirble'

# start wirble (with color)
Wirble.init
Wirble.colorize

# ~/.irbrc
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  require 'logger'
  RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end