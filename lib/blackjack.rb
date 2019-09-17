def welcome
  puts "Welcome to the Blackjack Table"
  #binding.pry
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = 0
  2.times do 
   sum += deal_card
  end
  display_card_total(sum)
  sum 
end

def hit?(card_total)
  prompt_user
  # get_user_input
  user_input = get_user_input
  if user_input == "s"
    return card_total 
  elsif user_input == "h"
    return card_total += deal_card
  else
    puts "Please enter a valid command"
    hit?(card_total)
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
  cards = initial_round
  until cards > 21 do
  cards = hit?(cards)
  display_card_total(cards)
  end
  end_game(cards)
end
    
