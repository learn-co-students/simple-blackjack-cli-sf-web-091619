
 def welcome
    puts "Welcome to the Blackjack Table"
  end

  def deal_card
    rand(1..11)
  end


  def display_card_total(total)
    total
    puts "Your cards add up to #{total}"
  end

  def prompt_user
    puts "Type 'h' to hit or 's' to stay"
  end

  def get_user_input
    get_user_input = gets.chomp
  end

  def end_game(total)
    puts "Sorry, you hit #{total}. Thanks for playing!"
  end

  def initial_round
    sum = 0
    2.times do 
      sum += deal_card
    end
    puts "Your cards add up to #{sum}"
    sum
  end

  def invalid_command
    puts "Please enter a valid command"
  end

  def hit?(prompt,input)
    prompt = prompt_user
    input = get_user_input
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

  def runner
    welcome
    anything = initial_round
      until anything > 21 do 
        anything = hit?(anything)
        display_card_total(anything)
      end
    end_game(anything)
    end
    
    
