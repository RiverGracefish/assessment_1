class CreditCard
  def initialize
    @balance = 0.00
  end

  def balance
    @balance.round(2)
  end

  def charge(amount)
    @amount = amount.to_f
    @balance = (@balance + @amount).round(2)
  end
end

visa = CreditCard.new
puts "Balance: #{visa.balance}"

visa.charge(3.25)
visa.charge(3.25)
puts "Balance: #{visa.balance}"
