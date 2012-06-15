require 'rubygems'
require 'bundler/setup'

require 'sinatra'
require 'rack/test'
require 'sinatra/test_helpers'
require 'rspec'
#require 'capybara/rspec'
#require 'mocha'
#require 'fake_web'

spec_dir = File.dirname(__FILE__)
app_root = File.expand_path(File.join(spec_dir, '..'))
lib_dir = File.expand_path(File.join(app_root, 'lib'))

require File.join(lib_dir, 'load_path')

LoadPath::add_to_load_path app_root, lib_dir

#Bundler.require(:test)

set :root, app_root
set :environment, :test
disable :sessions
enable :raise_errors

#FakeWeb.allow_net_connect = false

#RSpec.configure do |config|
  #config.mock_with :mocha
  #config.before :each do
    #FakeWeb.clean_registry
  #end
#end
