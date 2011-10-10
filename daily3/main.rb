class Classe_avec_des_fonctions_publiques_et_privees
  def methode_publique
    puts "Méthode publique!"
  end

  private
  def methode_privee; puts "Méthode privée!" end
end

# run
test1 = Classe_avec_des_fonctions_publiques_et_privees.new
test1.methode_publique
#test1.methode_privee

# changement d'accessibilité
class Classe_avec_des_fonctions_publiques_et_privees
  public :methode_privee
end

# run
test1.methode_privee

# ajout d'un constructeur
class Classe_avec_des_fonctions_publiques_et_privees
  def initialize
    puts "Je suis un constructeur rajouté!"
  end
end

# run
test2 = Classe_avec_des_fonctions_publiques_et_privees.new
test2.methode_publique
test2.methode_privee

# ajout d'une variable de classe
class Classe_avec_des_fonctions_publiques_et_privees
  private
  @@variable_de_classe = 1234

  public
  def ma_variable_de_classe
    puts @@variable_de_classe
  end
end

# run sur les instances crées avec et sans la variable de classe et la méthode "ma_variable_de_classe"
test2.ma_variable_de_classe
test1.ma_variable_de_classe
