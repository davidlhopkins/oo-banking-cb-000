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
    if @status = "complete"
      sender.balance -= amount
      receiver.balance += amount
      @status = "complete"
    else
      "Transaction rejected. Please check your account balance."
  end

  def reverse_transfer
    receiver -= amount
    sender += amount
  end

end
