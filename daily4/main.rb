class Test
  def display
    puts "Good!"
  end

  def default
    puts "You are welcome!"
  end
end

# run
test1 = Test.new
test1.display

# modification d'uniquement de la méthode de cet objet
def test1.display
  puts "Bad!"
end

# run
test1.display
test2 = Test.new
test2.display

# surcharge de "method_missing"
class Test
  def method_missing(id, *arguments)
    puts "Je ne trouve pas la méthode demandée (#{id}), mais je te reroute vers \"default\""
    default
  end
end

#run
test1.methode_introuvable
