require 'pry'

class BankAccount
  attr_reader :name 
  attr_accessor :balance, :status
  
  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance 
    @status = status
  end 
  
  def deposit(amount)
    @balance = @balance + amount
  end
  
  def display_balance
    return "Your balance is $#{@balance}."
  end 
  
  def valid?
    #self is bank account 
    self.status == "open" && self.balance > 0 ? true : false 
    #binding.pry
  end
  
  def close_account
    self.status = "closed"
  end

end
