def welcome
  puts "Welcome to the Blackjack Table"
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
  first = deal_card
  second = deal_card
  sum = first + second
  display_card_total(sum)
  sum
end

def hit?(current_card_count)
  prompt_user
  users_input = get_user_input
  
  if users_input == 's'
    current_card_count
  elsif users_input == 'h'
    new_card = deal_card
    current_card_count += new_card
  else
    invalid_command
    # prompt_user
    # users_input = get_user_input
    hit?(current_card_count)
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
  total = initial_round
  # total
  
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
