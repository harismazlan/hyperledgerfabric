class Account
  attr_reader :name, :balance

  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  private

    def pin
      @pin = 123
    end

    def admin_pin
      @pin = 456
    end

    def pin_check
      puts "Welcome to the banking system, #{@name}!\n" + "To access your account, input PIN please"
      @input_pin = gets.chomp.to_i
    end

    def pin_error
      return "Access denied: incorrect PIN."
    end

  public

  def access
    if pin_check == pin
      puts "Input deposit: to deposit money, show: to show balance or withdraw: to withdraw money (Without the semi-colon)"
      action = gets.chomp.downcase
      case action
        when "deposit"
          deposit
        when "show"
          display_balance
        when "withdraw"
          withdraw
        else
          puts "Try again"
      end
    elsif pin_check == admin_pin
      puts "Welcome to the admin panel"
      puts "Input transfer: to transfer money, show: to show balance or set: to set balance (Without the semi-colon)"
      action = gets.chomp.downcase
      case action
        when "transfer"
          transfer
        when "show"
          display_balance
        when "set"
          set_balance
        else
          puts "Try again"
      end
    else puts pin_error
    end
  end

  def amount
    puts "Input the amount"
    @money = gets.to_i
  end

  def over_error
    print "You don't own that kind of money, dude! Your balance: $#{@balance}"
  end

  def deposit
   @balance += amount
    puts "Deposited: $#{@money}. Updated balance: $#{@balance}."
  end

  def display_balance
    puts "Balance: $#{@balance}."
  end

  def set_balance
    puts "Balance: $#{@balance}."
  end

  def withdraw
    if  amount <= @balance
      @balance -= @money
       puts "Withdrew: $#{@money}. Updated balance: $#{@balance}."
    else
        puts over_error
    end
  end

  def transfer

  end
end

checking_account = Account.new("John Doe", 520_000)
checking_account.access