require File.expand_path(File.join(File.dirname(__FILE__), '../spec_helper'))

require 'controllers/hello_controller'

describe 'Hello Controller' do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  it 'gets Hello World!' do
    get '/'
    last_response.status.should == 200
  end
end
