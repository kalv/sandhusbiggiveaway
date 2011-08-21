require 'rubygems'
require 'bundler/setup'

require 'sinatra'
require 'haml'

class BigGiveAway < Sinatra::Base
  configure do
    set :public, File.expand_path("../../public", __FILE__)
  end

  get "/" do
    haml :index
  end
end