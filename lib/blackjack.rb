def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  x = deal_card + deal_card
  display_card_total(x)
  x
end

def hit?(number)
  # code hit? here
  prompt_user
  x = get_user_input
  if x == 's'
    number
  elsif x == 'h'
    number += deal_card
    number
  else
    invalid_command
    hit?(number)
  end
end

def invalid_command
  # code invalid_command here
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  x = initial_round
  until x > 21 do
    x = hit?(x)
    display_card_total(x)
  end
  end_game(x)
end
    
