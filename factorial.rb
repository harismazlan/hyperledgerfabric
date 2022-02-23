#!/usr/bin/ruby

puts "Enter the number:"
num=gets.chomp.to_i

fact=1
if (num<0)
  puts "factorial of negative numbers is undefined"
else
  i=1
  while(i<=num)
    fact=fact*i
    i+=1
    factsplit = fact.to_s.chars.map(&:to_i)
    indfactsum = factsplit.sum
  end
  puts "factorial of #{num} is #{fact}"
  puts "Sum of individual numbers of #{fact} is #{indfactsum}"
end
