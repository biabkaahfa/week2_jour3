def roll_dice
    rand(1..6)
  end
  
  def play_game
    step = 0
  
    loop do
      dice_roll = roll_dice
  
      if dice_roll == 5 || dice_roll == 6
        step += 1
        puts "Vous avez fait #{dice_roll} ! Vous montez à la marche #{step}."
      elsif dice_roll == 1
        step -= 1 if step > 0
        puts "Vous avez fait #{dice_roll} ! Vous descendez à la marche #{step}."
      else
        puts "Vous avez fait #{dice_roll}. Rien ne se passe."
      end
  
      break if step == 10
    end
  
    puts "Bravo ! Vous avez atteint la 10ème marche !"
  end
  
  def average_finish_time
    number_of_games = 100
    total_turns = 0
  
    number_of_games.times do
      step = 0
  
      loop do
        dice_roll = roll_dice
  
        if dice_roll == 5 || dice_roll == 6
          step += 1
        elsif dice_roll == 1
          step -= 1 if step > 0
        end
  
        break if step == 10
      end
  
      total_turns += step
    end
  
    average_turns = total_turns / number_of_games.to_f
    puts "Le nombre moyen de tours pour atteindre la 10ème marche est de #{average_turns.round(2)}."
  end
  
  # Jouer une partie
  play_game
  
  # Calculer et afficher le nombre moyen de tours
  average_finish_time
  