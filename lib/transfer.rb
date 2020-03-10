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
    #if sender and receiver accounts are valid and sender has the money
      #perform the transfer 
      #status is complete
    #else 
      #rejected 
    if valid? && sender.balance > amount 
      @status == "pending"
      sender.balance -= amount 
      receiver.balance += amount
      @status = "complete"
      
    
      
end 
