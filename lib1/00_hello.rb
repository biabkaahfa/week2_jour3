def say_hello
    puts "Bonjour"
end
#ajout de firstname a la methode
def say_hello1(firstname)
    firstname = "firstname"
    puts "Bonjour, #{firstname}"
end
#ajout de ask_first_name
def ask_first_name
    puts "Quel est ton prenom"
    print ">"
    firstname = gets.chomp
    return firstname
end