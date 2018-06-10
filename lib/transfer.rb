class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?(sender, receiver)
    sender.valid? == true && receiver.valid? == true ? true : false
  end

end
