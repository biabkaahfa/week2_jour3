def signup
    puts "Bienvenue dans le programme de sécurité ultra-secrète de la NSA !"
    puts "Veuillez définir un mot de passe : "
    password = gets.chomp
    puts "Votre mot de passe a été enregistré."
    password
  end
  
  def login(password)
    puts "Entrez votre mot de passe : "
    entered_password = gets.chomp
    until entered_password == password
      puts "Mauvais mot de passe. Veuillez réessayer."
      entered_password = gets.chomp
    end
    puts "Mot de passe correct ! Bienvenue dans la zone secrète."
  end
  
  def welcome_screen
    puts "Bienvenue dans votre zone secrète, agent 007 !"
    # Affichez ici les "secrets"
    puts "**Top secret :** Le contenu des textos et messages WhatsApp de votre cible..."
  end
  
  def perform
    password = signup
    login(password)
    welcome_screen
  end
  
  perform
  