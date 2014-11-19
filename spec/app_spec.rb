ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'rspec/matchers'
require_relative '../lib/app'
require 'rack/test'
#require 'active_support/core_ext'

describe 'WebPageDashBoard' do
  include Rack::Test::Methods

  def app
    WebPageDashBoard
  end



  describe 'URI: /message' do

    describe 'POST' do
      it 'should return an id when I post a message' do
        #creating a mock for SecureRandom.uuid
        #allow(SecureRandom).to receive(:uuid).and_return('e7832h3', 'e7w32h3', 'e7x32h3', 'e7b32h3')

        #post '/messages', {message_text: 'Hi there Thoughtworkers', expiry_date: '2014-09-29'}.to_json, {'content-type' => 'application/json'}
        #expect(last_response.body).to eq('e7832h3')


      end
    end


    describe 'GET' do

      it 'should return a default message if there is not any message' do
        get '/messagesBirthday'
        parsed = (JSON.parse(last_response.body))
        parsed.each do |hashobj|
            expect(hashobj['message']).to eq 'Have a nice day'
        end

      end

    end

  end
end






