class CreditCard
  def initialize
    @balance = 0.00
  end

  def balance
    format('%.2f', @balance)
  end

  def charge(amount)
    format('%.2f', @balance += amount)
  end

  def payment(payment_amount)
    format('%.2f', new_balance = @balance - payment_amount)
    @balance = 0.00
    if @balance < 0.00
      @balance = 0.00
    else
      @balance = new_balance
    end
  end
end

visa = CreditCard.new
puts "Balance: #{visa.balance}"

visa.charge(3.25)
visa.charge(3.25)
puts "Balance: #{visa.balance}"

visa.charge(3.25)
visa.charge(3.25)
visa.payment(10)
puts "Balance: #{visa.balance}"
