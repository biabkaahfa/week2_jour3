def half_pyramid(number)
    # Vérifier si le nombre est entre 1 et 25
    if number < 1 || number > 25
      raise ArgumentError, "Le nombre doit être entre 1 et 25"
    end
  
    # Générer la pyramide
    1.upto(number) do |floor|
      # Espaces avant le hashtag
      spaces = " " * (number - floor)
  
      # Hashtag
      hashtags = "#" * floor
  
      # Afficher la ligne
      puts "#{spaces}#{hashtags}"
    end
  end
  
  # Demander le nombre d'étages à l'utilisateur
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  number = gets.chomp.to_i
  
  # Appeler la méthode half_pyramid
  half_pyramid(number)

#Exercice2 de la pyramide

  def half_pyramid(number, side = :left)
    # Vérifier si le nombre est entre 1 et 25
    if number < 1 || number > 25
      raise ArgumentError, "Le nombre doit être entre 1 et 25"
    end
  
    # Générer la pyramide
    1.upto(number) do |floor|
      # Espaces avant le premier hashtag
      spaces_before_first_hashtag = " " * (number - floor)
  
      # Premier hashtag
      first_hashtag = "#" * floor
  
      # Espaces entre les deux hashtags
      spaces_between_hashtags = side == :left ? " " * (2 * floor - 1) : " " * (floor - 1)
  
      # Second hashtag (optionnel)
      second_hashtag = side == :left ? "#" * floor : ""
  
      # Afficher la ligne
      puts "#{spaces_before_first_hashtag}#{first_hashtag}#{spaces_between_hashtags}#{second_hashtag}"
    end
  end
  
  def full_pyramid(number)
    # Construire la pyramide du côté gauche
    half_pyramid(number, :left)
  
    # Construire la pyramide du côté droit (inversée)
    (number - 1).downto(1) do |floor|
      half_pyramid(floor, :right)
    end
  end
  
  # Demander le nombre d'étages à l'utilisateur
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  number = gets.chomp.to_i
  
  # Appeler la méthode full_pyramid
  full_pyramid(number)
  
#Exercice 3 de la pyramide

  def half_pyramid(number, side = :left)
    if number < 1 || number > 25
      raise ArgumentError, "Le nombre doit être entre 1 et 25"
    end
  
    spaces_before_first_hashtag = " " * (number - floor)
    first_hashtag = "#" * floor
    spaces_between_hashtags = side == :left ? " " * (2 * floor - 1) : " " * (floor - 1)
    second_hashtag = side == :left ? "#" * floor : ""
    puts "#{spaces_before_first_hashtag}#{first_hashtag}#{spaces_between_hashtags}#{second_hashtag}"
  end
  
  def wtf_pyramid(number)
    if number % 2 == 0
      raise ArgumentError, "Le nombre d'étages doit être impair"
    end
  
    mid_floor = (number + 1) / 2
  
    1.upto(mid_floor) do |floor|
      half_pyramid(floor, :left)
    end
  
    (mid_floor - 1).downto(1) do |floor|
      half_pyramid(floor, :right)
    end
  end
  
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisis un nombre impair)"
  number = gets.chomp.to_i
  
  wtf_pyramid(number)
  
  puts "Là tu touches à un concept qui va changer le monde de l'architecture !"
  