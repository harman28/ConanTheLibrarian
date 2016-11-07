require 'sinatra/base'

module Conan
  class Web < Sinatra::Base
    get '/' do
      'Conan keeps the books in alphabetical order.'
    end
  end
end