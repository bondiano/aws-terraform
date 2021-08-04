require 'rubygems'
require 'bundler'

Bundler.require

require './server'
Sinatra::Application.run!
