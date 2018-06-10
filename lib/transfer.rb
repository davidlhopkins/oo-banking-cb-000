class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if valid? && sender.balance >= @amount && @status == 'pending'
      sender.balance -= @amount
      receiver.balance += @amount
      @status = "completed"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if @status == "completed"
      receiver.balance -= amount
      sender.balance += amount
      @status = "reversed"
    else
      false
    end
  end

end
