# Cette version améliorée de la version daily1 est capable:
# - De prendre en paramètre un nom dans le constructeur et dans la méthode say_hello,
# - Et boucle sur un tableau de saluations.

class Main
  # initializer
  def initialize(name = "World")
    @name = name
    @greetings = ["Salut", "Ciao", "привет", "¡Hola", "こんにちは"]
  end

  # main method
  def say_hello(new_name = @name)
    # default greeting
    puts("Hello #{new_name}!")
    # for each greeting
    @greetings.each do |greeting|
       puts("#{greeting} #{new_name}!")
    end
  end
end

# runners
main = Main.new
main.say_hello

puts("")

main = Main.new("Ulrich")
main.say_hello

puts("")

main = Main.new
main.say_hello("Melinda")
