require_relative '../../lib/services/message'
require 'date'
require 'securerandom'
require_relative '../../lib/services/msgBirthday__repository'
require_relative '../../lib/services/msgBirthday'
require 'json'

DEFAULT_PERIOD_EXPIRE = 5   #days


class MsgBirthdayHandler

  def initialize
    @output = 'Have a nice day'
  end



  def get_messages
    if get_number_of_message <= 0
      @output
    else
      allmessages = MsgBirthdayRepository.new.get_messages
      allmessages.each do |key, value|
        if !value.expiryDate.nil? && !value.expiryDate.nil?
          if value.expiryDate < Date.today
            allmessages.delete(key)
          end
        end
      end
      allmessages
    end
  end




  def add_message ( msg, date = Date.today + DEFAULT_PERIOD_EXPIRE , idPromotion, idDescriptionPromotion , idCompany,  nameCompany, xPosition, yPosition)
    id = SecureRandom.uuid


    @@message = MsgBirthday.new msg,date,idPromotion, idDescriptionPromotion , idCompany,  nameCompany, xPosition, yPosition
    MsgBirthdayRepository.new.add_message @@message ,id
    return id
  end

  def get_number_of_message
    return MsgBirthdayRepository.new.get_number_of_message
  end


end






