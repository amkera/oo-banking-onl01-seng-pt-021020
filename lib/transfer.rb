require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount 
    @status = status
  end 
  
  def valid?
    #self is an instance of Transfer 
    self.sender.valid? && self.receiver.valid?
    #Return true if both the sender's accounts and the receiver's transfer are valid in that both accounts are open, with balance greater than 0
  end 
  
  def execute_transaction

    if valid? && sender.balance > amount 
      @status == "pending"
      sender.balance -= amount 
      receiver.balance += amount
      @status = "complete"
      
    else 
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end 
  end 
      
    
      
end 
