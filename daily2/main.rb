class Main
  # initializer
  def initialize(name = "World")
    @name = name
    @hellos = ["Salut", "Hi"]
  end

  # main method
  def say_hello(new_name = @name)
    puts("Hello #{new_name}!")
    # for each salutations
    @hellos.each do |hello|
       puts("#{hello} #{new_name}!")
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
