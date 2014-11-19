require_relative 'msgBirthday'

class MsgBirthdayRepository


  @@messageshash = Hash.new


  def add_message (message , id)

    @@messageshash[id] = message

  end


  def get_number_of_message
    return @@messageshash.length
  end

  def  get_messagesid(id)

    return @@messageshash[id]

  end

  def  get_messages

    return @@messageshash

  end





end