begin
  system 'clear'
  puts 'I\'m thinking of a number between 1 and 500.'
  puts 'You have 10 tries to guess that number.'
  puts

  number_of_guesses = 0
  range = (1..500).to_a
  
  computer_number = rand(1..500)

  begin
    puts "What is your pick for guess #{number_of_guesses += 1}?"
    guess = gets.chomp.to_i

    while !range.include? guess
      puts 'Invalid response: Please enter a number between 1 and 500.'
      guess = gets.chomp.to_i
    end
  
    if guess < computer_number
      puts 'Your guess is too low.'
    elsif guess > computer_number
      puts 'Your guess is too high.'
    else guess == computer_number
      puts 'Congratulations!!!'
      break
    end
  end until number_of_guesses >= 10 || guess == computer_number
  
  if guess == computer_number
    puts "You picked the correct number in #{number_of_guesses} guesses."
  else
    puts 'Sorry, better luck next time.'
  end

  puts 'Would you like to play again? Y or N'
  play_again = gets.chomp.upcase

  while !['Y', 'N'].include? play_again
    puts 'Invalid entry: Play again? (Enter Y or N)'
    play_again = gets.chomp.upcase
  end

end until play_again == 'N'

puts 'Thanks for playing. See you next time.'