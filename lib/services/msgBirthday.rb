class MsgBirthday
  @message = ''
  @expiryDate = nil
  @id = nil


  @idPromotion = ''
  @idDescriptionPromotion = ''
  @idCompany = ''
  @nameCompany = ''
  @xPosition = 0
  @yPosition = 0




  def initialize msg,date,  idPromotion, idDescriptionPromotion , idCompany,  nameCompany, xPosition, yPosition

    @message = msg
    @expiryDate = date
    @idPromotion = idPromotion
    @idDescriptionPromotion = idDescriptionPromotion
    @idCompany = idCompany
    @nameCompany = nameCompany
    @xPosition = xPosition
    @yPosition = yPosition

  end


  def idPromotion=(idPromotion)
    @idPromotion=idPromotion
  end

  def idDescriptionPromotion=(idDescriptionPromotion)
    @idDescriptionPromotion = idDescriptionPromotion
  end

  def idCompany=(idCompany)
    @idCompany = idCompany
  end

  def nameCompany=(nameCompany)
    @nameCompany = nameCompany
  end
  def xPosition=(xPosition)
    @xPosition = xPosition
  end
  def yPosition=(yPosition)
    @yPosition = yPosition
  end


  def message=(msg)
    @message = msg
  end


  def expiryDate=(expiry_date)
    @expiryDate=expiry_date
  end

  def id=(id)
    @id=id
  end


  ##Definition

  def idPromotion
    @idPromotion
  end

  def  idDescriptionPromotion
    @idDescriptionPromotion
  end
  def  idCompany
    @idCompany
  end
  def nameCompany
    @nameCompany
  end

  def xPosition
    @xPosition
  end

  def yPosition
    @yPosition
  end

  def message
    @message
  end

  def expiryDate
    @expiryDate
  end

  def id
    @id
  end

end