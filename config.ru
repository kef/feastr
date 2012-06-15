require 'rubygems'
require 'bundler/setup'

require 'sinatra'

app_root = File.dirname(__FILE__)
lib_dir = File.expand_path(File.join(app_root, 'lib'))

require File.join(lib_dir, 'load_path')

LoadPath::add_to_load_path app_root, lib_dir

require 'application'

run Sinatra::Application
