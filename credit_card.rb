class CreditCard
  def initialize
    @balance = 0.00
  end

  def balance
    format('%.2f', @balance)
  end

  def charge(amount)
    @balance += amount
  end

  def payment(payment)
    @balance -= payment
  end
end

visa = CreditCard.new
puts "Balance: #{visa.balance}"

visa.charge(3.25)
visa.charge(3.25)
puts "Balance: #{visa.balance}"
