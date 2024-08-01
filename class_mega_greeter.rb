# frozen_string_literal: true

class MegaGreeter
  attr_accessor :names

  # Criando o Objeto
  def initialize(names = 'World')
    @names = names
  end

  # Diz oi para todo mundo
  def say_hi
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('each')
      # @names é algum tipo de lista, repita!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}"
    end
  end

  # Dizer bye para todo mundo
  def say_bye
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('join')
      # Junte os elementos da lista com vírgulas
      puts "Goodbye #{@names.join(', ')}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end
end

if __FILE__ == $0

  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Muda o nome para "Zeke"
  mg.names = 'Zeke'
  mg.say_hi
  mg.say_bye

  # Muda o nome para um Array de nomes
  mg.names = %w[Albert Brenda Charles Dave Engelbert]
  mg.say_hi
  mg.say_bye

  # Muda para nulo(nil)
  mg.names = nil
  mg.say_hi
  mg.say_bye

end
