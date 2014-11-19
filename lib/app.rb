require 'rubygems'
require 'sinatra'
#require 'rails_helper'
require_relative '../lib/handlers/msgBirthday_handler'
require 'json'
require 'uri'
require 'cgi'

class WebPageDashBoard < Sinatra::Application


  get '/messagesBirthday' do #getting birthday messages



    MsgBirthdayHandler.new.add_message('Msg 1', Date.parse('2014-11-29'),
         'idPromotion', 'idDescriptionPromotion' , 'idCompany',  'nameCompany', 'xPosition', 'yPosition')


    messageStructure = MsgBirthdayHandler.new.get_messages
    message_hash = Hash.new
    array_of_messages = Array.new

    messageStructure.each do |key, value|
      message_hash = {:message => value.message, :id => key, :expirydate => value.expiryDate,
                      :idPromotion => value.idPromotion,
                      :idDescriptionPromotion => value.idDescriptionPromotion,
                      :idCompany => value.idCompany,
                      :nameCompany => value.nameCompany,
                      :xPosition => value.xPosition,
                      :yPosition => value.yPosition
      }
      array_of_messages << message_hash
    end

    status(200)
    body (array_of_messages.to_json)

  end


  post '/messages' do
=begin
    @message_id
    request_body = JSON.parse(request.body.read)
    expiry_date_message=request_body['expiry_date']

    if expiry_date_message.nil?
      @message_id = MessageHandler.new.add_message(request_body['message_text'])
    else
      expire_date = Date.parse(expiry_date_message) rescue nil
      if expire_date
        @message_id = MessageHandler.new.add_message(request_body['message_text'], Date.parse(request_body['expiry_date']))
      else
        status 400
      end
    end
=end
  end



end