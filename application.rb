require 'haml'

configure :development, :test do
  enable :show_exceptions
end

set :haml, :format => :html5

helpers do
  include Rack::Utils
  alias_method :h, :escape_html
end

#Dir["controllers/*.rb"].each { |file| load file }

get '/' do
  'Hello World!'
end
