def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
return gets.chomp
end

def end_game(total)
puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
sum = 0
2.times { sum += deal_card }
puts "Your cards add up to #{sum}"
sum
end

def hit?(number)
  prompt_user
  cardgame = get_user_input
  if cardgame == 's' 
    return number
  elsif cardgame == 'h'
    number += deal_card
  else 
    invalid_command
    hit?(number)
  end
end

def invalid_command
puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
anything = initial_round
  until anything > 21 do 
    anything = hit?(anything)
    display_card_total(anything)
  end
end_game(anything)
end