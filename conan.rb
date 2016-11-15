require 'slack-ruby-bot'
require 'sinatra/activerecord'

require './conan/bot'

Dir["./conan/commands/*.rb"].each {|file| require file }
Dir["./conan/models/*.rb"].each {|file| require file }