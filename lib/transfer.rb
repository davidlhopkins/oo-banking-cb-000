class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    sender.valid? & receiver.valid? == true ? true : false
  end

  def execute_transaction
    sender.balance -= amount
    receiver.balance +=amount
  end

  def reverse_transfer

  end

end
