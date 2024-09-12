OPTIONS = ['rock', 'scissors', 'paper']

# отримання вводу
def get_input
  gets.chomp.downcase
end

# отримання вибору комп'ютера
def computer_choice
  OPTIONS.sample
end

# отримання вибору користувача
def player_choice
  choice = nil
  until OPTIONS.include?(choice)
    puts "Choose one of the options: rock, scissors, paper"
    choice = get_input
  end
  choice
end

# визначення переможця
def winner(player, computer)
  if player == computer
    "It's a draw!"
  elsif (player == 'rock' && computer == 'scissors') ||
        (player == 'scissors' && computer == 'paper') ||
        (player == 'paper' && computer == 'rock')
    "You win!"
  else
    "Computer wins!"
  end
end

# Логіка гри
def play_game
  player = player_choice
  computer = computer_choice
  puts "You chose: #{player}"
  puts "Computer chose: #{computer}"
  puts winner(player, computer)

  puts "Do you want to play again? (yes/no)"
  answer = get_input

  play_game if answer == 'yes'
end

play_game
