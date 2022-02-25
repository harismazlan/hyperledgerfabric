class Person
  attr_accessor :name

  def initialize(name)
    @name = name
    puts "Hi, #{name}."
  end
end

class Bank

  def initialize(bank_name, balance = 0, deposit = 0)
    @bankName = bank_name
    @balance = balance
    @deposit = deposit
    puts "#{bank_name} bank was just created."
  end

  def open_account(person)
    @balance = 0
    puts "#{person.name}, thanks for opening an account at #{@bankName}!"
  end

  def withdrawal(person, amount)
    if amount > 0
      @balance -= amount
      puts "#{person.name} withdrew $#{amount} from #{@bankName}.  #{person.name} has #{@balance}.  #{person.name}'s account has #{@balance}."
    end
  end

  def deposit(person, amount)
    if amount > 0
      @balance += amount
      puts "#{person.name} deposited $#{amount} to #{@bankName}. #{person.name} has #{@balance}. #{person.name}'s account has #{@balance}."
    end
  end

  def transfer(person, targetBankName, amount)
    if @person = person
      @balance -= amount
      @targetBankName = targetBankName
      puts "#{person.name} have transfered $#{amount} from #{@bankName} account to #{@targetBankName}.  Your new balance is $#{@balance}."
    else
      puts "Wrong username"
    end
  end
end

maybank = Bank.new("Maybank")
cimb = Bank.new("CIMB")
me = Person.new("Jacob")
friend = Person.new("Noah")
maybank.open_account(me)
maybank.open_account(friend)
cimb.open_account(me)
cimb.open_account(friend)
maybank.deposit(me, 200)
maybank.deposit(friend, 300)
maybank.withdrawal(me, 50)
maybank.transfer(me, cimb, 100)
maybank.deposit(me, 5000)
maybank.withdrawal(me, 5000)
# puts maybank.total_cash_in_bank
# puts cimb.total_cash_in_bank