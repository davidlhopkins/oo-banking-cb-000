class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sendeer = sender
    @receiver = receiver
    @amount = amount
  end

end
